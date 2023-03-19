using System;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CreatePost : ContentPage
    {
        private User users;
        private byte[] imageData;

        public CreatePost(User user)
        {
            InitializeComponent();
            users = user;
        }

        private async void ChooseImageButton_Clicked(object sender, EventArgs e)
        {
            var action = await DisplayActionSheet("Upload Image", "Cancel", null, "Choose from Gallery", "Take Photo");

            switch (action)
            {
                case "Choose from Gallery":
                    var result = await MediaPicker.PickPhotoAsync(new MediaPickerOptions
                    {
                        Title = "Choose an image for your post"
                    });

                    if (result != null)
                    {
                        var stream = await result.OpenReadAsync();
                        imageData = new byte[stream.Length];
                        await stream.ReadAsync(imageData, 0, imageData.Length);

                        PostImage.Source = ImageSource.FromStream(() => new MemoryStream(imageData));
                    }

                    break;

                case "Take Photo":
                    var photoResult = await MediaPicker.CapturePhotoAsync(new MediaPickerOptions
                    {
                        Title = "Take a photo for your post"
                    });

                    if (photoResult != null)
                    {
                        var stream = await photoResult.OpenReadAsync();
                        imageData = new byte[stream.Length];
                        await stream.ReadAsync(imageData, 0, imageData.Length);

                        PostImage.Source = ImageSource.FromStream(() => new MemoryStream(imageData));
                    }

                    break;
            }
        }

        private async void CreatePostButton_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TitleEntry.Text) || string.IsNullOrEmpty(DescriptionEditor.Text))
            {
                await DisplayAlert("Error", "Please fill in both the title and description fields.", "OK");
                return;
            }

            var newPost = new Post
            {
                Title = TitleEntry.Text,
                Description = DescriptionEditor.Text,
                UserId = users.Id,
                ImageData = imageData
            };

            using (var db = new AppDatabase())
            {
                db.Connection.Insert(newPost);
            }

            await DisplayAlert("Success", "Post created!", "OK");
            await Navigation.PopAsync(); // Navigate back to the previous page
        }
    }
}
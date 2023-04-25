using System;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using System.Threading.Tasks;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EditPost : ContentPage
    {
        private User users;
        private Post post;
        private byte[] imageData;

        public EditPost(User user, Post post)
        {
            InitializeComponent();
            users = user;
            this.post = post;
            TitleEntry.Text = post.Title;
            DescriptionEditor.Text = post.Description;
            PostImage.Source = ImageSource.FromStream(() => new MemoryStream(post.ImageData));
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

        private async void UpdatePostButton_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TitleEntry.Text) || string.IsNullOrEmpty(DescriptionEditor.Text))
            {
                await DisplayAlert("Error", "Please fill in both the title and description fields.", "OK");
                return;
            }

            post.Title = TitleEntry.Text;
            post.Description = DescriptionEditor.Text;
            post.ImageData = imageData ?? post.ImageData;

            using (var db = new Databases())
            {
                db.PostRepo.UpdatePost(post);
            }

            await DisplayAlert("Success", "Post updated!", "OK");
            await Navigation.PopAsync();
        }
    }
}

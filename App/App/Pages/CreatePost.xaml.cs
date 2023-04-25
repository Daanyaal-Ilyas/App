using System;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using System.Threading.Tasks;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CreatePost : ContentPage
    {
        INotifificationManager notificationManager;
        int notificationNumber;
        private User users;
        private byte[] imageData;

        public CreatePost(User user)
        {
            InitializeComponent();
            notificationManager = DependencyService.Resolve<INotifificationManager>();
            notificationManager.NotificationReceived += (sender, eventArgs) =>
            {
                var evtData = (NotificationEventArgs)eventArgs;
                ShowNotification(evtData.Title, evtData.Message);
            };
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
            using (var db = new Databases())
            {
                db.PostRepo.CreatePost(newPost);
            }

            await DisplayAlert("Success", "Post created!", "OK");


            notificationNumber++;
            string title = $"Post Created #{notificationNumber}";
            string message = $"Post Created {notificationNumber} notifications!";
            notificationManager.ScheduleNotification(title, message);
            await Navigation.PopAsync();
        }

        public void ShowNotification(string title, string message)
        {
            Device.BeginInvokeOnMainThread(() =>
            {
                var msg = new Label()
                {
                    Text = $"Notification Received:\nTitle: {title}\nMessage:{message}"
                };
                myNotLayout.Children.Add(msg);
            });
        }
    }
}
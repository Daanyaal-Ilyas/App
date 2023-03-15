using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CreatePost : ContentPage
    {
        private User _currentUser;

        public CreatePost(User currentUser)
        {
            InitializeComponent();
            _currentUser = currentUser;
        }

        private async void CreateButton_Clicked(object sender, EventArgs e)
        {
            var newPost = new Post
            {
                Title = TitleEntry.Text,
                Description = DescriptionEntry.Text,
                UserId = _currentUser.Id
            };

            using (var db = new AppDbContext())
            {
                db.Connection.Insert(newPost);
            }

            await DisplayAlert("Success", "Post created successfully!", "OK");
            await Navigation.PopAsync();
        }
    }
}


using System;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Profile : ContentPage
    {
        private User currentUser;

        public Profile(User user)
        {
            InitializeComponent();
            currentUser = user;
            LoadProfileData();
            LoadUserPosts();
        }

        private void LoadProfileData()
        {
            NameLabel.Text = $"Name: {currentUser.Name}";
            EmailLabel.Text = $"Email: {currentUser.Email}";
            UsernameLabel.Text = $"Username: {currentUser.Username}";
        }

        private void LoadUserPosts()
        {
            using (var db = new AppDatabase())
            {
                var userPosts = db.Connection.Table<Post>().Where(p => p.UserId == currentUser.Id).ToList();
                PostsListView.ItemsSource = userPosts;
            }
        }
        private async void PostsListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
            {
                return;
            }

            var post = (Post)e.SelectedItem;
            PostsListView.SelectedItem = null;

            await Navigation.PushAsync(new ViewPost(post.Id, currentUser));
        }

    }
}

using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : ContentPage
    {
        private User _user;

        public MainPage(User user)
        {
            InitializeComponent();
            _user = user;
            LoadPosts();
        }

        private void LoadPosts()
        {
            using (var db = new AppDbContext())
            {
                var posts = db.Connection.Table<Post>().ToList();
                PostsListView.ItemsSource = posts;
            }
        }

        private async void PostsListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
            {
                return;
            }

            var post = e.SelectedItem as Post;
            PostsListView.SelectedItem = null;

            await Navigation.PushAsync(new ViewPost(post.Id, _user));
        }


        private async void CreatePostButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CreatePost(_user));
        }

        private async void ProfileButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Profile(_user));
        }
    }
}



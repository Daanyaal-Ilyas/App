using System;
using System.Collections.Generic;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : ContentPage
    {
        private User users;
        public string SearchText { get; set; }

        public MainPage(User user)
        {
            InitializeComponent();
            users = user;
            BindingContext = this;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            LoadPosts();
        }

        private void LoadPosts(string searchText = null)
        {
            using (var db = new AppDatabase())
            {
                var posts = db.Connection.Table<Post>().ToList();
                List<PostWithAuthor> postWithAuthors = new List<PostWithAuthor>();

                foreach (var post in posts)
                {
                    User author = db.Connection.Find<User>(post.UserId);
                    postWithAuthors.Add(new PostWithAuthor
                    {
                        Post = post,
                        AuthorName = author.Name
                    });
                }

                if (!string.IsNullOrEmpty(searchText))
                {
                    postWithAuthors = postWithAuthors.Where(p => p.Post.Title.IndexOf(searchText, StringComparison.OrdinalIgnoreCase) >= 0 || p.Post.Description.IndexOf(searchText, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
                }

                PostsListView.ItemsSource = postWithAuthors;
            }
        }

        private void SearchButton_Clicked(object sender, EventArgs e)
        {
            LoadPosts(SearchText);
        }

        private async void PostsListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
            {
                return;
            }

            var post = (PostWithAuthor)e.SelectedItem;
            PostsListView.SelectedItem = null;

            await Navigation.PushAsync(new ViewPost(post.Post.Id, users));
        }

        private async void LogoutButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
            Navigation.RemovePage(this);
        }

        private async void CreatePostButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CreatePost(users));
        }

        private async void ProfileButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Profile(users));
        }
    }
}


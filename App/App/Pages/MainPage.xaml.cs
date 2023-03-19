﻿using System;
using System.Collections.Generic;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Xamarin.Forms.Animation;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : ContentPage
    {
        private User _user;
        public string SearchText { get; set; }

        public MainPage(User user)
        {
            InitializeComponent();
            _user = user;
            LoadPosts();
            BindingContext = this;
        }

        private void LoadPosts(string searchText = null)
        {
            using (var db = new AppDbContext())
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



        private void PostSearchBar_SearchButtonPressed(object sender, EventArgs e)
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

            await Navigation.PushAsync(new ViewPost(post.Post.Id, _user));
        }

        private async void LogoutButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
            Navigation.RemovePage(this);
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




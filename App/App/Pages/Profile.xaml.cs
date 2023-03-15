﻿using System;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Profile : ContentPage
    {
        private User _currentUser;

        public Profile(User user)
        {
            InitializeComponent();
            _currentUser = user;
            LoadProfileData();
            LoadUserPosts();
        }

        private void LoadProfileData()
        {
            NameLabel.Text = $"Name: {_currentUser.Name}";
            EmailLabel.Text = $"Email: {_currentUser.Email}";
            UsernameLabel.Text = $"Username: {_currentUser.Username}";
        }

        private void LoadUserPosts()
        {
            using (var db = new AppDbContext())
            {
                var userPosts = db.Connection.Table<Post>().Where(p => p.UserId == _currentUser.Id).ToList();
                UserPostsListView.ItemsSource = userPosts;
            }
        }
    }
}


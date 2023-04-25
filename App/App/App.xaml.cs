using App.Pages;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            var db = new Databases();

            MainPage = new NavigationPage(new Login());
        }

        protected override void OnStart()
        {
            base.OnStart();
            var db = new Databases();
            var loggedInUser = db.UserRepo.GetLoggedInUser(db.Connection);
            if (loggedInUser != null)
            {
                MainPage = new NavigationPage(new MainPage(loggedInUser));
            }
            else
            {
                MainPage = new NavigationPage(new Login());
            }
        }

        protected override void OnSleep()
        {
            base.OnSleep();
            var db = new Databases();
            var loggedInUser = db.UserRepo.GetLoggedInUser(db.Connection);
            if (loggedInUser != null)
            {
                MainPage = new NavigationPage(new MainPage(loggedInUser));
            }
            else
            {
                MainPage = new NavigationPage(new Login());
            }
        }


        protected override void OnResume()
        {
            base.OnResume();
            var db = new Databases();
            var loggedInUser = db.UserRepo.GetLoggedInUser(db.Connection);
            if (loggedInUser != null)
            {
                MainPage = new NavigationPage(new MainPage(loggedInUser));
            }
            else
            {
                MainPage = new NavigationPage(new Login());
            }

        }


    }
}

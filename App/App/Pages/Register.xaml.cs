using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Register : ContentPage
    {
        public Register()
        {
            InitializeComponent();
        }

        private async void RegisterButton_Clicked(object sender, EventArgs e)
        {
            var newUser = new User
            {
                Name = NameEntry.Text,
                Email = EmailEntry.Text,
                Username = UsernameEntry.Text,
                Password = PasswordEntry.Text
            };

            using (var db = new AppDbContext())
            {
                db.Connection.Insert(newUser);
            }

            await DisplayAlert("Success", "Registration successful!", "OK");
            await Navigation.PopAsync(); // Navigate back to the login page
        }
    }
}

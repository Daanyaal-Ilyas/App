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
            // Check if any of the required fields are empty
            if (string.IsNullOrEmpty(NameEntry.Text) || string.IsNullOrEmpty(EmailEntry.Text) ||
                string.IsNullOrEmpty(UsernameEntry.Text) || string.IsNullOrEmpty(PasswordEntry.Text))
            {
                await DisplayAlert("Error", "Please enter all required fields.", "OK");
                return;
            }

            // Check if the email is valid
            if (!IsValidEmail(EmailEntry.Text))
            {
                await DisplayAlert("Error", "Please enter a valid email address.", "OK");
                return;
            }

            // Check if the username is already taken
            using (var db = new AppDbContext())
            {
                var existingUser = db.Connection.Table<User>().FirstOrDefault(u => u.Username == UsernameEntry.Text);
                if (existingUser != null)
                {
                    await DisplayAlert("Error", "Username is already taken. Please choose a different one.", "OK");
                    return;
                }
            }

            // All checks passed, create the new user
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

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

    }
}

using System;
using System.Linq;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Login : ContentPage
    {
        public Login()
        {
            InitializeComponent();
        }

        private async void LoginButton_Clicked(object sender, EventArgs e)
        {
            using (var db = new AppDbContext())
            {
                var user = db.Connection.Table<User>().FirstOrDefault(u => u.Username == UsernameEntry.Text && u.Password == PasswordEntry.Text);
                if (user != null)
                {
                    await Navigation.PushAsync(new MainPage(user), true);
                    Navigation.RemovePage(Navigation.NavigationStack[0]);
                }
                else
                {
                    await DisplayAlert("Error", "Invalid username or password.", "OK");
                }
            }
        }

        private async void RegisterButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Register());
        }
    }
}

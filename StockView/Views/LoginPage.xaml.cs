using StockView.ViewModel;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            BindingContext = new LoginPageViewModel(Navigation);
            txtUsuario.Completed += OnUsuarioEntryCompleted;
            txtContrasena.Completed += OnContrasenaEntryCompleted;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            txtUsuario.Focus();
        }

        private void OnUsuarioEntryCompleted(object sender, EventArgs e)
        {
            txtContrasena.Focus();
        }

        private async void OnContrasenaEntryCompleted(object sender, EventArgs e)
        {
            if (BindingContext is LoginPageViewModel viewModel)
            {
                if (viewModel.LoginCommand.CanExecute(null))
                    viewModel.LoginCommand.Execute(null);
            }
        }
    }
}

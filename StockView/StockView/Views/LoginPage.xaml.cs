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

            // Selecciona automáticamente el texto en el control Entry
            txtUsuario.Focus();
        }

        private void OnUsuarioEntryCompleted(object sender, EventArgs e)
        {
            // Mueve el foco al siguiente Entry (txtContrasena)
            txtContrasena.Focus();
        }

        private async void OnContrasenaEntryCompleted(object sender, EventArgs e)
        {
            // Aquí puedes llamar al método para iniciar sesión
            if (BindingContext is LoginPageViewModel viewModel)
            {
                // Accede al comando de inicio de sesión y ejecútalo
                if (viewModel.LoginCommand.CanExecute(null))
                    viewModel.LoginCommand.Execute(null);
            }
        }
    }
}

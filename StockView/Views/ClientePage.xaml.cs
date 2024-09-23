using StockView.ViewModel;
using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ClientePage : ContentPage
    {
        public ClientePage(string token)
        {
            InitializeComponent();
            BindingContext = new ClientePageViewModel(Navigation, token);
            txtDescripcion.Completed += OnDescripcionEntryCompleted;
        }

        public event EventHandler<string> OKClicked;

        private async void OnDescripcionEntryCompleted(object sender, EventArgs e)
        {
            if (BindingContext is ClientePageViewModel viewModel)
            {
                if (viewModel.BuscarCommand.CanExecute(null))
                    viewModel.BuscarCommand.Execute(null);
            }
        }
    }
}
using StockView.ViewModel;
using System;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CotizacionPage : ContentPage
    {
        public CotizacionPage(string token)
        {
            InitializeComponent();
            BindingContext = new CotizacionPageViewModel(Navigation, token);
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
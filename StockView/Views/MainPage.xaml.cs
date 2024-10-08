﻿using StockView.Model;
using StockView.ViewModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : FlyoutPage
    {
        private readonly ListArticulosPageViewModel _viewModel;

        public MainPage(string token, string privilegios, string user, string despacho, string drainsa, string motornova, string inventario)
        {
            InitializeComponent();

            _viewModel = new ListArticulosPageViewModel(Navigation, token, privilegios, user, despacho, drainsa, motornova, inventario);
            _viewModel.OpenMenuRequested += HandleOpenMenuRequested;

            Articulo selectedArticulo = new Articulo();

            Flyout = new CarritoCompraPage(user, token, despacho);
            Detail = new NavigationPage(new ListArticulosPage(token, privilegios, user, despacho, drainsa, motornova, inventario) { BindingContext = _viewModel });
        }

        private void HandleOpenMenuRequested(object sender, System.EventArgs e)
        {
            IsPresented = true;
        }

        private void OnActionRequiringUpdate()
        {
            MessagingCenter.Send(this, "ActualizarPagina");
        }
    }

}

using StockView.Data;
using StockView.Model;
using StockView.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ListArticulosPage : ContentPage
    {
        public ListArticulosPage(string token, string privilegios, string user, string despacho, string drainsa, string motornova)
        {
            InitializeComponent();
            BindingContext = new ListArticulosPageViewModel(Navigation, token, privilegios, user, despacho, drainsa, motornova);
            txtDescripcion.Completed += OnDescripcionEntryCompleted;

            NavigationPage.SetHasNavigationBar(this, false);
        }

        private async Task OpenAnimation(View view, uint length = 250)
        {
            view.RotationX = -90;
            view.IsVisible = true;
            view.Opacity = 0;
            _ = view.FadeTo(1, length);
            await view.RotateXTo(0, length);
        }

        private async Task CloseAnimation(View view, uint length = 250)
        {
            
            _ = view.FadeTo(0, length);
            await view.RotateXTo(-90, length);
            view.IsVisible = false;
        }

        private async void MainExpander_Tapped(object sender, EventArgs e)
        {
            var expander = sender as Expander;
            var detailsView = expander.FindByName<Grid>("DetailsView");

            if (expander.IsExpanded)
            {
                await OpenAnimation(detailsView);
            }
            else
            {
                await CloseAnimation(detailsView);
            }
        }

        private async void OnDescripcionEntryCompleted(object sender, EventArgs e)
        {
            if (BindingContext is ListArticulosPageViewModel viewModel)
            {
                if (viewModel.BuscarCommand.CanExecute(null))
                    viewModel.BuscarCommand.Execute(null);
            }
        }

        private void ActualizarVisibilidad(ObservableCollection<Articulo> listArticulo)
        {
            if (listArticulo == null || listArticulo.Count == 0)
            {
                botonesLayout.IsVisible = true;
                collectionViewName.IsVisible = false;
            }
            else
            {
                botonesLayout.IsVisible = false;
                collectionViewName.IsVisible = true;
            }
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            if (BindingContext is ListArticulosPageViewModel viewModel)
            {
                viewModel.PropertyChanged += ViewModel_PropertyChanged;
                ActualizarVisibilidad(viewModel.ListArticulo);
            }
        }

        private void ViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(ListArticulosPageViewModel.ListArticulo))
            {
                if (BindingContext is ListArticulosPageViewModel viewModel)
                {
                    ActualizarVisibilidad(viewModel.ListArticulo);
                }
            }
        }
    }
}
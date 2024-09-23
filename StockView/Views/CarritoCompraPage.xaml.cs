using StockView.ViewModel;
using System;
using System.Threading.Tasks;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CarritoCompraPage : ContentPage
    {
        public CarritoCompraPage(string user, string token, string despacho)
        {
            InitializeComponent();
            BindingContext = new CarritoCompraPageViewModel(Navigation, user, token, despacho);
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
    }
}

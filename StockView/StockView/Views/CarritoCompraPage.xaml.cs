using StockView.Model;
using StockView.ViewModel;
using System.ComponentModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CarritoCompraPage : ContentPage
    {
        //private Articulo selectedArticulo;

        public CarritoCompraPage(string user, string token)
        {
            InitializeComponent();
            BindingContext = new CarritoCompraPageViewModel(Navigation, user, token);
            //this.selectedArticulo = selectedArticulo;
            
        }
    }
}

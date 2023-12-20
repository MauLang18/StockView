using StockView.Data;
using StockView.Model;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class CarritoCompraPageViewModel : BaseViewModel
    {
        string _Desc;
        string User;
        string Token;
        ObservableCollection<CarritoCompra> _ListCarritoCompra;

        public CarritoCompraPageViewModel(INavigation navigation, string user, string token)
        {
            Navigation = navigation;
            User = user;
            Token = token;

            MostrarArticulo();
        }

        public string Desc
        {
            get { return _Desc; }
            set { SetValue(ref _Desc, value); }
        }

        public ObservableCollection<CarritoCompra> ListCarritoCompra
        {
            get { return _ListCarritoCompra; }
            set
            {
                SetValue(ref _ListCarritoCompra, value);
                OnPropertyChanged();
            }
        }

        public async Task MostrarArticulo()
        {
            ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);
        }

        public async Task Carrito()
        {
            OpenMenuRequested?.Invoke(this, EventArgs.Empty);
        }

        public async Task More(Articulo selectedArticulo)
        {
            if (selectedArticulo != null)
            {
                selectedArticulo.Count += 1;
            }
        }

        public async Task Less(Articulo selectedArticulo)
        {
            if (selectedArticulo != null && selectedArticulo.Count > 0)
            {
                selectedArticulo.Count -= 1;
            }
        }

        public event EventHandler OpenMenuRequested;
        public ICommand CarritoCommand => new Command(async () => await Carrito());
        public ICommand MoreCommand => new Command<Articulo>(async (articulo) => await More(articulo));
        public ICommand LessCommand => new Command<Articulo>(async (articulo) => await Less(articulo));
    }
}

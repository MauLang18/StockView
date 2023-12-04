using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using StockView.Model;
using StockView.Data;
using System.Linq;

namespace StockView.ViewModel
{
    public class ListArticulosPageViewModel : BaseViewModel
    {
        #region VARIABLES
        string _Desc;
        ObservableCollection<Articulo> _ListArticulo;
        string Token;
        string Privilegios;
        private SecureStore _secureStore;
        private bool _IsAscending = false;
        public string SortIcon => _IsAscending ? "asc.png" : "desc.png";
        #endregion

        #region CONSTRUCTOR
        public ListArticulosPageViewModel(INavigation navigation, string token, string privilegios)
        {
            Navigation = navigation;
            Token = token;
            Privilegios = privilegios;
            _secureStore = new SecureStore();

            //ListArticulo = GenerarDatosFicticios();
            MostrarArticulo();
        }
        #endregion

        #region OBJETOS
        public string Desc
        {
            get { return _Desc; }
            set { SetValue(ref _Desc, value); }
        }

        public ObservableCollection<Articulo> ListArticulo
        {
            get { return _ListArticulo; }
            set
            {
                SetValue(ref _ListArticulo, value);
                OnPropertyChanged();
            }
        }

        public bool IsAscending
        {
            get { return _IsAscending; }
            set { SetValue(ref _IsAscending, value);
                OnPropertyChanged(nameof(SortIcon));
            }
        }
        #endregion

        #region PROCESOS
        public static ObservableCollection<Articulo> GenerarDatosFicticios()
        {
            ObservableCollection<Articulo> lista = new ObservableCollection<Articulo>();

            lista.Add(new Articulo
            {
                Codigo = "A001",
                CodigoProveedor = "CP001",
                Descripcion = "Artículo de ejemplo 1",
                Precio = 19.99m,
                CantidadBodega1 = 50.0m,
                CantidadBodega2 = 50.0m
            });
            lista.Add(new Articulo
            {
                Codigo = "A002",
                CodigoProveedor = "CP002",
                Descripcion = "Artículo de ejemplo 2",
                Precio = 29.99m,
                CantidadBodega1 = 30.0m,
                CantidadBodega2 = 100.2m
            });
            lista.Add(new Articulo
            {
                Codigo = "A003",
                CodigoProveedor = "CP003",
                Descripcion = "Artículo de ejemplo 3",
                Precio = 39.99m,
                CantidadBodega1 = 20.0m,
                CantidadBodega2 = 0.0m
            });

            return lista;
        }

        public async Task MostrarArticulo()
        {
            ListArticulo = await Metodos.ObtenerArticulos("", Token, Privilegios, "asc");
            Console.WriteLine(ListArticulo);
        }

        public async Task Buscar()
        {
            if (Desc == null || Desc == "")
            {
                ListArticulo = await Metodos.ObtenerArticulos("", Token, Privilegios, "asc");
                Console.WriteLine(ListArticulo);
            }
            else
            {
                ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
                Console.WriteLine(ListArticulo);
            }
        }

        public async Task Logout()
        {
            await _secureStore.DeleteAuthTokenAsync();
            await _secureStore.DeletePrivAsync();
            await Navigation.PopAsync();
        }

        public async Task Volver()
        {
            await Navigation.PopAsync();
        }

        public async Task Sort()
        {
            if (ListArticulo == null)
                return;

            if (IsAscending)
            {
                if (Desc == null || Desc == "")
                {
                    ListArticulo = await Metodos.ObtenerArticulos("", Token, Privilegios, "asc");
                    Console.WriteLine(ListArticulo);
                }
                else
                {
                    ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
                    Console.WriteLine(ListArticulo);
                }
            }
            else
            {
                if (Desc == null || Desc == "")
                {
                    ListArticulo = await Metodos.ObtenerArticulos("", Token, Privilegios, "desc");
                    Console.WriteLine(ListArticulo);
                }
                else
                {
                    ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "desc");
                    Console.WriteLine(ListArticulo);
                }
            }

            _IsAscending = !_IsAscending;
            OnPropertyChanged(nameof(SortIcon));
        }
        #endregion

        #region COMANDOS
        public ICommand BuscarCommand => new Command(async () => await Buscar());
        public ICommand LogoutCommand => new Command(async () => await Logout());
        //public ICommand Iradetallecommand => new Command<Empleado>(async (p) => await Iradetalle(p));
        public ICommand VolverCommand => new Command(async () => await Volver());
        public ICommand SortCommand => new Command(async () => await Sort());
        #endregion
    }
}

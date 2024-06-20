using StockView.Data;
using StockView.Model;
using StockView.Views;
using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class CotizacionPageViewModel : BaseViewModel
    {
        #region VARIABLES
        string _Desc;
        string _Obser;
        string _Data;
        ObservableCollection<Clientes> _ListCliente;
        string Token;
        private SecureStore _secureStore;
        public event EventHandler<Clientes> ArticuloSeleccionadoEnviado;
        #endregion

        #region CONSTRUCTOR
        public CotizacionPageViewModel(INavigation navigation, string token)
        {
            Navigation = navigation;
            Token = token;
            _secureStore = new SecureStore();
        }
        #endregion

        #region OBJETOS
        public string Desc
        {
            get { return _Desc; }
            set { SetValue(ref _Desc, value); }
        }

        public string Obser
        {
            get { return _Obser; }
            set { SetValue(ref _Obser, value); }
        }

        public string Data
        {
            get { return _Data; }
            set
            {
                SetValue(ref _Data, value);
                OnPropertyChanged();
            }
        }

        public ObservableCollection<Clientes> ListCliente
        {
            get { return _ListCliente; }
            set
            {
                SetValue(ref _ListCliente, value);
                OnPropertyChanged();
            }
        }
        #endregion

        #region PROCESOS
        public async Task MostrarArticulo()
        {
            if (Desc == null || Desc == "")
            {
                ListCliente = null;
            }
            else
            {
                ListCliente = await Metodos.ObtenerClientes(Desc, Token);
            }
        }

        public async Task Buscar()
        {
            if (Desc == null || Desc == "")
            {
                ListCliente = null;
            }
            else
            {
                ListCliente = await Metodos.ObtenerClientes(Desc, Token);
            }
        }

        public async Task More(Clientes selectedCliente)
        {
            if(Obser != null && Obser != "")
            {
                Clientes cliente = new Clientes
                {
                    Cliente = selectedCliente.Cliente,
                    Codigo = selectedCliente.Codigo,
                    Obser = Obser
                };

                MessagingCenter.Send(this, "ActualizarPagina", cliente);
                await Navigation.PopAsync();
            }
            else
            {
                await DisplayAlert("Tiene que agregar el descuento", Data, "OK");
            }
        }

        public async Task Logout()
        {
            await Navigation.PopAsync();
        }
        #endregion

        #region COMANDOS
        public ICommand BuscarCommand => new Command(async () => await Buscar());
        public ICommand MoreCommand => new Command<Clientes>(async (articulo) => await More(articulo));
        public ICommand LogoutCommand => new Command(async () => await Logout());
        #endregion
    }
}

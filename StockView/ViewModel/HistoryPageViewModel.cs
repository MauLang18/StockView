using StockView.Data;
using StockView.Model;
using System;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class HistoryPageViewModel : BaseViewModel
    {
        #region VARIABLES
        string _Desc;
        string _Obser;
        string _Data;
        ObservableCollection<Pedido> _ListPedido;
        string Token;
        string User;
        private SecureStore _secureStore;
        public event EventHandler<Clientes> ArticuloSeleccionadoEnviado;
        #endregion

        #region CONSTRUCTOR
        public HistoryPageViewModel(INavigation navigation, string token, string user)
        {
            Navigation = navigation;
            Token = token;
            User = user;
            _secureStore = new SecureStore();

            MostrarArticulo();
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

        public ObservableCollection<Pedido> ListPedido
        {
            get { return _ListPedido; }
            set
            {
                SetValue(ref _ListPedido, value);
                OnPropertyChanged();
            }
        }
        #endregion

        #region PROCESOS
        public async Task MostrarArticulo()
        {
            ListPedido = await Metodos.ObtenerPedidos(Token, User);
        }

        public async Task Logout()
        {
            await Navigation.PopAsync();
        }
        #endregion

        #region COMANDOS
        public ICommand LogoutCommand => new Command(async () => await Logout());
        #endregion
    }
}

using StockView.Data;
using StockView.Model;
using StockView.Views;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class LoginPageViewModel : BaseViewModel
    {
        #region VARIABLES
        string _Data;
        string _Privilegios;
        string _Password;
        string _Usuario;
        string _Drainsa;
        string _Motornova;
        string _Despacho;
        private SecureStore _secureStore;
        #endregion
        #region CONSTRUCTOR
        public LoginPageViewModel(INavigation navigation)
        {
            Navigation = navigation;
            _secureStore = new SecureStore();

            Initialize();
        }

        private async void Initialize()
        {
            string data = await _secureStore.ReadAuthTokenAsync();

            string privilegios = await _secureStore.ReadRolAsync();

            string user = await _secureStore.ReadUserAsync();

            string despacho = await _secureStore.ReadDespachoAsync();

            string drainsa = await _secureStore.ReadDrainsaAsync();

            string motornova = await _secureStore.ReadMotornovaAsync();

            if (string.IsNullOrEmpty(data))
            {
                Console.WriteLine("No hay token almacenado.");
            }
            else
            {
                Console.WriteLine("Token almacenado: " + data);

                if (await _secureStore.IsAuthTokenExpiredAsync())
                {
                    Console.WriteLine("El token ha expirado.");
                    await _secureStore.DeleteAuthTokenIfExpiredAsync();
                }
                else
                {
                    Console.WriteLine("El token es válido.");
                    await Navigation.PushAsync(new MainPage(data, privilegios, user, despacho, drainsa, motornova));
                }
            }
        }
        #endregion
        #region OBJETOS
        public string Data
        {
            get { return _Data; }
            set
            {
                SetValue(ref _Data, value);
                OnPropertyChanged();
            }
        }
        public string Privilegios
        {
            get { return _Privilegios; }
            set
            {
                SetValue(ref _Privilegios, value);
                OnPropertyChanged();
            }
        }
        public string Password
        {
            get { return _Password; }
            set { SetValue(ref _Password, value); }
        }
        public string Usuario
        {
            get { return _Usuario; }
            set { SetValue(ref _Usuario, value); }
        }
        public string Drainsa
        {
            get { return _Drainsa; }
            set { SetValue(ref _Drainsa, value); }
        }
        public string Motornova
        {
            get { return _Motornova; }
            set { SetValue(ref _Motornova, value); }
        }
        public string Despacho
        {
            get { return _Despacho; }
            set { SetValue(ref _Despacho, value); }
        }
        #endregion
        #region PROCESOS
        public async Task Ingresar()
        {
            Data = await Metodos.Login(Usuario , Password);
            DateTime fechaGuardado = DateTime.Now;

            if (Data == "El usuario y/o contraseña es incorrecta, compruébala.")
            {
                await DisplayAlert("No se pudo ingresar",Data,"OK");
            }
            else
            {
                UsuariosData rol = await Metodos.ObtenerUsuario(Usuario, Data);
                RolsData priv = await Metodos.ObtenerRol(rol.Rol, Data);
                Privilegios = priv.Privilegios.ToString();
                Motornova = priv.Motornova.ToString();
                Drainsa = priv.Drainsa.ToString();
                Despacho = rol.Despacho.ToString();
                await _secureStore.StoreAuthTokenAsync(Data, fechaGuardado, Privilegios, Usuario, Motornova, Drainsa, Despacho);
                await Navigation.PushAsync(new MainPage(Data, Privilegios, Usuario, Despacho, Drainsa, Motornova));
            }
        }

        public void ProcesoSimple()
        {
            
        }
        #endregion
        #region COMANDOS
        public ICommand LoginCommand => new Command(async () => await Ingresar());
        public ICommand ProcesoSimpcommand => new Command(ProcesoSimple);
        #endregion
    }
}

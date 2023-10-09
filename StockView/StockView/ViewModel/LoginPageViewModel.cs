using StockView.Data;
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
        string _Password;
        string _Usuario;
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
            // Leer el token almacenado
            string data = await _secureStore.ReadAuthTokenAsync();

            // Validar y realizar acciones basadas en el token
            if (string.IsNullOrEmpty(data))
            {
                // No hay token almacenado, realizar acciones correspondientes
                Console.WriteLine("No hay token almacenado.");
            }
            else
            {
                // Hay un token almacenado, realizar acciones correspondientes
                Console.WriteLine("Token almacenado: " + data);

                // Puedes verificar si el token ha expirado y actuar en consecuencia
                if (await _secureStore.IsAuthTokenExpiredAsync())
                {
                    Console.WriteLine("El token ha expirado.");
                    // Realizar acciones para cerrar sesión y limpiar el token si es necesario
                    await _secureStore.DeleteAuthTokenIfExpiredAsync();
                }
                else
                {
                    Console.WriteLine("El token es válido.");
                    // El token es válido, puedes navegar a la página correspondiente
                    await Navigation.PushAsync(new ListArticulosPage(data));
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
                await _secureStore.StoreAuthTokenAsync(Data, fechaGuardado);
                await Navigation.PushAsync(new ListArticulosPage(Data));
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

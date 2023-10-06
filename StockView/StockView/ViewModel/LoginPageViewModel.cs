using StockView.Data;
using StockView.Model;
using StockView.Views;
using System.Collections.ObjectModel;
using System.Security.Cryptography;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class LoginPageViewModel : BaseViewModel
    {
        #region VARIABLES
        ObservableCollection<Login> _Data;
        string _Password;
        string _Usuario;
        #endregion
        #region CONSTRUCTOR
        public LoginPageViewModel(INavigation navigation)
        {
            Navigation = navigation;
        }
        #endregion
        #region OBJETOS
        public ObservableCollection<Login> Data
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

            if (Data == null)
            {
                await DisplayAlert("No se pudo ingresar","Usuario o Contraseña incorrecta, intentelo de nuevo","OK");
            }
            else
            {
                await Navigation.PushAsync(new ListArticulosPage());
            }

            Data.Clear();
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

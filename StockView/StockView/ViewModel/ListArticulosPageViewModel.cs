using System.Collections.ObjectModel;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using StockView.Model;
using StockView.Data;

namespace StockView.ViewModel
{
    public class ListArticulosPageViewModel : BaseViewModel
    {
        #region VARIABLES
        string _Desc;
        ObservableCollection<Articulo> _ListArticulo;
        #endregion
        #region CONSTRUCTOR
        public ListArticulosPageViewModel(INavigation navigation)
        {
            Navigation = navigation;
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
        #endregion
        #region PROCESOS
        public async Task MostrarArticulo()
        {
            ListArticulo = await Metodos.ObtenerArticulos("");
            Console.WriteLine(ListArticulo);
        }

        public async Task Buscar()
        {
            if (Desc == null || Desc == "")
            {
                ListArticulo = await Metodos.ObtenerArticulos("null");
                Console.WriteLine(ListArticulo);
            }
            else
            {
                ListArticulo = await Metodos.ObtenerArticulos(Desc);
                Console.WriteLine(ListArticulo);
            }
        }
        public async Task Volver()
        {
            await Navigation.PopAsync();
        }

        #endregion
        #region COMANDOS
        public ICommand BuscarCommand => new Command(async () => await Buscar());
        //public ICommand Iradetallecommand => new Command<Empleado>(async (p) => await Iradetalle(p));
        public ICommand VolverCommand => new Command(async () => await Volver());
        #endregion
    }
}

﻿using StockView.Data;
using StockView.Model;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class ListArticulosPageViewModel : BaseViewModel
    {
        #region VARIABLES
        string _Desc;
        string _Data;
        ObservableCollection<Articulo> _ListArticulo;
        ObservableCollection<CarritoCompra> _ListCarritoCompra;
        string Token;
        string User;
        string Privilegios;
        private SecureStore _secureStore;
        private bool _IsAscending = false;
        public string SortIcon => _IsAscending ? "asc.png" : "desc.png";
        public event EventHandler OpenMenuRequested;
        public event EventHandler<Articulo> ArticuloSeleccionadoEnviado;
        #endregion

        #region CONSTRUCTOR
        public ListArticulosPageViewModel(INavigation navigation, string token, string privilegios, string user)
        {
            Navigation = navigation;
            Token = token;
            User = user;
            Privilegios = privilegios;
            _secureStore = new SecureStore();

            MessagingCenter.Subscribe<CarritoCompraPageViewModel>(this, "ActualizarPagina", async (sender) =>
            {
                await MostrarArticulo();
            });
        }
        #endregion

        #region OBJETOS
        public string Desc
        {
            get { return _Desc; }
            set { SetValue(ref _Desc, value); }
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

        public ObservableCollection<Articulo> ListArticulo
        {
            get { return _ListArticulo; }
            set
            {
                SetValue(ref _ListArticulo, value);
                OnPropertyChanged();
            }
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

        public bool IsAscending
        {
            get { return _IsAscending; }
            set { SetValue(ref _IsAscending, value);
                OnPropertyChanged(nameof(SortIcon));
            }
        }
        #endregion

        #region PROCESOS
        public async Task MostrarArticulo()
        {
            if (Desc == null || Desc == "")
            {
                ListArticulo = null;
            }
            else
            {
                ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
                ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

                if (ListArticulo != null && ListArticulo.Any())
                {
                    foreach (var articulo in ListArticulo)
                    {
                        articulo.Count = 0;
                        // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                        if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                        {
                            articulo.IsCarrito = true;
                        }
                    }
                }
            }
        }

        public async Task Buscar()
        {
            if (Desc == null || Desc == "")
            {
                ListArticulo = null;
            }
            else
            {
                ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
                ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

                if (ListArticulo != null && ListArticulo.Any())
                {
                    foreach (var articulo in ListArticulo)
                    {
                        articulo.Count = 0;
                        // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                        if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                        {
                            articulo.IsCarrito = true;
                        }
                    }
                }
            }
        }

        public async Task Clear()
        {
            Desc = "";
            ListArticulo = null;
        }

        public async Task Llantas()
        {
            Desc = "llanta";
            ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
            ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

            if (ListArticulo != null && ListArticulo.Any())
            {
                foreach (var articulo in ListArticulo)
                {
                    articulo.Count = 0;
                    // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                    if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                    {
                        articulo.IsCarrito = true;
                    }
                }
            }
        }

        public async Task Frenos()
        {
            Desc = "freno";
            ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
            ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

            if (ListArticulo != null && ListArticulo.Any())
            {
                foreach (var articulo in ListArticulo)
                {
                    articulo.Count = 0;
                    // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                    if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                    {
                        articulo.IsCarrito = true;
                    }
                }
            }
        }

        public async Task Fajas()
        {
            Desc = "faja";
            ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
            ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

            if (ListArticulo != null && ListArticulo.Any())
            {
                foreach (var articulo in ListArticulo)
                {
                    articulo.Count = 0;
                    // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                    if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                    {
                        articulo.IsCarrito = true;
                    }
                }
            }
        }

        public async Task Amortiguadores()
        {
            Desc = "amortiguador";
            ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
            ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

            if (ListArticulo != null && ListArticulo.Any())
            {
                foreach (var articulo in ListArticulo)
                {
                    articulo.Count = 0;
                    // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                    if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                    {
                        articulo.IsCarrito = true;
                    }
                }
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
                    ListArticulo = null;
                }
                else
                {
                    ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "asc");
                    ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

                    if (ListArticulo != null && ListArticulo.Any())
                    {
                        foreach (var articulo in ListArticulo)
                        {
                            articulo.Count = 0;
                            // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                            if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                            {
                                articulo.IsCarrito = true;
                            }
                        }
                    }
                }
            }
            else
            {
                if (Desc == null || Desc == "")
                {
                    ListArticulo = null;
                }
                else
                {
                    ListArticulo = await Metodos.ObtenerArticulos(Desc, Token, Privilegios, "desc");
                    ListCarritoCompra = await Metodos.ObtenerByVendedor(User, Token);

                    if (ListArticulo != null && ListArticulo.Any())
                    {
                        foreach (var articulo in ListArticulo)
                        {
                            articulo.Count = 0;
                            // Verificar si el artículo está en ListCarritoCompra y establecer IsCarrito en consecuencia
                            if (ListCarritoCompra != null && ListCarritoCompra.Any(a => a.Codigo == articulo.Codigo))
                            {
                                articulo.IsCarrito = true;
                            }
                        }
                    }
                }
            }

            _IsAscending = !_IsAscending;
            OnPropertyChanged(nameof(SortIcon));
        }

        public async Task Carrito()
        {
            OpenMenuRequested?.Invoke(this, EventArgs.Empty);
        }

        public async Task More(Articulo selectedArticulo)
        {
            if (selectedArticulo.IsCarrito)
            {
                await DisplayAlert("Ya tienes el producto en el carrito", Data, "OK");
            }
            else
            {
                if (selectedArticulo != null)
                {
                    selectedArticulo.Count += 1;

                    bool agregado = await Metodos.AgregarAlCarrito(selectedArticulo.Codigo, selectedArticulo.Descripcion, User, selectedArticulo.Count, Token);

                    if (agregado)
                    {
                        await DisplayAlert("Agregado al carrito", Data, "OK");

                        selectedArticulo.IsCarrito = true;
                        OnPropertyChanged(nameof(selectedArticulo.CarritoIcon));
                        MessagingCenter.Send(this, "ActualizarPagina");
                    }
                    else
                    {
                        await DisplayAlert("No se pudo agregar", Data, "OK");
                    }
                }
            }
        }
        #endregion

        #region COMANDOS
        public ICommand BuscarCommand => new Command(async () => await Buscar());
        public ICommand ClearCommand => new Command(async () => await Clear());
        public ICommand LlantasCommand => new Command(async () => await Llantas());
        public ICommand FrenosCommand => new Command(async () => await Frenos());
        public ICommand FajasCommand => new Command(async () => await Fajas());
        public ICommand AmortiguadoresCommand => new Command(async () => await Amortiguadores());
        public ICommand LogoutCommand => new Command(async () => await Logout());
        public ICommand VolverCommand => new Command(async () => await Volver());
        public ICommand SortCommand => new Command(async () => await Sort());
        public ICommand CarritoCommand => new Command(async () => await Carrito());
        public ICommand MoreCommand => new Command<Articulo>(async (articulo) => await More(articulo));
        #endregion
    }
}

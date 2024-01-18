using StockView.Data;
using StockView.Model;
using StockView.Views;
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
        string _Data;
        string User;
        string Token;
        ObservableCollection<CarritoCompra> _ListCarritoCompra;

        public CarritoCompraPageViewModel(INavigation navigation, string user, string token)
        {
            Navigation = navigation;
            User = user;
            Token = token;

            MostrarArticulo();

            MessagingCenter.Subscribe<ListArticulosPageViewModel>(this, "ActualizarPagina", async (sender) =>
            {
                await MostrarArticulo();
            });

            MessagingCenter.Subscribe<CarritoCompraPageViewModel>(this, "ActualizarPagina", async (sender) =>
            {
                await MostrarArticulo();
            });
        }

        public string Desc
        {
            get { return _Desc; }
            set { SetValue(ref _Desc, value); }
        }

        public string Data
        {
            get { return _Data; }
            set { SetValue(ref _Data, value); }
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

        public async Task More(CarritoCompra selectedArticulo)
        {
            if (selectedArticulo != null)
            {
                selectedArticulo.Cantidad += 1;

                bool actualizado = await Metodos.ActualizarEnCarrito(selectedArticulo.Id, selectedArticulo.Cantidad, Token);

                if (actualizado)
                {
                    Console.WriteLine("modificado del carrito");
                    MessagingCenter.Send(this, "ActualizarPagina");
                }
                else
                {
                    await DisplayAlert("No se pudo modificar", Data, "OK");
                }
            }
        }

        public async Task Less(CarritoCompra selectedArticulo)
        {
            if (selectedArticulo != null && selectedArticulo.Cantidad > 0)
            {
                selectedArticulo.Cantidad -= 1;

                bool actualizado = await Metodos.ActualizarEnCarrito(selectedArticulo.Id, selectedArticulo.Cantidad, Token);

                if (actualizado)
                {
                    Console.WriteLine("modificado del carrito");
                    MessagingCenter.Send(this, "ActualizarPagina");
                }
                else
                {
                    await DisplayAlert("No se pudo modificar", Data, "OK");
                }
            }
        }

        public async Task Delete(CarritoCompra selectedArticulo)
        {
            if (selectedArticulo != null)
            {
                bool eliminado = await Metodos.EliminarDelCarrito(selectedArticulo.Id ,Token);

                if (eliminado)
                {
                    await DisplayAlert("Eliminado del carrito", Data, "OK");
                    MessagingCenter.Send(this, "ActualizarPagina");
                }
                else
                {
                    await DisplayAlert("No se pudo eliminar", Data, "OK");
                }
            }
        }

        public async Task GenerarOrden()
        {
            await Navigation.PushAsync(new ClientePage(Token));

            if (ListCarritoCompra != null && ListCarritoCompra.Any())
            {
                MessagingCenter.Subscribe<ClientePageViewModel, Clientes>(this, "ActualizarPagina", async (sender, arg) =>
                {
                    string cliente = arg.Cliente;
                    string codigo = arg.Codigo;
                    string obser = arg.Obser;

                    if (!string.IsNullOrWhiteSpace(cliente))
                    {
                        string correoHTML = GenerarContenidoCorreo(cliente, codigo, obser);

                        bool enviado = await Metodos.EnviarCorreo("lquiros@motornovacr.com", $"Pedido para {codigo} - {cliente} / vendedor {User}", correoHTML, Token, $"{User}@motornovacr.com");

                        if (enviado)
                        {
                            bool eliminado = await Metodos.EliminarDelCarritoByVendedor(User, Token);
                            bool agregado = false;

                            foreach (var item in ListCarritoCompra)
                            {
                                agregado = await Metodos.AgregarPedido(item.Codigo, item.Descripcion, codigo, cliente, item.Vendedor, item.Cantidad, Token);
                            }

                            if (eliminado && agregado)
                            {
                                await Application.Current.MainPage.DisplayAlert("Pedido realizado", Data, "OK");
                                MessagingCenter.Send(this, "ActualizarPagina");

                            }
                            else
                            {
                                await Application.Current.MainPage.DisplayAlert("No se pudo realizar el pedido", Data, "OK");
                            }
                        }
                        else
                        {
                            await Application.Current.MainPage.DisplayAlert("No se pudo realizar el pedido", Data, "OK");
                        }
                    }
                    else
                    {
                        await Application.Current.MainPage.DisplayAlert("Nombre no válido", "Por favor, ingrese un nombre válido.", "OK");
                    }
                });
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("No hay productos en el carrito", Data, "OK");
            }
        }

        private string GenerarContenidoCorreo(string nombreCliente, string codigo, string obser)
        {
            string correoHTML = $"<h1>Detalles del Pedido para {codigo} - {nombreCliente}</h1><ul>";

            foreach (var item in ListCarritoCompra)
            {
                correoHTML += $"<li><strong>Codigo:</strong> {item.Codigo} - <strong>Producto:</strong> {item.Descripcion} - <strong>Cantidad:</strong> {item.Cantidad}</li>";
            }

            correoHTML += "</ul>";

            correoHTML += $"<p><strong>Observaciones:</strong> {obser}</p>";

            return correoHTML;
        }

        public event EventHandler OpenMenuRequested;
        public ICommand CarritoCommand => new Command(async () => await Carrito());
        public ICommand IncrementCommand => new Command<CarritoCompra>(async (articulo) => await More(articulo));
        public ICommand DecrementCommand => new Command<CarritoCompra>(async (articulo) => await Less(articulo));
        public ICommand DeleteCommand => new Command<CarritoCompra>(async (articulo) => await Delete(articulo));
        public ICommand GenerateOrderCommand => new Command(async () => await GenerarOrden());
    }
}

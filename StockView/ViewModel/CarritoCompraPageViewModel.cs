using StockView.Data;
using StockView.Model;
using StockView.Views;
using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace StockView.ViewModel
{
    public class CarritoCompraPageViewModel : BaseViewModel
    {
        string _Desc;
        string _Data;
        string User;
        string Token;
        string Despacho;
        ObservableCollection<CarritoCompra> _ListCarritoCompra;

        public CarritoCompraPageViewModel(INavigation navigation, string user, string token, string despacho)
        {
            Navigation = navigation;
            User = user;
            Token = token;
            Despacho = despacho;

            MostrarArticulo();

            MessagingCenter.Subscribe<ListArticulosPageViewModel>(this, "ActualizarPagina", async (sender) =>
            {
                await MostrarArticulo();
            });

            MessagingCenter.Subscribe<CarritoCompraPageViewModel>(this, "ActualizarPagina", async (sender) =>
            {
                await MostrarArticulo();
            });
            Despacho = despacho;
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
                bool eliminado = await Metodos.EliminarDelCarrito(selectedArticulo.Id, Token);

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
                MessagingCenter.Unsubscribe<ClientePageViewModel, Clientes>(this, "ActualizarPagina");
                MessagingCenter.Subscribe<ClientePageViewModel, Clientes>(this, "ActualizarPagina", async (sender, arg) =>
                {
                    string cliente = arg.Cliente;
                    string codigo = arg.Codigo;
                    string obser = arg.Obser;

                    if (!string.IsNullOrWhiteSpace(cliente))
                    {

                        bool eliminado = await Metodos.EliminarDelCarritoByVendedor(User, Token);
                        bool agregado = false;

                        foreach (var item in ListCarritoCompra)
                        {
                            agregado = await Metodos.AgregarPedido(item.Codigo, item.Descripcion, codigo, cliente, item.Vendedor, item.Cantidad, Token, obser, Despacho);
                        }

                        if (eliminado && agregado)
                        {

                            await Metodos.EnviarCorreo(codigo, User, DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss.fffffff"), Token, Despacho);
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
                        await Application.Current.MainPage.DisplayAlert("Nombre no válido", "Por favor, ingrese un nombre válido.", "OK");
                    }
                });
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("No hay productos en el carrito", Data, "OK");
            }
        }

        public async Task GenerarCotizacion()
        {
            await Navigation.PushAsync(new ClientePage(Token));

            if (ListCarritoCompra != null && ListCarritoCompra.Any())
            {
                MessagingCenter.Unsubscribe<ClientePageViewModel, Clientes>(this, "ActualizarPagina");
                MessagingCenter.Subscribe<ClientePageViewModel, Clientes>(this, "ActualizarPagina", async (sender, arg) =>
                {
                    string cliente = arg.Cliente;
                    string codigo = arg.Codigo;
                    string obser = arg.Obser;

                    if (!string.IsNullOrWhiteSpace(cliente))
                    {
                        string fecha = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss.fffffff");
                        bool agregadoCoti = false;
                        bool agregado = await Metodos.AgregarCotizacion(codigo, cliente, User, Decimal.Parse(obser), Token, fecha);

                        if (agregado)
                        {
                            CotizacionData cotizacion = await Metodos.ObtenerCotizacion(Token, cliente, User, fecha);

                            if (cotizacion != null)
                            {
                                foreach (var item in ListCarritoCompra)
                                {
                                    agregadoCoti = await Metodos.AgregarDetalleCotizacion(item.Codigo, item.Descripcion, item.Precio, item.Cantidad, cotizacion.Id, Token);
                                }

                                if (agregadoCoti)
                                {
                                    byte[] pdfBytes = await Metodos.GenerarCotizacion(cotizacion.Id, Token);

                                    string nombreArchivo = $"{cotizacion.Id}-cotizacion.pdf";
                                    string rutaArchivo = Path.Combine(FileSystem.AppDataDirectory, nombreArchivo);

                                    try
                                    {
                                        File.WriteAllBytes(rutaArchivo, pdfBytes);
                                        Console.WriteLine($"Archivo PDF guardado en: {rutaArchivo}");

                                        await Launcher.OpenAsync(new OpenFileRequest
                                        {
                                            File = new ReadOnlyFile(rutaArchivo)
                                        });

                                        await Application.Current.MainPage.DisplayAlert("Cotización creada", "La cotización se ha creado correctamente.", "OK");

                                        MessagingCenter.Send(this, "ActualizarPagina");
                                    }
                                    catch (Exception ex)
                                    {
                                        Console.WriteLine($"Error al guardar o abrir el archivo PDF: {ex.Message}");

                                        await Application.Current.MainPage.DisplayAlert("Error", $"Se ha producido un error: {ex.Message}", "OK");
                                    }
                                }
                            }
                        }
                        else
                        {
                            await Application.Current.MainPage.DisplayAlert("No se pudo realizar la cotizacion", Data, "OK");
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

        public event EventHandler OpenMenuRequested;
        public ICommand CarritoCommand => new Command(async () => await Carrito());
        public ICommand IncrementCommand => new Command<CarritoCompra>(async (articulo) => await More(articulo));
        public ICommand DecrementCommand => new Command<CarritoCompra>(async (articulo) => await Less(articulo));
        public ICommand DeleteCommand => new Command<CarritoCompra>(async (articulo) => await Delete(articulo));
        public ICommand GenerateOrderCommand => new Command(async () => await GenerarOrden());
        public ICommand GenerateQuoteCommand => new Command(async () => await GenerarCotizacion());
    }
}

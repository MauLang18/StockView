using Newtonsoft.Json;
using StockView.Model;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace StockView.Data
{
    public class Metodos
    {
        public static async Task<ObservableCollection<Articulo>> ObtenerArticulos(string desc, string token, string priv, string order, string drainsa, string motornova)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/Articulo?desc={Uri.EscapeDataString(desc)}&priv={Uri.EscapeDataString(priv)}&order={Uri.EscapeDataString(order)}&drainsa={Uri.EscapeDataString(drainsa)}&motornova={Uri.EscapeDataString(motornova)}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        ApiResponse1 apiResponse = JsonConvert.DeserializeObject<ApiResponse1>(resultado);

                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return new ObservableCollection<Articulo>(apiResponse.Data);
                        }
                        else
                        {
                            string mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        string mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (HttpRequestException hrex)
            {
                throw new ApplicationException("Error al realizar la solicitud HTTP: " + hrex.Message, hrex);
            }
            catch (JsonException jex)
            {
                throw new ApplicationException("Error al deserializar la respuesta JSON: " + jex.Message, jex);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Se produjo una excepción: " + ex.Message, ex);
            }
        }

        public static async Task<ObservableCollection<Clientes>> ObtenerClientes(string desc, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/Cliente?clie={Uri.EscapeDataString(desc)}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        ApiResponse4 apiResponse = JsonConvert.DeserializeObject<ApiResponse4>(resultado);

                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return new ObservableCollection<Clientes>(apiResponse.Data);
                        }
                        else
                        {
                            string mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        string mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (HttpRequestException hrex)
            {
                throw new ApplicationException("Error al realizar la solicitud HTTP: " + hrex.Message, hrex);
            }
            catch (JsonException jex)
            {
                throw new ApplicationException("Error al deserializar la respuesta JSON: " + jex.Message, jex);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Se produjo una excepción: " + ex.Message, ex);
            }
        }

        public static async Task<ObservableCollection<Pedido>> ObtenerPedidos(string token, string user)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/Pedido");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        ApiResponse5 apiResponse = JsonConvert.DeserializeObject<ApiResponse5>(resultado);

                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            var pedidosDelVendedor = apiResponse.Data
                                .Where(pedido => pedido.Vendedor == user)
                                .ToList();

                            return new ObservableCollection<Pedido>(pedidosDelVendedor);
                        }
                        else
                        {
                            string mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        string mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (HttpRequestException hrex)
            {
                throw new ApplicationException("Error al realizar la solicitud HTTP: " + hrex.Message, hrex);
            }
            catch (JsonException jex)
            {
                throw new ApplicationException("Error al deserializar la respuesta JSON: " + jex.Message, jex);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Se produjo una excepción: " + ex.Message, ex);
            }
        }

        public static async Task<CotizacionData> ObtenerCotizacion(string token, string cliente, string vendedor, string fecha)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uriBuilder = new UriBuilder("http://190.113.124.155:9098/Cotizacion/First");
                    var query = HttpUtility.ParseQueryString(uriBuilder.Query);
                    query["cliente"] = cliente;
                    query["vendedor"] = vendedor;
                    query["fecha"] = fecha;
                    uriBuilder.Query = query.ToString();
                    var uri = uriBuilder.Uri;

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();
                    string mensaje = string.Empty;

                    if (response.IsSuccessStatusCode)
                    {
                        Cotizacion apiResponse = JsonConvert.DeserializeObject<Cotizacion>(resultado);
                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return apiResponse.Data;
                        }
                        else
                        {
                            mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (HttpRequestException hrex)
            {
                throw new ApplicationException("Error al realizar la solicitud HTTP: " + hrex.Message, hrex);
            }
            catch (JsonException jex)
            {
                throw new ApplicationException("Error al deserializar la respuesta JSON: " + jex.Message, jex);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Se produjo una excepción: " + ex.Message, ex);
            }
        }

        public static async Task<string> Login(string username, string password)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri("http://190.113.124.155:9098/Auth/Login");

                    var loginData = new
                    {
                        Username = username,
                        Password = password
                    };

                    string jsonContent = JsonConvert.SerializeObject(loginData);
                    HttpContent content = new StringContent(jsonContent, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = await client.PostAsync(uri, content);

                    string resultado = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        ApiResponse2 apiResponse = JsonConvert.DeserializeObject<ApiResponse2>(resultado);
                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            string token = apiResponse.Data;
                            Console.WriteLine("Token: " + token);
                            return token;
                        }
                        else
                        {
                            string mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            return mensaje;
                        }
                    }
                    else
                    {
                        string mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (WebException wex)
            {
                throw new ApplicationException("WEB_ERROR: [" + wex.Message + "]" + (wex.InnerException != null ? " INNER: [" + wex.InnerException.Message + "]" : ""));
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<byte[]> GenerarCotizacion(int id, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/Report/Cotizacion/{id.ToString()}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    if (response.IsSuccessStatusCode)
                    {
                        return await response.Content.ReadAsByteArrayAsync();
                    }
                    else
                    {
                        string mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (WebException wex)
            {
                throw new ApplicationException("WEB_ERROR: [" + wex.Message + "]" + (wex.InnerException != null ? " INNER: [" + wex.InnerException.Message + "]" : ""));
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<RolsData> ObtenerRol(int id, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/Rol/{Uri.EscapeDataString(id.ToString())}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();
                    string mensaje = string.Empty;

                    if (response.IsSuccessStatusCode)
                    {
                        Rols apiResponse = JsonConvert.DeserializeObject<Rols>(resultado);
                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return apiResponse.Data;
                        }
                        else
                        {
                            mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (WebException wex)
            {
                throw new ApplicationException("WEB_ERROR: [" + wex.Message + "]" + (wex.InnerException != null ? " INNER: [" + wex.InnerException.Message + "]" : ""));
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<UsuariosData> ObtenerUsuario(string user, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/Usuario/User?user={Uri.EscapeDataString(user)}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();
                    string mensaje = string.Empty;

                    if (response.IsSuccessStatusCode)
                    {
                        Usuarios apiResponse = JsonConvert.DeserializeObject<Usuarios>(resultado);
                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return apiResponse.Data;
                        }
                        else
                        {
                            mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (WebException wex)
            {
                throw new ApplicationException("WEB_ERROR: [" + wex.Message + "]" + (wex.InnerException != null ? " INNER: [" + wex.InnerException.Message + "]" : ""));
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<ObservableCollection<CarritoCompra>> ObtenerByVendedor(string vendedor, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/CarritoCompra/Usuario?vendedor={Uri.EscapeDataString(vendedor)}");
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        ApiResponse3 apiResponse = JsonConvert.DeserializeObject<ApiResponse3>(resultado);

                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return new ObservableCollection<CarritoCompra>(apiResponse.Data);
                        }
                        else
                        {
                            string mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            throw new ApplicationException(mensaje);
                        }
                    }
                    else
                    {
                        string mensaje = "Respuesta no exitosa. Código: " + response.StatusCode;
                        throw new ApplicationException(mensaje);
                    }
                }
            }
            catch (HttpRequestException hrex)
            {
                throw new ApplicationException("Error al realizar la solicitud HTTP: " + hrex.Message, hrex);
            }
            catch (JsonException jex)
            {
                throw new ApplicationException("Error al deserializar la respuesta JSON: " + jex.Message, jex);
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Se produjo una excepción: " + ex.Message, ex);
            }
        }

        public static async Task<bool> AgregarAlCarrito(string codigoArticulo, string descripcionArticulo, string vendedor, int cantidad, string token, decimal precio)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri("http://190.113.124.155:9098/CarritoCompra/Register");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var nuevoArticulo = new
                    {
                        codigoArticulo = codigoArticulo,
                        descripcionArticulo = descripcionArticulo,
                        vendedor = vendedor,
                        cantidad = cantidad,
                        precio = precio
                    };

                    string jsonBody = JsonConvert.SerializeObject(nuevoArticulo);
                    HttpContent content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = await client.PostAsync(uri, content);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> AgregarPedido(string codigoArticulo, string articulo, string codigoCliente, string cliente, string vendedor, int cantidad, string token, string observacion, string despacho)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri("http://190.113.124.155:9098/Pedido/Register");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var nuevoArticulo = new
                    {
                        codigoArticulo = codigoArticulo,
                        articulo = articulo,
                        codigoCliente = codigoCliente,
                        cliente = cliente,
                        vendedor = vendedor,
                        cantidad = cantidad,
                        observacion = observacion,
                        estadoPedido = 0,
                        despacho = despacho,
                    };

                    string jsonBody = JsonConvert.SerializeObject(nuevoArticulo);
                    HttpContent content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = await client.PostAsync(uri, content);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> AgregarCotizacion(string codigoCliente, string cliente, string vendedor, decimal descuento, string token, string fecha)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri("http://190.113.124.155:9098/Cotizacion/Register");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var nuevoArticulo = new
                    {
                        codigoCliente = codigoCliente,
                        cliente = cliente,
                        vendedor = vendedor,
                        descuento = descuento,
                        fecha = fecha
                    };

                    string jsonBody = JsonConvert.SerializeObject(nuevoArticulo);
                    HttpContent content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = await client.PostAsync(uri, content);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> AgregarDetalleCotizacion(string codigoArticulo, string articulo, decimal precio, int cantidad, int idCotizacion, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri("http://190.113.124.155:9098/DetalleCotizacion/Register");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var nuevoArticulo = new
                    {
                        codigoArticulo = codigoArticulo,
                        articulo = articulo,
                        precio = precio,
                        cantidad = cantidad,
                        idCotizacion = idCotizacion
                    };

                    string jsonBody = JsonConvert.SerializeObject(nuevoArticulo);
                    HttpContent content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = await client.PostAsync(uri, content);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> ActualizarEnCarrito(int id, int cantidad, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/CarritoCompra/Edit/Cantidad");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    var articuloActualizado = new
                    {
                        id = id,
                        cantidad = cantidad
                    };

                    string jsonBody = JsonConvert.SerializeObject(articuloActualizado);
                    HttpContent content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

                    HttpResponseMessage response = await client.PutAsync(uri, content);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> EliminarDelCarrito(int id, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/CarritoCompra/Remove/{Uri.EscapeDataString(id.ToString())}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.DeleteAsync(uri);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> EliminarDelCarritoByVendedor(string vendedor, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9098/CarritoCompra/Remove/Vendedor?vendedor={Uri.EscapeDataString(vendedor)}");

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.DeleteAsync(uri);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        public static async Task<bool> EnviarCorreo(string codigoCliente, string vendedor, string fechaPedido, string token, string despacho)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uriBuilder = new UriBuilder("http://190.113.124.155:9098/Pedido/Estado");
                    var query = HttpUtility.ParseQueryString(uriBuilder.Query);
                    query["codigoCliente"] = codigoCliente;
                    query["vendedor"] = vendedor;
                    query["fechaPedido"] = fechaPedido;
                    query["despacho"] = despacho;
                    uriBuilder.Query = query.ToString();
                    var uri = uriBuilder.Uri;

                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);

                    HttpResponseMessage response = await client.GetAsync(uri);

                    return response.IsSuccessStatusCode;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Se produjo una excepción: {0}", ex.Message);
                throw new ApplicationException("ERROR: [" + ex.Message + "]" + (ex.InnerException != null ? " INNER: [" + ex.InnerException.Message + "]" : ""));
            }
        }

        private static async Task<HttpClientHandler> GetInsecureHandler()
        {
            HttpClientHandler handler = new HttpClientHandler();
            handler.ServerCertificateCustomValidationCallback = (message, cert, chain, errors) =>
            {
                if (cert.Issuer.Equals("CN=localhost"))
                    return true;
                return errors == System.Net.Security.SslPolicyErrors.None;
            };
            return handler;
        }
    }
}
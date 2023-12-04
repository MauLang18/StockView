using StockView.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http.Headers;

namespace StockView.Data
{
    public class Metodos
    {
        public static async Task<ObservableCollection<Articulo>> ObtenerArticulos(string desc, string token, string priv, string order)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9092/api/Articulo?desc={Uri.EscapeDataString(desc)}&priv={Uri.EscapeDataString(priv)}&order={Uri.EscapeDataString(order)}");

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


        public static async Task<string> Login(string username, string password)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri("http://190.113.124.155:9092/api/Auth/Login");

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
                            string token = apiResponse.Data; // Guardar el token en una variable para uso posterior
                            Console.WriteLine("Token: " + token);
                            return token;
                        }
                        else
                        {
                            string mensaje = apiResponse != null ? apiResponse.Message : "Error desconocido en la respuesta.";
                            //throw new ApplicationException(mensaje);
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

        public static async Task<RolsData> ObtenerRol(int id, string token)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9092/api/Rol/{Uri.EscapeDataString(id.ToString())}");

                    // Agregar el token a la cabecera de autorización
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
                    var uri = new Uri($"http://190.113.124.155:9092/api/Usuario/User?user={Uri.EscapeDataString(user)}");

                    // Agregar el token a la cabecera de autorización
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

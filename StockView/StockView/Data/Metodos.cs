using StockView.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace StockView.Data
{
    public class Metodos
    {
        public static async Task<ObservableCollection<Articulo>> ObtenerArticulos(string desc)
        {
            try
            {
                using (HttpClient client = new HttpClient(await GetInsecureHandler()))
                {
                    var uri = new Uri($"http://190.113.124.155:9090/api/Articulo?desc={Uri.EscapeDataString(desc)}");

                    HttpResponseMessage response = await client.GetAsync(uri);

                    string resultado = await response.Content.ReadAsStringAsync();
                    string mensaje = string.Empty;

                    if (response.IsSuccessStatusCode)
                    {
                        ApiResponse apiResponse = JsonConvert.DeserializeObject<ApiResponse>(resultado);
                        if (apiResponse != null && apiResponse.IsSuccess)
                        {
                            return new ObservableCollection<Articulo>(apiResponse.Data);
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

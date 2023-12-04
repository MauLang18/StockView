using StockView.Model;
using System;
using System.Globalization;
using System.Threading.Tasks;
using Xamarin.Essentials;

public class SecureStore
{
    private const string AuthTokenKey = "AuthToken";
    private const string ExpiryDateKey = "AuthTokenExpiry";
    private const string PrivKey = "Priv";

    public async Task StoreAuthTokenAsync(string token, DateTime expiryTime, string priv)
    {
        await SecureStorage.SetAsync(AuthTokenKey, token);
        await SecureStorage.SetAsync(ExpiryDateKey, expiryTime.ToString("O"));
        await SecureStorage.SetAsync(PrivKey, priv);
    }

    public async Task<string> ReadAuthTokenAsync()
    {
        string token = await SecureStorage.GetAsync(AuthTokenKey);
        if (string.IsNullOrEmpty(token))
        {
            return null;
        }

        return token;
    }

    public async Task<string> ReadRolAsync()
    {
        string token = await SecureStorage.GetAsync(PrivKey);
        if (string.IsNullOrEmpty(token))
        {
            return null;
        }

        return token;
    }

    public async Task<bool> IsAuthTokenExpiredAsync()
    {
        try
        {
            string expiryDateStr = await SecureStorage.GetAsync(ExpiryDateKey);
            if (string.IsNullOrEmpty(expiryDateStr))
            {
                // Si no se ha almacenado la fecha de expiración, consideramos que está expirado
                return true;
            }

            DateTime expiryTime = DateTime.Parse(expiryDateStr, null, DateTimeStyles.RoundtripKind);

            // Verificar si ha pasado más de 24 horas desde la fecha de almacenamiento
            return DateTime.UtcNow > expiryTime.AddHours(24);
        }
        catch (Exception ex)
        {
            // Manejar la excepción y devolver false en caso de error
            Console.WriteLine("Error al verificar la expiración del token: " + ex.Message);
            return false;
        }
    }

    public async Task DeleteAuthTokenIfExpiredAsync()
    {
        if (await IsAuthTokenExpiredAsync())
        {
            await DeleteAuthTokenAsync();
        }
    }

    public async Task DeleteAuthTokenAsync()
    {
        SecureStorage.Remove(AuthTokenKey);
        SecureStorage.Remove(ExpiryDateKey);
        SecureStorage.Remove(PrivKey);
    }

    public async Task DeletePrivAsync()
    {
        SecureStorage.Remove(PrivKey);
    }
}

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
    private const string UserKey = "User";
    private const string DrainsaKey = "Drainsa";
    private const string MotornovaKey = "Motornova";
    private const string DespachoKey = "Despacho";

    public async Task StoreAuthTokenAsync(string token, DateTime expiryTime, string priv, string user, string motornova, string drainsa, string despacho)
    {
        await SecureStorage.SetAsync(AuthTokenKey, token);
        await SecureStorage.SetAsync(ExpiryDateKey, expiryTime.ToString("O"));
        await SecureStorage.SetAsync(PrivKey, priv);
        await SecureStorage.SetAsync(UserKey, user);
        await SecureStorage.SetAsync(DrainsaKey, drainsa);
        await SecureStorage.SetAsync(MotornovaKey, motornova);
        await SecureStorage.SetAsync(DespachoKey, despacho);
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

    public async Task<string> ReadUserAsync()
    {
        string token = await SecureStorage.GetAsync(UserKey);
        if (string.IsNullOrEmpty(token))
        {
            return null;
        }

        return token;
    }

    public async Task<string> ReadDespachoAsync()
    {
        string token = await SecureStorage.GetAsync(DespachoKey);
        if (string.IsNullOrEmpty(token))
        {
            return null;
        }

        return token;
    }

    public async Task<string> ReadDrainsaAsync()
    {
        string token = await SecureStorage.GetAsync(DrainsaKey);
        if (string.IsNullOrEmpty(token))
        {
            return null;
        }

        return token;
    }

    public async Task<string> ReadMotornovaAsync()
    {
        string token = await SecureStorage.GetAsync(MotornovaKey);
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
        SecureStorage.Remove(UserKey);
        SecureStorage.Remove(DrainsaKey);
        SecureStorage.Remove(MotornovaKey);
        SecureStorage.Remove(DespachoKey);
    }

    public async Task DeletePrivAsync()
    {
        SecureStorage.Remove(PrivKey);
    }
}

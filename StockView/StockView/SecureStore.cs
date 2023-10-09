using System;
using System.Globalization;
using System.IdentityModel.Tokens.Jwt;
using System.Threading.Tasks;
using Xamarin.Essentials;

public class JwtTokenInfo
{
    public DateTime ExpiryTime { get; set; }
}

public class SecureStore
{
    private const string AuthTokenKey = "AuthToken";
    private const string AuthTokenDate = "AuthToken";

    public async Task StoreAuthTokenAsync(string token)
    {
        DateTime fechaGuardado = DateTime.Now;
        string fechaGuardadoString = fechaGuardado.ToString("o", CultureInfo.InvariantCulture);

        // Guardar el token y la fecha de almacenamiento
        await SecureStorage.SetAsync(AuthTokenKey, token);
        await SecureStorage.SetAsync(AuthTokenDate, fechaGuardadoString);
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

    public async Task<string> ReadDateTokeAsync()
    {
        string date = await SecureStorage.GetAsync(AuthTokenDate);
        if (string.IsNullOrEmpty(date))
        {
            return null;
        }

        return date;
    }

    public async Task<bool> IsAuthTokenExpiredAsync()
    {
        try
        {
            string token = await SecureStorage.GetAsync(AuthTokenKey);
            if (string.IsNullOrEmpty(token))
            {
                return true;
            }

            string date = await SecureStorage.GetAsync(AuthTokenKey);
            if (string.IsNullOrEmpty(date))
            {
                return true;
            }

            var handler = new JwtSecurityTokenHandler();
            var jsonToken = handler.ReadToken(token) as JwtSecurityToken;

            if (jsonToken == null || jsonToken.Payload == null || !jsonToken.Payload.ContainsKey("exp"))
            {
                return true;
            }

            var expiryTimeUnix = Convert.ToDouble(jsonToken.Payload["exp"]);
            var expiryTime = DateTimeOffset.FromUnixTimeSeconds((long)expiryTimeUnix).UtcDateTime;

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
            SecureStorage.Remove(AuthTokenKey);
        }   
    }

    public async Task Delete()
    {
        SecureStorage.Remove(AuthTokenKey);
        SecureStorage.Remove(AuthTokenDate);
    }
}

public class JwtTokenHelper
{
    public static JwtTokenInfo GetTokenInfo(string token)
    {
        var handler = new JwtSecurityTokenHandler();
        var jsonToken = handler.ReadToken(token) as JwtSecurityToken;

        if (jsonToken == null)
        {
            throw new ArgumentException("Invalid JWT token.");
        }   

        var expiryTimeUnix = jsonToken?.Payload?.Exp;
        if (expiryTimeUnix == null)
        {
            throw new ArgumentException("Token does not contain expiration information.");
        }  

        var expiryTime = DateTimeOffset.FromUnixTimeSeconds((long)expiryTimeUnix).UtcDateTime;

        return new JwtTokenInfo
        {
            ExpiryTime = expiryTime
        };
    }

    public static async Task DeleteTokenOnExpiry(string token)
    {
        JwtTokenInfo tokenInfo = GetTokenInfo(token);

        // Calcular el tiempo restante antes de la expiración del token
        TimeSpan tiempoRestante = tokenInfo.ExpiryTime - DateTime.UtcNow;

        // Eliminar el token del SecureStorage cuando expire
        await Task.Delay(tiempoRestante);
        SecureStorage.Remove("AuthToken");
    }
}

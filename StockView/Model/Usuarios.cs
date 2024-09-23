namespace StockView.Model
{
    public class Usuarios
    {
        public bool IsSuccess { get; set; }
        public UsuariosData Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }

    public class UsuariosData
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Pass { get; set; }
        public int Rol { get; set; }
        public string Despacho { get; set; }
    }
}

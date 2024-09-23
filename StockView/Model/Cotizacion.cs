namespace StockView.Model
{
    public class Cotizacion
    {
        public bool IsSuccess { get; set; }
        public CotizacionData Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }

    public class CotizacionData
    {
        public int Id { get; set; }
        public string CodigoCliente { get; set; }
        public string Cliente { get; set; }
        public string Vendedor { get; set; }
        public decimal Descuento { get; set; }
    }
}

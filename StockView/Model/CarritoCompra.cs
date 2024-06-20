using System.Collections.Generic;

namespace StockView.Model
{
    public class CarritoCompra
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public string Vendedor { get; set; }
        public int Cantidad { get; set; }
        public decimal Precio { get; set; }
    }

    public class ApiResponse3
    {
        public bool IsSuccess { get; set; }
        public List<CarritoCompra> Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }
}

using System.Collections.Generic;

namespace StockView.Model
{
    public class Articulo
    {
        public string Codigo { get; set; }
        public string CodigoProveedor { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public decimal CantidadBodega1 { get; set; }
        public decimal CantidadBodega2 { get; set; }
    }

    public class ApiResponse1
    {
        public bool IsSuccess { get; set; }
        public List<Articulo> Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }
}

using System.Collections.Generic;

namespace StockView.Model
{
    public class Clientes
    {
        public string Codigo { get; set; }
        public string Cliente { get; set; }
        public string Obser { get; set; }
    }
    public class ApiResponse4
    {
        public bool IsSuccess { get; set; }
        public List<Clientes> Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }

}

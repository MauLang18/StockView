using System;
using System.Collections.Generic;
using System.Text;

namespace StockView.Model
{
    public class Rols
    {
        public bool IsSuccess { get; set; }
        public RolsData Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }

    public class RolsData
    {
        public int Id { get; set; }
        public string Rol { get; set; }
        public string Privilegios { get; set; }
        public int Drainsa { get; set; }
        public int Motornova { get; set; }
        public string EstadoDrainsa { get; set; }
        public string EstadoMotornova { get; set; }
    }
}

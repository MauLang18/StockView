using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace StockView.Model
{
    public class Pedido
    {
        public int Id { get; set; }
        public string CodigoArticulo { get; set; }
        public string Articulo { get; set; }
        public string CodigoCliente { get; set; }
        public string Cliente { get; set; }
        public string Vendedor { get; set; }
        public int Cantidad { get; set; }
        public DateTime FechaPedido { get; set; }
        public string Observacion { get; set; }
        private int _EstadoPedido { get; set; }
        private string _EstadoTexto { get; set; }
        public int EstadoPedido
        {
            get { return _EstadoPedido; }
            set
            {
                _EstadoPedido = value;

                switch (_EstadoPedido)
                {
                    case 0:
                        _EstadoTexto = "En proceso";
                        break;

                    case 1:
                        _EstadoTexto = "Aprobado";
                        break;

                    case 2:
                        _EstadoTexto = "Rechazado";
                        break;

                    default:
                        _EstadoTexto = "Desconocido";
                        break;
                }

                OnPropertyChanged(nameof(EstadoPedido));
                OnPropertyChanged(nameof(EstadoTexto));
            }
        }

        public string EstadoTexto
        {
            get { return _EstadoTexto; }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }

    public class ApiResponse5
    {
        public bool IsSuccess { get; set; }
        public List<Pedido> Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }
}

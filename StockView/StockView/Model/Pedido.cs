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
                // Redondea el valor a dos decimales después de la coma
                _EstadoPedido = value;

                // Asigna el estado correspondiente basado en el valor
                switch (_EstadoPedido)
                {
                    case 0:
                        // Estado: En proceso
                        _EstadoTexto = "En proceso";
                        break;

                    case 1:
                        // Estado: Aprobado
                        _EstadoTexto = "Aprobado";
                        break;

                    case 2:
                        // Estado: Rechazado
                        _EstadoTexto = "Rechazado";
                        break;

                    default:
                        // Otro caso, puedes asignar un valor predeterminado o lanzar una excepción si lo prefieres
                        _EstadoTexto = "Desconocido";
                        break;
                }

                // Notifica que la propiedad EstadoPedido ha cambiado
                OnPropertyChanged(nameof(EstadoPedido));
                // Notifica que la propiedad EstadoTexto también ha cambiado
                OnPropertyChanged(nameof(EstadoTexto));
            }
        }

        public string EstadoTexto
        {
            get { return _EstadoTexto; }
            // No necesitas un set explícito ya que el valor se asigna en el set de EstadoPedido
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

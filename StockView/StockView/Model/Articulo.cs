﻿using System.Collections.Generic;
using System.ComponentModel;

namespace StockView.Model
{
    public class Articulo : INotifyPropertyChanged
    {
        public string Codigo { get; set; }
        public string CodigoProveedor { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public decimal CantidadBodega1 { get; set; }
        public decimal CantidadBodega2 { get; set; }

        private int _count;
        public int Count
        {
            get { return _count; }
            set
            {
                if (_count != value)
                {
                    _count = value;
                    OnPropertyChanged(nameof(Count));
                }
            }
        }

        private bool _IsCarrito = false;
        public string CarritoIcon => IsCarrito ? "inCart.png" : "addCart.png";

        public bool IsCarrito
        {
            get { return _IsCarrito; }
            set
            {
                if (_IsCarrito != value)
                {
                    _IsCarrito = value;
                    OnPropertyChanged(nameof(IsCarrito));
                    OnPropertyChanged(nameof(CarritoIcon));
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public class ApiResponse1
    {
        public bool IsSuccess { get; set; }
        public List<Articulo> Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }
}

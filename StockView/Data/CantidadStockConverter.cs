using System;
using System.Globalization;
using Xamarin.Forms;

namespace StockView.Data
{
    public class CantidadStockConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is decimal cantidad)
            {
                cantidad = Math.Round(cantidad, 2);

                if (cantidad <= 0)
                {
                    return "No hay Stock";
                }
                else if (cantidad <= 10)
                {
                    return $"Quedan {cantidad.ToString("0.00", CultureInfo.InvariantCulture)}";
                }
                else
                {
                    return "En Stock";
                }
            }

            return "Valor no válido";
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}

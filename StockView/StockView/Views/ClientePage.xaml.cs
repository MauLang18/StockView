using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace StockView.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ClientePage : ContentPage
	{
		public ClientePage ()
		{
			InitializeComponent ();
		}

        public event EventHandler<string> OKClicked;
    }
}
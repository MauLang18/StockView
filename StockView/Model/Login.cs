using System.Collections.Generic;

namespace StockView.Model
{
    public class Login
    {
        public string Username {  get; set; }
        public string Pass { get; set; }
    }

    public class ApiResponse2
    {
        public bool IsSuccess { get; set; }
        public string Data { get; set; }
        public string Message { get; set; }
        public object Errors { get; set; }
    }
}

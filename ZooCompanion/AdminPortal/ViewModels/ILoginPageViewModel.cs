using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace AdminPortal.ViewModels
{
    public interface ILoginPageViewModel
    {
        string Username { get; set; }
        string Password { get; set; }
        string Status { get; }
        ICommand LoginCommand { get; }
    }
}

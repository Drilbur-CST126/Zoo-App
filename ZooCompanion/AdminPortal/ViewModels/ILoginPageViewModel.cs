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
        //Password is not here because password cannot be set up w/ MVVM & it's unsafe to store it locally at all.
        string Status { get; }
        ICommand LoginCommand { get; }
    }
}

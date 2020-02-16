using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using AdminPortal.Components;

namespace AdminPortal.ViewModels
{
    public class LoginPageViewModel : ViewModelNotifyPropertyChanged, ILoginPageViewModel
    {
        public LoginPageViewModel()
        {
            LoginCommand = new Command(Login, CanLogin);
        }

        private void Login(object o)
        {
            //throw new NotImplementedException();
            if (o is Window window && true) // TODO: Replace w/ actual check
            {
                var portalWindow = new PortalWindow();
                portalWindow.Show();
                window.Close();
            }
        }

        private bool CanLogin(object o)
        {
            return !string.IsNullOrEmpty(Username) && o is MainWindow window && !string.IsNullOrEmpty(window.txtPassword.Password);
        }

        private string _username;
        public string Username
        {
            get => _username;
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }

        private string _status;
        public string Status
        {
            get => _status;
            set
            {
                _status = value;
                OnPropertyChanged(nameof(Status));
            }
        }
        public ICommand LoginCommand { get; }
    }
}

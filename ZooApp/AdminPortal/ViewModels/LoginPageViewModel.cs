using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using AdminPortal.Components;
using AdminPortal.Models.BusinessLogic;

namespace AdminPortal.ViewModels
{
    public class LoginPageViewModel
    {
        private readonly IHomeBusinessLogic HomeBusinessLogic;

        // Error and success shuffled out into function ptrs because backend tests cannot show UI
        private readonly Action<string> showError;

        public LoginPageViewModel(IHomeBusinessLogic homeBusinessLogic)
        {
            HomeBusinessLogic = homeBusinessLogic;
            showError = (str) => { MessageBox.Show(str, "Fail", MessageBoxButton.OK, MessageBoxImage.Error); };
        }

        public LoginPageViewModel(IHomeBusinessLogic homeBusinessLogic, Action<string> error)
        {
            HomeBusinessLogic = homeBusinessLogic;
            showError = error;
        }

        public bool Login(string username, string password)
        {
            // Verification.  
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                // Display Message  
                showError("This field can not be empty. Please enter username and password");
                // Info  
                return false;
            }

            // Check username and password
            if (HomeBusinessLogic.CheckAdminCredentials(username, password))
            {
                return true;
            }
            else
            {
                // Display Message
                showError("Login has failed!");
                return false;
            }
        }
    }
}

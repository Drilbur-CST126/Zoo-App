using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using AdminPortal.Annotations;
using AdminPortal.Models;
using AdminPortal.Models.BusinessLogic;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;

namespace AdminPortal.ViewModels
{
    public class PortalWindowViewModel
    {
        private readonly IHomeBusinessLogic HomeBusinessLogic;

        // Error and success shuffled out into function ptrs because backend tests cannot show UI
        private readonly Action<string> showError;
        private readonly Action<string> showSuccess;

        public PortalWindowViewModel([NotNull] IHomeBusinessLogic homeBusinessLogic)
        {
            HomeBusinessLogic = homeBusinessLogic;
            showError = (str) => { MessageBox.Show(str, "Fail", MessageBoxButton.OK, MessageBoxImage.Error); };
            showSuccess = (str) => { MessageBox.Show(str, "Success!", MessageBoxButton.OK, MessageBoxImage.Information); };
        }

        public PortalWindowViewModel([NotNull] IHomeBusinessLogic homeBusinessLogic, Action<string> error, Action<string> success)
        {
            HomeBusinessLogic = homeBusinessLogic;
            showError = error;
            showSuccess = success;
        }

        public bool AddNewAdmin(Admin profile, string password, string confirm_email, string confirm_password)
        {
            var username = profile.Username;
            var firstname = profile.FirstName;
            var lastname = profile.LastName;
            var email = profile.Email;

            // Verification.
            // Check if null or empty
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(firstname) ||
                string.IsNullOrEmpty(lastname) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(confirm_email) || string.IsNullOrEmpty(password) ||
                string.IsNullOrEmpty(confirm_password))
            {
                // Display Message  
                showError("Please complete all fields.");
                // Info  
                return false;
            }

            // check if emails match
            if (email != confirm_email)
            {
                // Display Message  
                showError("Emails do not match. Please try again.");

                // Info  
                return false;
            }

            // check if passwords match
            if (password != confirm_password)
            {
                // Display Message  
                showError("Passwords do not match. Please try again.");

                // Info  
                return false;
            }

            // check if username already exists
            if (HomeBusinessLogic.CheckUsernameExists(username))
            {
                // Display Message  
                showError("Username already exists. Please try again.");

                // Info  
                return false;
            }
            else
            {
                if (HomeBusinessLogic.AddNewAdmin(username, firstname, lastname, email, password))
                {
                    // Display Message  
                    showSuccess("New admin added.");

                    return true;
                }
                else
                {
                    // Display Message  
                    showError("Something went wrong! Please try again.");

                    return false;
                }
            }
        }
    }
}

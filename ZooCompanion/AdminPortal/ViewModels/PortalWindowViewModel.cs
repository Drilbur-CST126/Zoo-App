using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using AdminPortal.Models;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;

namespace AdminPortal.ViewModels
{
    class PortalWindowViewModel
    {
        private int adminId = 0;

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
                MessageBox.Show("Please complete all fields.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                // Info  
                return false;
            }

            // check if emails match
            if (email != confirm_email)
            {
                // Display Message  
                MessageBox.Show("Emails do not match. Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                // Info  
                return false;
            }

            // check if passwords match
            if (password != confirm_password)
            {
                // Display Message  
                MessageBox.Show("Passwords do not match. Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                // Info  
                return false;
            }

            // check if username already exists
            if (HomeBusinessLogic.CheckUsernameExists(username))
            {
                // Display Message  
                MessageBox.Show("Username already exists. Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                // Info  
                return false;
            }
            else
            {
                if (HomeBusinessLogic.AddNewAdmin(username, firstname, lastname, email, password))
                {
                    // Display Message  
                    MessageBox.Show("New admin added.", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);
                    
                    return true;
                }
                else
                {
                    // Display Message  
                    MessageBox.Show("Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                    return false;
                }
            }
        }
    }
}

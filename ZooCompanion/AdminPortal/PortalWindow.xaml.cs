using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using AdminPortal.HelperCode.Common;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;
using AdminPortal.Models;

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for PortalWindow.xaml
    /// </summary>
    public partial class PortalWindow : Window
    {
        private int adminId = 0;

        public PortalWindow()
        {
            InitializeComponent();
            tblAdminListing.DataContext = HomeBusinessLogic.GetAdmins();
        }

        // TODO: add admin edit feature
        // TODO: add admin delete feature
        // TODO: hashed passwords?

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnAddNewAdmin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Initialization.  
                string username = this.txtUsername.Text;
                string firstname = this.txtFirstName.Text;
                string lastname = this.txtLastName.Text;
                string email = this.txtEmail.Text;
                string confirm_email = this.txtConfirmEmail.Text;
                string password = this.txtPassword.Password;
                string confirm_password = this.txtConfirmPassword.Password;

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
                    return;
                }

                // check if emails match
                if (email != confirm_email)
                {
                    // Display Message  
                    MessageBox.Show("Emails do not match. Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                    // Info  
                    return;
                }

                // check if passwords match
                if (password != confirm_password)
                {
                    // Display Message  
                    MessageBox.Show("Passwords do not match. Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                    // Info  
                    return;
                }

                // check if username already exists
                if (HomeBusinessLogic.CheckUsernameExists(username))
                {
                    // Display Message  
                    MessageBox.Show("Username already exists. Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                    // Info  
                    return;
                }
                else
                {
                    if(HomeBusinessLogic.AddNewAdmin(username, firstname, lastname, email, password))
                    {
                        // Display Message  
                        MessageBox.Show("New admin added.", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);
                        txtUsername.Clear();
                        txtFirstName.Clear();
                        txtLastName.Clear();
                        txtEmail.Clear();
                        txtConfirmEmail.Clear();
                        txtPassword.Clear();
                        txtConfirmPassword.Clear();
                        // Refresh AdminListing
                        tblAdminListing.DataContext = HomeBusinessLogic.GetAdmins();
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something goes wrong, Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            { 
                if (adminId == 0)
                {
                    MessageBox.Show("Please select an item from the list.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    // Execution.
                    if (HomeBusinessLogic.DeleteAdmin(adminId))
                    {
                        // Display Message  
                        MessageBox.Show("Admin deleted.", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);
                        return;
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Could not delete admin! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong! Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void tblAdminListing_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                ListedAdmin admin = tblAdminListing.SelectedItem as ListedAdmin;
                adminId = admin.AdminId;
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong! Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}

using AdminPortal.Models;
using System;
using System.Collections.Generic;
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
using AdminPortal.Models.BusinessLogic.HelperCode.Common;
using AdminPortal.Models.BusinessLogic;
using AdminPortal.ViewModels;


namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for AddEditAdmin.xaml
    /// </summary>
    public partial class AddEditAdmin : Window
    {
        public AddEditAdmin()
        {
            InitializeComponent();
        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var admin = new Admin
                {
                    Username = this.txtUsername.Text,
                    FirstName = this.txtFirstName.Text,
                    LastName = this.txtLastName.Text,
                    Email = this.txtEmail.Text
                };
                // Initialization.  
                string confirm_email = this.txtConfirmEmail.Text;
                string password = this.txtPassword.Password;
                string confirm_password = this.txtConfirmPassword.Password;

                //var successful = HomeBusinessLogic.AddNewAdmin(admin, password, confirm_email, confirm_password);
                //if (!successful) return;

                txtUsername.Clear();
                txtFirstName.Clear();
                txtLastName.Clear();
                txtEmail.Clear();
                txtConfirmEmail.Clear();
                txtPassword.Clear();
                txtConfirmPassword.Clear();
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something goes wrong, Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
    }
}

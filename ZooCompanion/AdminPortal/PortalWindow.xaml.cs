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
using AdminPortal.Models.BusinessLogic;
using AdminPortal.ViewModels;

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for PortalWindow.xaml
    /// </summary>
    public partial class PortalWindow : Window
    {
        private PortalWindowViewModel viewModel;
        private readonly IHomeBusinessLogic HomeBusinessLogic;
        private int adminId = 0;

        public PortalWindow()
        {
            HomeBusinessLogic = new HomeBusinessLogic();
            InitializeComponent();
            tblAdminListing.DataContext = HomeBusinessLogic.GetAdmins();
            viewModel = new PortalWindowViewModel(HomeBusinessLogic);
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

                var successful = viewModel.AddNewAdmin(admin, password, confirm_email, confirm_password);
                if (!successful) return;

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
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something goes wrong, Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }


        // Delete implementation
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
                        // tblAdminListing.SelectedIndex = 0;
                        tblAdminListing.DataContext = HomeBusinessLogic.GetAdmins();
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
                object item = tblAdminListing.SelectedItem;
                if (item == null)
                {
                    adminId = 0;
                }
                else
                {
                    string ID = (tblAdminListing.SelectedCells[0].Column.GetCellContent(item) as TextBlock).Text;
                    adminId = Convert.ToInt32(ID);
                }
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

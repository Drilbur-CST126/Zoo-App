﻿using System;
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
using AdminPortal.ViewModels;

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for PortalWindow.xaml
    /// </summary>
    public partial class PortalWindow : Window
    {
        private int adminId = 0;
        private PortalWindowViewModel viewModel;

        public PortalWindow()
        {
            InitializeComponent();
            tblAdminListing.DataContext = HomeBusinessLogic.GetAdmins();
            viewModel = new PortalWindowViewModel();
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

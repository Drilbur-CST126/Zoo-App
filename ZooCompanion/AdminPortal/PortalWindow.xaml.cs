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
        private int exhibitId = 0;

        public PortalWindow()
        {
            HomeBusinessLogic = new HomeBusinessLogic();
            InitializeComponent();
            tblAdminListing.DataContext = HomeBusinessLogic.GetAdmins();
            tblExhibitListing.DataContext = HomeBusinessLogic.GetExhibits();
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
            // Open Add Admin Window
            AddEditAdmin form = new AddEditAdmin();
            form.Show();

            // Close this window
            this.Close();
        }


        // Delete implementation
        private void btnDeleteAdmin_Click(object sender, RoutedEventArgs e)
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

        private void tblExhibitListing_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                object item = tblExhibitListing.SelectedItem;
                if (item == null)
                {
                    exhibitId = 0;
                }
                else
                {
                    string ID = (tblExhibitListing.SelectedCells[0].Column.GetCellContent(item) as TextBlock).Text;
                    exhibitId = Convert.ToInt32(ID);
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong! Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnDeleteExhibit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (exhibitId == 0)
                {
                    MessageBox.Show("Please select an item from the list.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    // Execution.
                    if (HomeBusinessLogic.DeleteExhibit(exhibitId))
                    {
                        // Display Message  
                        MessageBox.Show("Exhibit deleted.", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);
                        // tblAdminListing.SelectedIndex = 0;
                        tblExhibitListing.DataContext = HomeBusinessLogic.GetExhibits();
                        return;
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Could not delete exhibit! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void btnAddNewExhibit_Click(object sender, RoutedEventArgs e)
        {
            // Open Add Exhibit Window
            AddEditExhibit form = new AddEditExhibit();
            form.Show();


            // Close this window
            this.Close();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (exhibitId == 0)
                {
                    MessageBox.Show("Please select an item from the list.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    // Execution.
                    if (exhibitId != 0)
                    {
                        // Get info from Exhibit
                        ListedExhibit exhibit = HomeBusinessLogic.GetExhibit(exhibitId);

                        // Open AddEditExhibit with exhibit info
                        AddEditExhibit editExhibit = new AddEditExhibit(exhibit);
                        editExhibit.Show();

                        // Close this window
                        this.Close();
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Could not edit exhibit! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
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
    }
}

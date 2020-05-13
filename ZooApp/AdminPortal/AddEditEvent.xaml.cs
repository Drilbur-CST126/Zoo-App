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
    /// Interaction logic for AddEditEvent.xaml
    /// </summary>
    public partial class AddEditEvent : Window
    {
        HomeBusinessLogic HomeBusinessLogic = new HomeBusinessLogic();
        AddEditEventViewModel AddEditEventViewModel = new AddEditEventViewModel();

        private int detailId = 0;

        public AddEditEvent()
        {
            InitializeComponent();
            btnSubmitEdit.IsEnabled = false;
            btnSubmit.IsEnabled = true;
        }

        public AddEditEvent(Event @event)
        {
            InitializeComponent();
            tblDetailListing.DataContext = HomeBusinessLogic.GetEventDetails(@event);
            ttlAddEditEvent.Title = "Edit Event";
            txtEventID.Text = @event.EventID.ToString();
            txtEventTitle.Text = @event.Title.ToString();
            btnSubmit.IsEnabled = false;
            btnSubmitEdit.IsEnabled = true;
        }

        private void tblDetailListing_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                object item = tblDetailListing.SelectedItem;
                if (item == null)
                {
                    detailId = 0;
                }
                else
                {
                    string ID = (tblDetailListing.SelectedCells[0].Column.GetCellContent(item) as TextBlock).Text;
                    detailId = Convert.ToInt32(ID);
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong! Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            // Open Portal window
            PortalWindow portal = new PortalWindow();
            portal.Show();

            // Close this window
            this.Close();
        }

        private void btnAddDetail_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                string title = txtEventTitle.Text.ToString();

                // check for apostrophes and add one before they go into the query
                title = title.Replace("'", "''");

                // Verification.
                // Check if null or empty
                if (string.IsNullOrEmpty(title))
                {
                    // Display Message  
                    MessageBox.Show("Please give the Event a name.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                    ;
                }
                else
                {
                    if (HomeBusinessLogic.AddNewEvent(title))
                    {
                        // Open Detail window
                        AddEditDetail addEditDetail = new AddEditDetail();
                        addEditDetail.Show();

                        // Close this window
                        this.Close();
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void btnEditDetail_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (detailId == 0)
                {
                    MessageBox.Show("Please select an item from the list.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    // Execution.
                    if (detailId != 0)
                    {
                        // Get info from Exhibit
                        Detail detail = HomeBusinessLogic.GetDetail(detailId);

                        // Open AddEditExhibit with exhibit info
                        AddEditDetail editDetail = new AddEditDetail(detail);
                        editDetail.Show();

                        // Close this window
                        this.Close();
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Could not edit detail! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {

                Event @event = new Event { EventID = 0, Title = txtEventTitle.Text };
                string title = txtEventTitle.Text;
                bool successful = AddEditEventViewModel.AddNewEvent(@event);
                if (!successful) return;

            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong! Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

            }
        }

        private void btnSubmitEdit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int eventId = Convert.ToInt32(txtEventID.Text);
                string title = txtEventTitle.Text;

                // check for apostrophes and add one before they go into the query
                title = title.Replace("'", "''");

                // Verification.
                // Check if null or empty
                if (string.IsNullOrEmpty(title))
                {
                    // Display Message  
                    MessageBox.Show("Please give the Event a name.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    if (HomeBusinessLogic.EditEvent(eventId, title))
                    {
                        // Display Message  
                        MessageBox.Show("Event updated.", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
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

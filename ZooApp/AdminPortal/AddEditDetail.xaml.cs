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
using AdminPortal.Models;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;
using AdminPortal.ViewModels;

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for AddEditDetail.xaml
    /// </summary>
    public partial class AddEditDetail : Window
    {
        HomeBusinessLogic HomeBusinessLogic = new HomeBusinessLogic();
        AddEditDetailViewModel AddEditDetailViewModel = new AddEditDetailViewModel();
        int eId = 0;

        public AddEditDetail()
        {
            InitializeComponent();
            btnSubmitEdit.IsEnabled = false;
            btnSubmit.IsEnabled = true;
        }

        public AddEditDetail(int eventId)
        {
            InitializeComponent();
            eId = eventId;
            btnSubmitEdit.IsEnabled = false;
            btnSubmit.IsEnabled = true;
        }

        public AddEditDetail(Detail detail)
        {
            InitializeComponent();
            eId = detail.EventID;
            ttlAddEditDetail.Title = "Edit Event";
            txtDetailID.Text = detail.DetailID.ToString();
            dpkDate.SelectedDate = detail.Date;
            txtTime.Text = detail.Time.ToString();
            txtDuration.Text = detail.Duration.ToString();
            txtDetailDescription.Text = detail.Description.ToString();
            btnSubmit.IsEnabled = false;
            btnSubmitEdit.IsEnabled = true;
        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                DateTime date = (DateTime)dpkDate.SelectedDate;
                string time = txtTime.Text;
                string duration = txtDuration.Text;
                string description = txtDetailDescription.Text;

                // check for apostrophes and add one before they go into the query
                description = description.Replace("'", "''");

                // Verification
                bool successful = AddEditDetailViewModel.AddNewDetail(date, time, duration, description);
                
                if (!successful)
                {
                    MessageBox.Show("Please review the form! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    Detail detail = new Detail();
                    detail.DetailID = 0;
                    if (eId == 0)
                    {
                        detail.EventID = HomeBusinessLogic.LastEventId();
                    }
                    else
                    {
                        detail.EventID = eId;
                    }
                    detail.Date = date;
                    detail.Time = time;
                    detail.Duration = Convert.ToDecimal(duration);
                    detail.Description = description;

                    if (HomeBusinessLogic.AddNewDetail(detail))
                    {
                        // Display Message  
                        MessageBox.Show("New detail added.", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Detail not added. Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong with detail submission! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Event @event = new Event();

            if (eId != 0)
            {
                @event = HomeBusinessLogic.GetEvent(eId);
            }
            else
            {
                @event = HomeBusinessLogic.GetEvent(HomeBusinessLogic.LastEventId());
            }

            // Open Event window
            AddEditEvent addEditEvent = new AddEditEvent(@event);
            addEditEvent.Show();

            // Close this window
            this.Close();
        }

        private void btnSubmitEdit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string detailId = txtDetailID.Text;
                DateTime date = (DateTime)dpkDate.SelectedDate;
                string time = txtTime.Text;
                string duration = txtDuration.Text;
                string description = txtDetailDescription.Text;

                // check for apostrophes and add one before they go into the query
                description = description.Replace("'", "''");

                // Verification
                bool successful = AddEditDetailViewModel.AddNewDetail(date, time, duration, description);

                if (!successful)
                {
                    MessageBox.Show("Please review the form! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    if (HomeBusinessLogic.EditDetail(detailId, date, time, duration, description))
                    {
                        // Display Message  
                        MessageBox.Show("Detail changes saved.", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Detail changes not saved. Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something went wrong with detail submission! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }
    }
}

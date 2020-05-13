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

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for AddEditDetail.xaml
    /// </summary>
    public partial class AddEditDetail : Window
    {
        public AddEditDetail()
        {
            InitializeComponent();
            btnSubmitEdit.IsEnabled = false;
            btnSubmit.IsEnabled = true;
        }

        public AddEditDetail(Detail detail)
        {
            InitializeComponent();
            ttlAddEditDetail.Title = "Edit Event";
            txtDetailID.Text = detail.DetailID.ToString();
            dpkDate.SelectedDate = detail.Date;
            txtTime.Text = detail.Time.ToString();
            txtDetailDescription.Text = detail.Description.ToString();
            btnSubmit.IsEnabled = false;
            btnSubmitEdit.IsEnabled = true;
        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
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
                        // Display Message  
                        MessageBox.Show("New event added.", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        // Display Message  
                        MessageBox.Show("Something went wrong! Please try again.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }

            }
    }
}

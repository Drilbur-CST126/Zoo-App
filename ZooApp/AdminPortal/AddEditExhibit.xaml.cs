using AdminPortal.Models;
using AdminPortal.ViewModels;
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

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for AddEditExhibit.xaml
    /// </summary>
    public partial class AddEditExhibit : Window
    {
        AddEditExhibitViewModel AddEditExhibitViewModel = new AddEditExhibitViewModel();

        public AddEditExhibit()
        {
            InitializeComponent();
            btnSubmitEdit.IsEnabled = false;
            btnSubmit.IsEnabled = true;
        }
        public AddEditExhibit(ListedExhibit exhibit)
        {
            InitializeComponent();
            ttlAddEditExhibit.Title = "Edit Exhibit";
            txtExhibitID.Text = exhibit.ExhibitId.ToString();
            txtExhibitName.Text = exhibit.Name.ToString();
            txtExhibitDescription.Text = exhibit.Description.ToString();
            btnSubmit.IsEnabled = false;
            btnSubmitEdit.IsEnabled = true;
        }

        private void btnSubmit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var exhibit = new Exhibit
                {
                    Name = this.txtExhibitName.Text,
                    Description = this.txtExhibitDescription.Text
                };

                var successful = AddEditExhibitViewModel.AddNewExhibit(exhibit);
                if (!successful) return;

                txtExhibitName.Clear();
                txtExhibitDescription.Clear();

            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something goes wrong, Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnSubmitEdit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var exhibit = new ListedExhibit
                {
                    ExhibitId = Convert.ToInt32(this.txtExhibitID.Text),
                    Name = this.txtExhibitName.Text,
                    Description = this.txtExhibitDescription.Text
                };

                var successful = AddEditExhibitViewModel.EditExhibit(exhibit);
                if (!successful) return;

            }
            catch (Exception ex)
            {
                Console.Write(ex);

                // Display Message  
                MessageBox.Show("Something goes wrong, Please try again later.", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);
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
    }
}

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
using System.Windows.Navigation;
using System.Windows.Shapes;
using AdminPortal.ViewModels;
using AdminPortal.HelperCode.Common;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            //ViewModel = new LoginPageViewModel();
            //DataContext = ViewModel;
            InitializeComponent();
        }

        //public ILoginPageViewModel ViewModel { get; }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Initialization.  
                string username = this.txtUsername.Text;
                string password = this.txtPassword.Password;

                // Verification.  
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                {
                    // Display Message  
                    MessageBox.Show("This field can not be empty. Please enter username and password", "Fail", MessageBoxButton.OK, MessageBoxImage.Error);

                    // Info  
                    return;
                }

                // Check username and password
                if (HomeBusinessLogic.CheckAdminCredentials(username, password))
                {
                    // Display Message
                    // MessageBox.Show("Login Successful!", "Success!", MessageBoxButton.OK, MessageBoxImage.Information);
                    // Clear credentials
                    txtUsername.Clear();
                    txtPassword.Clear();

                    // Open admin portal window
                    PortalWindow portal = new PortalWindow();
                    portal.Show();
                }
                else
                {
                    // Display Message
                    MessageBox.Show("Login has failed!", "Login Failed", MessageBoxButton.OK, MessageBoxImage.Information);
                    return;
                }

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

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

namespace AdminPortal
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            ViewModel = new LoginPageViewModel();
            DataContext = ViewModel;
            InitializeComponent();
        }

<<<<<<< HEAD
        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
=======
        public ILoginPageViewModel ViewModel { get; }
>>>>>>> 0db5699ca4336a640f04392a571d3996193ccbe1
    }
}

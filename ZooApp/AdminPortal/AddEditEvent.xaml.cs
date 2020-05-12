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
        //AddEditEventViewModel AddEditExhibitViewModel = new AddEditEventViewModel();

        public AddEditEvent()
        {
            InitializeComponent();
        }

        public AddEditEvent(int eventId)
        {
            InitializeComponent();
            //tblDetailListing.DataContext = HomeBusinessLogic.GetEventDetails(eventId);
        }

        private void tblDetailListing_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}

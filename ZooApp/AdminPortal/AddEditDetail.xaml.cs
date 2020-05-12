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
    }
}

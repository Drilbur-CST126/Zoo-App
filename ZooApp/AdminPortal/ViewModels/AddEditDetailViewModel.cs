using AdminPortal.Models.BusinessLogic.HelperCode.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using AdminPortal.Models;

namespace AdminPortal.ViewModels
{
    class AddEditDetailViewModel
    {
        HomeBusinessLogic HomeBusinessLogic = new HomeBusinessLogic();

        public bool IsValidTimeFormat(string input)
        {
            return TimeSpan.TryParse(input, out var dummyOutput);
        }

        public bool AddNewDetail(DateTime date, string time, string duration, string description)
        {
            // Verification.
            // Check if null or empty
            Decimal d;

            if (string.IsNullOrEmpty(Convert.ToString(date)))
            {
                // Display Message  
                MessageBox.Show("Please pick a date.");
                // Info  
                return false;
            }
            if (string.IsNullOrEmpty(time) || IsValidTimeFormat(time))
            {
                // Display Message  
                MessageBox.Show("Please enter a valid time.");
                // Info  
                return false;
            }
            if (string.IsNullOrEmpty(description))
            {
                // Display Message  
                MessageBox.Show("Please enter a description.");
                // Info  
                return false;
            }
            if (!Decimal.TryParse(duration, out d) || Convert.ToDecimal(duration) < 0)
            {
                // Display Message  
                MessageBox.Show("Please enter a valid duration time.");
                // Info  
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}

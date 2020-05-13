using AdminPortal.Models;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace AdminPortal.ViewModels
{
    class AddEditEventViewModel
    {
        HomeBusinessLogic HomeBusinessLogic = new HomeBusinessLogic();

        public bool AddNewEvent(Event @event)
        {
            string title = @event.Title;

            // check for apostrophes and add one before they go into the query
            title = title.Replace("'", "''");

            // Verification.
            // Check if null or empty
            if (string.IsNullOrEmpty(title))
            {
                // Display Message  
                MessageBox.Show("Please give the Event a name.");
                // Info  
                return false;
            }
            else
            {
                if (HomeBusinessLogic.AddNewEvent(title))
                {
                    // Display Message  
                    MessageBox.Show("New event added.");

                    return true;
                }
                else
                {
                    // Display Message  
                    MessageBox.Show("Something went wrong! Please try again.");

                    return false;
                }
            }
        }

        public bool EditEvent(Event @event)
        {
            int eventId = @event.EventID;
            string title = @event.Title;

            // check for apostrophes and add one before they go into the query
            title = title.Replace("'", "''");

            // Verification.
            // Check if null or empty
            if (string.IsNullOrEmpty(title))
            {
                // Display Message  
                MessageBox.Show("Please give the Event a name.");
                // Info  
                return false;
            }
            else
            {
                if (HomeBusinessLogic.EditEvent(eventId, title))
                {
                    // Display Message  
                    MessageBox.Show("Event updated.");

                    return true;
                }
                else
                {
                    // Display Message  
                    MessageBox.Show("Something went wrong! Please try again.");

                    return false;
                }
            }
        }
    }
}

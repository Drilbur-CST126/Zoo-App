using System.Windows;
using AdminPortal.Models;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;

namespace AdminPortal.ViewModels
{
    class AddEditExhibitViewModel
    {
        HomeBusinessLogic HomeBusinessLogic = new HomeBusinessLogic();

        public bool AddNewExhibit(Exhibit exhibit)
        {
            var name = exhibit.Name;
            var description = exhibit.Description;

            // Verification.
            // Check if null or empty
            if (string.IsNullOrEmpty(name))
            {
                // Display Message  
                MessageBox.Show("Please give the Exhibit a name.");
                // Info  
                return false;
            }

            // check if name already exists
            if (HomeBusinessLogic.CheckExhibitExists(name))
            {
                // Display Message  
                MessageBox.Show("Exhibit name already exists. Please try again.");

                // Info  
                return false;
            }
            else
            {
                if (HomeBusinessLogic.AddNewExhibit(name, description))
                {
                    // Display Message  
                    MessageBox.Show("New exhibit added.");

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

        public bool EditExhibit(ListedExhibit exhibit)
        {
            var exhibitId = exhibit.ExhibitId;
            var name = exhibit.Name;
            var description = exhibit.Description;

            // Verification.
            // Check if null or empty
            if (string.IsNullOrEmpty(name))
            {
                // Display Message  
                MessageBox.Show("Please give the Exhibit a name.");
                // Info  
                return false;
            }

            // check if name already exists
            if (HomeBusinessLogic.CheckExhibitExists(name))
            {
                // Display Message  
                MessageBox.Show("Exhibit name already exists. Please try again.");

                // Info  
                return false;
            }
            else
            {
                if (HomeBusinessLogic.EditExhibit(exhibitId, name, description))
                {
                    // Display Message  
                    MessageBox.Show("Exhibit updated.");

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

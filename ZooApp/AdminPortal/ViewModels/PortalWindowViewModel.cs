using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using AdminPortal.Annotations;
using AdminPortal.Models;
using AdminPortal.Models.BusinessLogic;
using AdminPortal.Models.BusinessLogic.HelperCode.Common;

namespace AdminPortal.ViewModels
{
    public class PortalWindowViewModel
    {
        private readonly IHomeBusinessLogic HomeBusinessLogic;

        // Error and success shuffled out into function ptrs because backend tests cannot show UI
        private readonly Action<string> showError;
        private readonly Action<string> showSuccess;

        public PortalWindowViewModel([NotNull] IHomeBusinessLogic homeBusinessLogic)
        {
            HomeBusinessLogic = homeBusinessLogic;
            showError = (str) => { MessageBox.Show(str, "Fail", MessageBoxButton.OK, MessageBoxImage.Error); };
            showSuccess = (str) => { MessageBox.Show(str, "Success!", MessageBoxButton.OK, MessageBoxImage.Information); };
        }

        public PortalWindowViewModel([NotNull] IHomeBusinessLogic homeBusinessLogic, Action<string> error, Action<string> success)
        {
            HomeBusinessLogic = homeBusinessLogic;
            showError = error;
            showSuccess = success;
        }
    }
}

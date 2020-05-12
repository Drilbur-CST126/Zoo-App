using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.Models.BusinessLogic
{
    public interface IHomeBusinessLogic
    {
        bool DeleteAdmin(int adminId);
        bool DeleteExhibit(int exhibitId);
        bool AddNewAdmin(string username, string firstname, string lastname, string email, string password);
        bool CheckUsernameExists(string username);
        bool CheckAdminCredentials(string username, string password);
        DataTable GetAdmins();
        DataTable GetExhibits();
        DataTable GetEvents();
        ListedExhibit GetExhibit(int exhibitId);
        Event GetEvent(int eventId);
    }
}

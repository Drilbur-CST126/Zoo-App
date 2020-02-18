using AdminPortal.HelperCode.Common;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using AdminPortal.Models;
using System.Data;

namespace AdminPortal.Models.BusinessLogic.HelperCode.Common
{
    public class HomeBusinessLogic : IHomeBusinessLogic
    {
        public bool DeleteAdmin(int adminId)
        {
            // Query.  
            string query = "EXEC spDeleteAdmin @admin_id = '" + adminId + "';";

            // Execute.  
            int result = DAL.executeQuery(query);

            if (result > 0)
                return true;
            else return false;
        }

        public bool AddNewAdmin(string username, string firstname, string lastname, string email, string password)
        {
            try
            {
                // Query.  
                string query = "EXEC spAddNewAdmin " +
                               "@username = '" + username + "', " +
                               "@first_name = '" + firstname + "', " +
                               "@last_name = '" + lastname + "', " +
                               "@email = '" + email + "', " +
                               "@password = '" + password + "';";

                // Execute.  
                int result = DAL.executeQuery(query);

                if (result > 0)
                    return true;
                else return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool CheckUsernameExists(string username)
        {
            try
            {
                // Query.  
                string query = "EXEC spUsernameExists @username = '" + username + "';";

                // Execute.  
                int result = DAL.getCount(query);

                if (result > 0)
                    return true;
                else return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool CheckAdminCredentials(string username, string password)
        {
            try
            {
                // Query.  
                string query = "EXEC spCheckAdminCred @username = '" + username + "', " 
                                +   "@password = '" + password + "';";

                // Execute.  
                int result = DAL.getCount(query);

                if (result > 0)
                    return true;
                else return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetAdmins()
        {
            DataTable admins;

            try
            {
                // Query.  
                string query = "EXEC spGetAdmins;";

                // Execute. 
                return admins = DAL.getTable(query);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
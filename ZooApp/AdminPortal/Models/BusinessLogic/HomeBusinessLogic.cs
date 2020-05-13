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
            try
            {
                // Query.  
                string query = "EXEC spDeleteAdmin @admin_id = '" + adminId + "';";

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

        public bool DeleteExhibit(int exhibitId)
        {
            try
            {
                // Query.  
                string query = "EXEC spDeleteExhibit @exhibit_id = '" + exhibitId + "';";

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

        internal bool AddNewEvent(string title)
        {
            try
            {
                // Query.  
                string query = "EXEC spAddNewEvent " +
                               "@title = '" + title + "';";

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

        public bool AddNewDetail(int eventId, DateTime date, string time, decimal duration, string description)
        {
            try
            {
                // Query.  
                string query = "EXEC spAddNewDetail " +
                               "@event_id = '" + eventId + "', " +
                               "@date = '" + date + "', " +
                               "@time = '" + time + "', " +
                               "@duration = '" + duration + "', " +
                               "@description = '" + description + "';";

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


        public bool AddNewExhibit(string name, string description)
        {
            try
            {
                // Query.  
                string query = "EXEC spAddNewExhibit " +
                               "@name = '" + name + "', " +
                               "@description = '" + description + "';";

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

        public bool EditEvent(int eventId, string title)
        {
            try
            {
                // Query.  
                string query = "EXEC spEditEvent " +
                               "@event_id = '" + eventId + "', " +
                               "@title = '" + title + "';";

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

        internal Detail GetDetail(int detailId)
        {
            DataTable tbl;
            DataRow row;
            Detail detail = new Detail();

            try
            {
                // Query.  
                string query = "EXEC spGetDetail @detail_id = '" + detailId + "';";

                // Execute. 
                tbl = DAL.getTable(query);
                row = tbl.Rows[0];

                // Get Record.
                detail.DetailID = Convert.ToInt32(row["detail_id"]);
                detail.EventID = Convert.ToInt32(row["event_id"]);
                detail.Date = (DateTime)(row["date"]);
                detail.Time = (row["time"]).ToString();
                detail.Description = (row["description"]).ToString();

                return detail;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public bool EditExhibit(int exhibitId, string name, string description)
        {
            try
            {
                // Query.  
                string query = "EXEC spEditExhibit " +
                               "@exhibit_id = '" + exhibitId + "', " +
                               "@name = '" + name + "', " +
                               "@description = '" + description + "';";

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

        public bool CheckExhibitExists(string name)
        {
            try
            {
                // Query.  
                string query = "EXEC spExhibitExists @name = '" + name + "';";

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
                                + "@password = '" + password + "';";

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

        public DataTable GetExhibits()
        {
            DataTable admins;

            try
            {
                // Query.  
                string query = "EXEC spGetExhibits;";

                // Execute. 
                return admins = DAL.getTable(query);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public ListedExhibit GetExhibit(int exhibitId)
        {
            DataTable tbl;
            DataRow row;
            ListedExhibit exhibit = new ListedExhibit();

            try
            {
                // Query.  
                string query = "EXEC spGetExhibit @exhibit_id = '" + exhibitId + "';";

                // Execute. 
                tbl = DAL.getTable(query);
                row = tbl.Rows[0];

                // Get Record.
                exhibit.ExhibitId = Convert.ToInt32(row["exhibit_id"]);
                exhibit.Name = (row["name"]).ToString();
                exhibit.Description = (row["description"]).ToString();

                return exhibit;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetEvents()
        {
            DataTable events;

            try
            {
                // Query.  
                string query = "EXEC spGetEvents;";

                // Execute. 
                return events = DAL.getTable(query);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Event GetEvent(int eventId)
        {
            DataTable tbl;
            DataRow row;
            Event @event = new Event();

            try
            {
                // Query.  
                string query = "EXEC spGetEvent @event_id = '" + eventId + "';";

                // Execute. 
                tbl = DAL.getTable(query);
                row = tbl.Rows[0];

                // Get Record.
                @event.EventID= Convert.ToInt32(row["event_id"]);
                @event.Title = (row["title"]).ToString();

                return @event;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable GetEventDetails(Event @event)
        {
            DataTable details;

            try
            {
                // Query.  
                string query = "EXEC spGetEventDetails @event_id = '" + @event.EventID + "';";

                // Execute. 
                return details = DAL.getTable(query);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool DeleteEvent(int eventId)
        {
            try
            {
                // Query.  
                string query = "EXEC spDeleteEvent @event_id = '" + eventId + "';";

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
    }
}
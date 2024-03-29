﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.Models.BusinessLogic
{
    public class MockHomeBusinessLogic : IHomeBusinessLogic
    {
        public bool DeleteAdmin(int adminId)
        {
            return true;
        }

        public bool DeleteExhibit(int exhibitId)
        {
            return true;
        }

        public bool AddNewAdmin(string username, string firstname, string lastname, string email, string password)
        {
            return true;
        }

        public bool CheckUsernameExists(string username)
        {
            return username == "Duplicate";
        }

        public bool CheckAdminCredentials(string username, string password)
        {
            return !(username == "Wrong" && password == "Wrong");
        }

        public DataTable GetAdmins()
        {
            return new DataTable();
        }

        public DataTable GetExhibits()
        {
            return new DataTable();
        }

        public DataTable GetEvents()
        {
            return new DataTable();
        }

        public Event GetEvent(int eventId)
        {
            return new Event();
        }

        public ListedExhibit GetExhibit(int exhibitId)
        {
            return new ListedExhibit();
        }

        public bool DeleteEvent(int eventId)
        {
            return true;
        }
    }
}

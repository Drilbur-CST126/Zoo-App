using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.Models
{
    public class Admin
    {
        public string Username { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
    }

    public class ListedAdmin 
    {
        public int AdminId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
    }

}

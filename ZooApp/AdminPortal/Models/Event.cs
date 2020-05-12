using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.Models
{
    public class Event
    {
        public int EventID { get; set; }
        public string Title { get; set; }
    }

    public class ListedEvent
    {
        public int ExhibitId { get; set; }
        public string Title { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.Models
{
    public class Detail
    {
        public int DetailID { get; set; }
        public int EventID { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public decimal Duration {get;set; }
        public string Description { get; set; }

    }

    public class ListedDetail
    {
        public int EventId { get; set; }
        public string Title { get; set; }
        public int DetailID { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public decimal Duration { get; set; }
        public string Description { get; set; }
    }
}
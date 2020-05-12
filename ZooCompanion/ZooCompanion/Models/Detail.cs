using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZooCompanion.Models
{
    public class Detail
    {
        public int DetailId { get; set; }
        public int EventId { get; set; }
        public DateTime Date { get; set; }
        public DateTime Time { get; set; }
        public decimal Duration { get; set; }
        public string Description { get; set; }
    }
}
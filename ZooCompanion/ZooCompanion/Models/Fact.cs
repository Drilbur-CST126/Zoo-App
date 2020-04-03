using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZooCompanion.Models
{
    public class Fact
    {
        public int FactId { get; set; }
        public string FactDescription { get; set; }
        public int AnimalId { get; set; }
    }
}
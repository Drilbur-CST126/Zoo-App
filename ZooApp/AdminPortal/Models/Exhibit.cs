using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.Models
{
    public class Exhibit
    {
        public string Name { get; set; }
        public string Description { get; set; }
    }

    public class ListedExhibit
    {
        public int ExhibitId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}

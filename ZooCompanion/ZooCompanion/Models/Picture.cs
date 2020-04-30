using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZooCompanion.Models
{
    public class Picture
    {
        public int PictureID { get; set; }
        public string FileName { get; set; }
        public string PictureURL { get; set; }
        public int AnimalId { get; set; }
    }
}
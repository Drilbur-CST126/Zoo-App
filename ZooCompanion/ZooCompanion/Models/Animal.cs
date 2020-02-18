using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ZooCompanion.Models
{
    public class Animal
    {
        public int AnimalId { get; set; }
        public string CommonName { get; set; }
        public string ScientificName { get; set; }
        public byte[] QRCode { get; set; }
        public string Tags { get; set; }
        public Nullable<int> ClassId { get; set; }
        public Nullable<int> ExhibitId { get; set; }
    }
}
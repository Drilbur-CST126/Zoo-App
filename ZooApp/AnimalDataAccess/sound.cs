//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AnimalDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class sound
    {
        public int sound_id { get; set; }
        public string file_name { get; set; }
        public string sound_url { get; set; }
        public Nullable<int> animal_id { get; set; }
    
        public virtual animal animal { get; set; }
    }
}

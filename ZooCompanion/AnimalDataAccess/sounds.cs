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
    
    public partial class sounds
    {
        public int sound_id { get; set; }
        public string file_name { get; set; }
        public byte[] sound_file { get; set; }
        public Nullable<int> animal_id { get; set; }
    
        public virtual animals animals { get; set; }
    }
}

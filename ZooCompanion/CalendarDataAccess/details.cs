//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CalendarDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class details
    {
        public int detail_id { get; set; }
        public Nullable<int> event_id { get; set; }
        public System.DateTime date { get; set; }
        public System.DateTime time { get; set; }
        public Nullable<decimal> duration { get; set; }
        public string description { get; set; }
    
        public virtual events events { get; set; }
    }
}
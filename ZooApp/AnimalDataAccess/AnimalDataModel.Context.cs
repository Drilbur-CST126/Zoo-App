﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ZooCompanionWebApi_dbEntities : DbContext
    {
        public ZooCompanionWebApi_dbEntities()
            : base("name=ZooCompanionWebApi_dbEntities")
        {
            this.Configuration.ProxyCreationEnabled = false;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<animal> animals { get; set; }
        public virtual DbSet<@class> classes { get; set; }
        public virtual DbSet<exhibit> exhibits { get; set; }
        public virtual DbSet<fact> facts { get; set; }
        public virtual DbSet<picture> pictures { get; set; }
        public virtual DbSet<sound> sounds { get; set; }
        public virtual DbSet<detail> details { get; set; }
        public virtual DbSet<@event> events { get; set; }
    }
}

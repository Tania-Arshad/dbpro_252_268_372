﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication22
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FinalEntities1 : DbContext
    {
        public FinalEntities1()
            : base("name=FinalEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AddSection> AddSections { get; set; }
        public virtual DbSet<AddTeacher> AddTeachers { get; set; }
        public virtual DbSet<Cours> Courses { get; set; }
        public virtual DbSet<Registration> Registrations { get; set; }
        public virtual DbSet<DateSheet> DateSheets { get; set; }
        public virtual DbSet<FeeChallan> FeeChallans { get; set; }
        public virtual DbSet<ManageAttendance> ManageAttendances { get; set; }
        public virtual DbSet<ManagePayRoll> ManagePayRolls { get; set; }
        public virtual DbSet<TimeTable> TimeTables { get; set; }
    }
}

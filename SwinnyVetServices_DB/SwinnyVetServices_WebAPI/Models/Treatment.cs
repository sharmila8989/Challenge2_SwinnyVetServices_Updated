//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SwinnyVetServices_WebAPI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Treatment
    {
        public int treatmentId { get; set; }
        public string treatmentNotes { get; set; }
        public System.DateTime treatmentDate { get; set; }
        public decimal treatmentPrice { get; set; }
        public int petId { get; set; }
        public int ownerId { get; set; }
        public int procedureId { get; set; }
    
        public virtual Owner Owner { get; set; }
        public virtual Pet Pet { get; set; }
        public virtual Procedure Procedure { get; set; }
    }
}

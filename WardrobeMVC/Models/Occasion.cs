//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeMVC.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Occasion
    {
        public Occasion()
        {
            this.Accessories = new HashSet<Accessory>();
            this.Bottoms = new HashSet<Bottom>();
            this.Shoes = new HashSet<Sho>();
            this.Tops = new HashSet<Top>();
        }
    
        public int OccasionID { get; set; }
        public string Occassion { get; set; }
    
        public virtual ICollection<Accessory> Accessories { get; set; }
        public virtual ICollection<Bottom> Bottoms { get; set; }
        public virtual ICollection<Sho> Shoes { get; set; }
        public virtual ICollection<Top> Tops { get; set; }
    }
}

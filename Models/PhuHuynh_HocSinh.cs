//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SchoolManager.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PhuHuynh_HocSinh
    {
        public int Id { get; set; }
        public string Id_PhuHuynh { get; set; }
        public Nullable<int> Id_HocSinh { get; set; }
        public string QuanHe { get; set; }
    
        public virtual HocSinh HocSinh { get; set; }
        public virtual PhuHuynh PhuHuynh { get; set; }
    }
}

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
    
    public partial class ThucDon
    {
        public int Id { get; set; }
        public string TenThucDon { get; set; }
        public string MoTa { get; set; }
        public bool TrangThai { get; set; }
        public int MaNhom { get; set; }
    
        public virtual NhomTuoi NhomTuoi { get; set; }
    }
}

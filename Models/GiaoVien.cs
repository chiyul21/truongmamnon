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
    
    public partial class GiaoVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public GiaoVien()
        {
            this.DiemDanhGiaoViens = new HashSet<DiemDanhGiaoVien>();
            this.GiaoVien_Lops = new HashSet<GiaoVien_Lops>();
        }
    
        public string Id { get; set; }
        public string HoTen { get; set; }
        public string img { get; set; }
        public string QueQuan { get; set; }
        public string DanToc { get; set; }
        public string TonGiao { get; set; }
        public string HKTT { get; set; }
        public string SDT { get; set; }
        public string ChuyenNganh { get; set; }
        public string TrinhDo { get; set; }
        public string TrinhTrangCongTac { get; set; }
        public string HonNhan { get; set; }
        public string SucKhoe { get; set; }
        public System.DateTime NgayTao { get; set; }
        public System.DateTime NgaySinh { get; set; }
        public string GioiTinh { get; set; }
    
        public virtual AspNetUser AspNetUser { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DiemDanhGiaoVien> DiemDanhGiaoViens { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GiaoVien_Lops> GiaoVien_Lops { get; set; }
    }
}

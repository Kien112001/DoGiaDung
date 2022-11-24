namespace DoGiaDung.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            ChiTietDDs = new HashSet<ChiTietDD>();
            ChiTietSPs = new HashSet<ChiTietSP>();
            CT_PhieuNhapKho = new HashSet<CT_PhieuNhapKho>();
        }

        [Key]
        public int MaSP { get; set; }

        public int? MaLoaiSP { get; set; }

        public int? MaThuongHieu { get; set; }

        [StringLength(50)]
        public string TenSP { get; set; }

        public double? DonGiaNhap { get; set; }

        public int? SoLuong { get; set; }

        [StringLength(50)]
        public string MoTa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDD> ChiTietDDs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietSP> ChiTietSPs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CT_PhieuNhapKho> CT_PhieuNhapKho { get; set; }

        public virtual LoaiSP LoaiSP { get; set; }

        public virtual ThuongHieu ThuongHieu { get; set; }
    }
}

namespace DoGiaDung.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuNhapKho")]
    public partial class PhieuNhapKho
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhieuNhapKho()
        {
            CT_PhieuNhapKho = new HashSet<CT_PhieuNhapKho>();
        }

        [Key]
        public int MaPNK { get; set; }

        public int? MaTK { get; set; }

        public DateTime? NgayGio { get; set; }

        [StringLength(50)]
        public string LoaiPhieu { get; set; }

        [StringLength(50)]
        public string TrangThai { get; set; }

        public double? TongTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CT_PhieuNhapKho> CT_PhieuNhapKho { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}

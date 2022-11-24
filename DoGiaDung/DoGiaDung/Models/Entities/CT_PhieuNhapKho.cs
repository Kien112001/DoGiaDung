namespace DoGiaDung.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class CT_PhieuNhapKho
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CT_PhieuNhapKho()
        {
            ChiTietSPs = new HashSet<ChiTietSP>();
        }

        [Key]
        public int MaCT_PNK { get; set; }

        public int? MaSP { get; set; }

        public int? MaPNK { get; set; }

        public int? SoLuong { get; set; }

        public double? TongTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietSP> ChiTietSPs { get; set; }

        public virtual PhieuNhapKho PhieuNhapKho { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}

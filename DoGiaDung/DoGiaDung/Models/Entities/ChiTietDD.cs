namespace DoGiaDung.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDD")]
    public partial class ChiTietDD
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChiTietDD()
        {
            ChiTietSPs = new HashSet<ChiTietSP>();
        }

        [Key]
        public int MaCT_DonDat { get; set; }

        public int? MaDD { get; set; }

        public int? MaSP { get; set; }

        public int? SoLuong { get; set; }

        public double? TongTienMua { get; set; }

        [StringLength(50)]
        public string GhiChu { get; set; }

        public virtual DonDat DonDat { get; set; }

        public virtual SanPham SanPham { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietSP> ChiTietSPs { get; set; }
    }
}

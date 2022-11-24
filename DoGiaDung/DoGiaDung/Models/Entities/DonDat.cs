namespace DoGiaDung.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonDat")]
    public partial class DonDat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DonDat()
        {
            ChiTietDDs = new HashSet<ChiTietDD>();
        }

        [Key]
        public int MaDD { get; set; }

        public int? MaTK { get; set; }

        public DateTime? ThoiGian { get; set; }

        [StringLength(50)]
        public string TrangThai { get; set; }

        [StringLength(50)]
        public string TT_ThanhToan { get; set; }

        public double? TongTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDD> ChiTietDDs { get; set; }

        public virtual TaiKhoan TaiKhoan { get; set; }
    }
}

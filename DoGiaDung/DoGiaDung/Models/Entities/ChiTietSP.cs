namespace DoGiaDung.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietSP")]
    public partial class ChiTietSP
    {
        [Key]
        public int MaCT_SP { get; set; }

        public int? MaSP { get; set; }

        public int? MaCT_DonDat { get; set; }

        public int? MaCT_PNK { get; set; }

        public int? SoTT { get; set; }

        [StringLength(50)]
        public string TrangThai { get; set; }

        [StringLength(50)]
        public string SoDinhDanh { get; set; }

        public virtual ChiTietDD ChiTietDD { get; set; }

        public virtual CT_PhieuNhapKho CT_PhieuNhapKho { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}

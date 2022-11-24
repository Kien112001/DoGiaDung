using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DoGiaDung.Models.Entities
{
    public partial class DB_Context : DbContext
    {
        public DB_Context()
            : base("name=DB_Context")
        {
        }

        public virtual DbSet<ChiTietDD> ChiTietDDs { get; set; }
        public virtual DbSet<ChiTietSP> ChiTietSPs { get; set; }
        public virtual DbSet<CT_PhieuNhapKho> CT_PhieuNhapKho { get; set; }
        public virtual DbSet<DonDat> DonDats { get; set; }
        public virtual DbSet<LoaiSP> LoaiSPs { get; set; }
        public virtual DbSet<PhieuNhapKho> PhieuNhapKhoes { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
        public virtual DbSet<ThuongHieu> ThuongHieux { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<LoaiSP>()
                .HasOptional(e => e.LoaiSP1)
                .WithRequired(e => e.LoaiSP2);
        }
    }
}

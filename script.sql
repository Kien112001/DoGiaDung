--Create database [DoGiaDung]
--GO
--USE [DoGiaDung]
--GO
/****** Object:  Table [dbo].[ChiTietDD]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDD](
	[MaCT_DonDat] [int] IDENTITY(1,1) NOT NULL,
	[MaDD] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[TongTienMua] [float] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [unique_ChiTietDD] UNIQUE ([MADD],[MaSP]),
 CONSTRAINT [PK_ChiTietDD] PRIMARY KEY CLUSTERED 
(
	[MaCT_DonDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[MaCT_SP] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[MaCT_DonDat] [int] NULL,
	[MaCT_PNK] [int] NULL,
	[SoTT] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[SoDinhDanh] [nvarchar](50) NULL,

 CONSTRAINT [unique_ChiTietSP] UNIQUE ([MaSP],[SoTT]),
 CONSTRAINT [PK_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaCT_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PhieuNhapKho]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuNhapKho](
	[MaCT_PNK] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[MaPNK] [int] NULL,
	[SoLuong] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [unique_CT_PhieuNhapKho] UNIQUE ([MaPNK],[MaSP]),
 CONSTRAINT [PK_CT_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaCT_PNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDat]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDat](
	[MaDD] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NULL,
	[ThoiGian] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[TT_ThanhToan] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [unique_DonDat] UNIQUE ([MaTK],[ThoiGian]),

 CONSTRAINT [PK_DonDat] PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[MaPNK] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NULL,
	[NgayGio] [datetime] NULL,
	[LoaiPhieu] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [unique_PhieuNhapKho] UNIQUE ([MaTK],[NgayGio]),
 CONSTRAINT [PK_PhieuNhapKho] PRIMARY KEY CLUSTERED 
(
	[MaPNK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiSP] [int] NULL,
	[MaThuongHieu] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonGiaNhap] [float] NULL,
	[SoLuong] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[LoaiTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 10/27/2022 4:07:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
--------
GO
SET IDENTITY_INSERT [dbo].[ChiTietDD] ON 

INSERT [dbo].[ChiTietDD] ([MaCT_DonDat], [MaDD], [MaSP], [SoLuong], [TongTienMua], [GhiChu]) VALUES (1, 1, 1, 2, 30000, NULL)
INSERT [dbo].[ChiTietDD] ([MaCT_DonDat], [MaDD], [MaSP], [SoLuong], [TongTienMua], [GhiChu]) VALUES (2, 4, 2, 2, 40000, NULL)
INSERT [dbo].[ChiTietDD] ([MaCT_DonDat], [MaDD], [MaSP], [SoLuong], [TongTienMua], [GhiChu]) VALUES (3, 5, 3, 2, 60000, NULL)
INSERT [dbo].[ChiTietDD] ([MaCT_DonDat], [MaDD], [MaSP], [SoLuong], [TongTienMua], [GhiChu]) VALUES (4, 6, 4, 2, 50000, NULL)
INSERT [dbo].[ChiTietDD] ([MaCT_DonDat], [MaDD], [MaSP], [SoLuong], [TongTienMua], [GhiChu]) VALUES (5, 7, 5, 2, 70000, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietDD] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietSP] ON 

INSERT [dbo].[ChiTietSP] ([MaCT_SP], [MaSP], [MaCT_DonDat], [MaCT_PNK],[SoTT], [TrangThai], [SoDinhDanh]) VALUES (1, 1, 1, 1, 1, N'0', N'123')
INSERT [dbo].[ChiTietSP] ([MaCT_SP], [MaSP], [MaCT_DonDat], [MaCT_PNK],[SoTT], [TrangThai], [SoDinhDanh]) VALUES (2, 2, 2, 3, 2, N'1', N'145')
INSERT [dbo].[ChiTietSP] ([MaCT_SP], [MaSP], [MaCT_DonDat], [MaCT_PNK],[SoTT], [TrangThai], [SoDinhDanh]) VALUES (7, 3, 3, 4, 3, N'1', N'126')
INSERT [dbo].[ChiTietSP] ([MaCT_SP], [MaSP], [MaCT_DonDat], [MaCT_PNK],[SoTT], [TrangThai], [SoDinhDanh]) VALUES (13, 4, 4, 5, 4, N'0', N'264')
INSERT [dbo].[ChiTietSP] ([MaCT_SP], [MaSP], [MaCT_DonDat], [MaCT_PNK],[SoTT], [TrangThai], [SoDinhDanh]) VALUES (14, 5, 5, 6, 5, N'0', N'267')
SET IDENTITY_INSERT [dbo].[ChiTietSP] OFF
GO
SET IDENTITY_INSERT [dbo].[CT_PhieuNhapKho] ON 

INSERT [dbo].[CT_PhieuNhapKho] ([MaCT_PNK], [MaSP], [MaPNK], [SoLuong], [TongTien]) VALUES (1, 1, 1, 25, 5000)
INSERT [dbo].[CT_PhieuNhapKho] ([MaCT_PNK], [MaSP], [MaPNK], [SoLuong], [TongTien]) VALUES (3, 2, 2, 25, 8000)
INSERT [dbo].[CT_PhieuNhapKho] ([MaCT_PNK], [MaSP], [MaPNK], [SoLuong], [TongTien]) VALUES (4, 3, 3, 25, 6000)
INSERT [dbo].[CT_PhieuNhapKho] ([MaCT_PNK], [MaSP], [MaPNK], [SoLuong], [TongTien]) VALUES (5, 4, 4, 25, 7000)
INSERT [dbo].[CT_PhieuNhapKho] ([MaCT_PNK], [MaSP], [MaPNK], [SoLuong], [TongTien]) VALUES (6, 5, 5, 25, 9000)
SET IDENTITY_INSERT [dbo].[CT_PhieuNhapKho] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDat] ON 

INSERT [dbo].[DonDat] ([MaDD], [MaTK], [ThoiGian], [TrangThai], [TT_ThanhToan], [TongTien]) VALUES (1, 3, CAST(N'2022-05-06T00:00:00.000' AS DateTime), N'1', N'1', 15000)
INSERT [dbo].[DonDat] ([MaDD], [MaTK], [ThoiGian], [TrangThai], [TT_ThanhToan], [TongTien]) VALUES (4, 3, CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'0', N'0', 20000)
INSERT [dbo].[DonDat] ([MaDD], [MaTK], [ThoiGian], [TrangThai], [TT_ThanhToan], [TongTien]) VALUES (5, 3, CAST(N'2022-12-07T00:00:00.000' AS DateTime), N'2', N'1', 30000)
INSERT [dbo].[DonDat] ([MaDD], [MaTK], [ThoiGian], [TrangThai], [TT_ThanhToan], [TongTien]) VALUES (6, 3, CAST(N'2022-03-04T00:00:00.000' AS DateTime), N'0', N'1', 25000)
INSERT [dbo].[DonDat] ([MaDD], [MaTK], [ThoiGian], [TrangThai], [TT_ThanhToan], [TongTien]) VALUES (7, 3, CAST(N'2022-04-05T00:00:00.000' AS DateTime), N'1', N'0', 35000)
SET IDENTITY_INSERT [dbo].[DonDat] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Xoong-nồi')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Chảo')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Dụng cụ làm bánh')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Bếp gas')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'Máy xay')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhapKho] ON 

INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaTK],[NgayGio], [LoaiPhieu], [TrangThai], [TongTien]) VALUES (1, 2,CAST(N'2022-02-03T00:00:00.000' AS DateTime) ,N'Du kien', N'1', 50000)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaTK],[NgayGio], [LoaiPhieu], [TrangThai], [TongTien]) VALUES (2, 4,CAST(N'2022-03-04T00:00:00.000' AS DateTime), N'Hoa don nhap', N'0', 100000)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaTK],[NgayGio], [LoaiPhieu], [TrangThai], [TongTien]) VALUES (3, 5,CAST(N'2022-04-05T00:00:00.000' AS DateTime), N'Hoa don nhap', N'1', 70000)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaTK],[NgayGio], [LoaiPhieu], [TrangThai], [TongTien]) VALUES (4, 4,CAST(N'2022-05-06T00:00:00.000' AS DateTime), N'Du kien', N'1', 30000)
INSERT [dbo].[PhieuNhapKho] ([MaPNK], [MaTK],[NgayGio], [LoaiPhieu], [TrangThai], [TongTien]) VALUES (5, 2,CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'Du kien', N'0', 50000)
SET IDENTITY_INSERT [dbo].[PhieuNhapKho] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (1, 2, 1, N'14” Asian Spun Wok', 10000, 20, N'Wok.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (2, 1, 1, N'Set of 2 ProCast', 3000, 20, N'White_1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (3, 3, 1, N'Bundt Quartet Pan', 15000, 20, N'Bundt_Quartet_Pan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (4, 3, 1, N'Geo Bundtlette Pan', 23000, 20, N'Geo_Bundtlette_Pan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (5, 3, 1, N'Heritage Bundt Pan
', 20000, 20, N'White_2.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (6, 2, 1, N'Covered Sauce Pan', 16000, 20, N'21860_White_1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (7, 1, 2, N'Saucepan With Lid', 23000, 20, N'Qt_Stock_Pot.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (8, 3, 3, N'Traditions Dutch Oven', 15000, 20, N'21626_White_1.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (9, 3, 5, N'11 inch Grill pan with Stainless Steel handle', 14000, 20, N'11_in_Red_Grill_Pan_White.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (10, 2, 4, N'8” Wok', 17000, 20, N'16400_White.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (11, 2, 2, N'12” Big Bowl Wok', 20000, 20, N'Rangeware_Wok_Grey.jpg')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaThuongHieu], [TenSP], [DonGiaNhap], [SoLuong], [MoTa]) VALUES (12, 3, 3, N'2 Burner High Sided Griddle', 8000, 20, N'High-Sided.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [MatKhau], [LoaiTK]) VALUES (1, N'Bùi Văn Kiên', N'123', N'Quản Trị')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [MatKhau], [LoaiTK]) VALUES (2, N'Lê Hoàng Long', N'123', N'Nhân Viên')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [MatKhau], [LoaiTK]) VALUES (3, N'Nguyễn Thị Loan', N'234', N'Khách Hàng')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [MatKhau], [LoaiTK]) VALUES (4, N'Lê Thị Bình', N'123', N'Nhà Cung Cấp')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoTen], [MatKhau], [LoaiTK]) VALUES (5, N'Nguyễn Bảo Long', N'123', N'Nhân Viên')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (1, N'Nordic Ware')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (2, N'Philips ')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (3, N'Panasonic ')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (4, N'Sunhouse ')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu]) VALUES (5, N'Toshiba ')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
------------------
ALTER TABLE [dbo].[ChiTietDD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDD_DonDat] FOREIGN KEY([MaDD])
REFERENCES [dbo].[DonDat] ([MaDD])
GO
ALTER TABLE [dbo].[ChiTietDD] CHECK CONSTRAINT [FK_ChiTietDD_DonDat]
GO
ALTER TABLE [dbo].[ChiTietDD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDD] CHECK CONSTRAINT [FK_ChiTietDD_SanPham]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_ChiTietDD] FOREIGN KEY([MaCT_DonDat])
REFERENCES [dbo].[ChiTietDD] ([MaCT_DonDat])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_ChiTietDD]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_CT_PhieuNhapKho] FOREIGN KEY([MaCT_PNK])
REFERENCES [dbo].[CT_PhieuNhapKho] ([MaCT_PNK])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_CT_PhieuNhapKho]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_SanPham]
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuNhapKho_PhieuNhapKho] FOREIGN KEY([MaPNK])
REFERENCES [dbo].[PhieuNhapKho] ([MaPNK])
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho] CHECK CONSTRAINT [FK_CT_PhieuNhapKho_PhieuNhapKho]
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuNhapKho_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_PhieuNhapKho] CHECK CONSTRAINT [FK_CT_PhieuNhapKho_SanPham]
GO
ALTER TABLE [dbo].[DonDat]  WITH CHECK ADD  CONSTRAINT [FK_DonDat_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[DonDat] CHECK CONSTRAINT [FK_DonDat_TaiKhoan]
GO
ALTER TABLE [dbo].[LoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[LoaiSP] CHECK CONSTRAINT [FK_LoaiSP_LoaiSP]
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapKho_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[PhieuNhapKho] CHECK CONSTRAINT [FK_PhieuNhapKho_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
USE [master]
GO
ALTER DATABASE [DoGiaDung] SET  READ_WRITE 
GO

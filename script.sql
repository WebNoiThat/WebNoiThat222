USE [QLNT]
GO
/****** Object:  Table [dbo].[CHATLIEU]    Script Date: 23/6/2021 9:26:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHATLIEU](
	[MaCL] [int] IDENTITY(1,1) NOT NULL,
	[TenCL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHATLIEU] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 23/6/2021 9:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 23/6/2021 9:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 23/6/2021 9:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Taikhoan] [varchar](50) NULL,
	[Matkhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienthoaiKH] [varchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISP]    Script Date: 23/6/2021 9:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISP](
	[MaLSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 23/6/2021 9:26:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaLSP] [int] NULL,
	[MaCL] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CHATLIEU] ON 

INSERT [dbo].[CHATLIEU] ([MaCL], [TenCL]) VALUES (1, N'Gỗ Công Nghiệp')
INSERT [dbo].[CHATLIEU] ([MaCL], [TenCL]) VALUES (2, N'Công Nghiệp Cao Cấp')
INSERT [dbo].[CHATLIEU] ([MaCL], [TenCL]) VALUES (3, N'Da')
INSERT [dbo].[CHATLIEU] ([MaCL], [TenCL]) VALUES (7, N'Vải')
SET IDENTITY_INSERT [dbo].[CHATLIEU] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (1, N'Đặng Hoài Phong', N'hoaiphong123', N'123', N'phonghoai1512@gmail.com', N'Tăng Nhơn Phú A,Quận 9, TP.HCM', N'0822818759', CAST(N'2000-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (2, N'Nguyễn Thanh Thiên', N'thanhthien321', N'123', N'ntn123@gmail.com', N'Phường Linh Chiếu, TP.Thủ Đức', N'0123456789', CAST(N'2000-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (3, N'Nguyễn Trọng Hoàng Tân', N'tanhoang123', N'123', N'bumblebee123@gmail.com', N'Huyện Bình Chánh', N'0822456789', CAST(N'2000-09-08T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (4, N'Nguyễn Thanh Phong', N'thanhphong321', N'123', N'thanhphong123@gmail.com', N'Huyện Bình Phước', N'0918146796', CAST(N'2000-11-06T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (5, N'Nguyễn Trọng Lọc', N'trongloc123', N'123', N'iamtrongloc@gmail.com', N'TP.Thủ Đức', N'0938159799', CAST(N'2000-12-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAISP] ON 

INSERT [dbo].[LOAISP] ([MaLSP], [TenSanPham]) VALUES (1, N'Phòng ngủ')
INSERT [dbo].[LOAISP] ([MaLSP], [TenSanPham]) VALUES (2, N'Phòng khách')
SET IDENTITY_INSERT [dbo].[LOAISP] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (1, N'Giường ngủ Adora 1.6x2m', CAST(13320 AS Decimal(18, 0)), N'Đa dạng về phong cách,bền và đẹp', CAST(N'2021-06-15T00:00:00.000' AS DateTime), 15, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (2, N'Giường ngủ Thomas 1.6x2m', CAST(12630 AS Decimal(18, 0)), N'Bền đẹp', CAST(N'2021-06-15T00:00:00.000' AS DateTime), 10, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (3, N'Giường ngủ Kara 1.8x2m', CAST(15600 AS Decimal(18, 0)), N'Thiết kế hiện đại', CAST(N'2021-06-01T00:00:00.000' AS DateTime), 5, 1, 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (4, N'Giường ngủ Tara chân gỗ', CAST(19600 AS Decimal(18, 0)), N'Thiết kê sang trọng', CAST(N'2021-05-31T00:00:00.000' AS DateTime), 5, 1, 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (5, N'Sofa vải Libby 4 chỗ', CAST(20770 AS Decimal(18, 0)), N'Sang trọng quý phái', CAST(N'2021-05-28T00:00:00.000' AS DateTime), 6, 2, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (6, N'Sofa da Italia Impressive', CAST(101200 AS Decimal(18, 0)), N'Bền bỉ sang trọng quý phái', CAST(N'2021-06-20T00:00:00.000' AS DateTime), 10, 2, 3)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (7, N'Sofa vải Libby', CAST(13840 AS Decimal(18, 0)), N'Giá cả phải chăng sang trọng', CAST(N'2021-06-22T00:00:00.000' AS DateTime), 15, 2, 7)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (8, N'Kệ tivi Tara chân gỗ', CAST(10980 AS Decimal(18, 0)), N'Sang trọng ', CAST(N'2021-06-22T00:00:00.000' AS DateTime), 15, 2, 2)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (9, N'Tủ giày màu gỗ tự nhiên', CAST(5250 AS Decimal(18, 0)), N'Bền bỉ', CAST(N'2021-06-22T00:00:00.000' AS DateTime), 10, 2, 1)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [Giaban], [Mota], [Ngaycapnhat], [Soluongton], [MaLSP], [MaCL]) VALUES (10, N'Kệ sách 7 tầng 2 ngăn màu tự nhiên', CAST(3390 AS Decimal(18, 0)), N'Giá cả hợp lý ', CAST(N'2021-06-22T00:00:00.000' AS DateTime), 20, 2, 1)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__7FB3F64FE05AEF0D]    Script Date: 23/6/2021 9:26:20 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Taikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__A9D105349D4E47B1]    Script Date: 23/6/2021 9:26:20 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SANPHAM] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SANPHAM]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_Khachhang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_Khachhang]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_CHATLIEU] FOREIGN KEY([MaCL])
REFERENCES [dbo].[CHATLIEU] ([MaCL])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_CHATLIEU]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP] FOREIGN KEY([MaLSP])
REFERENCES [dbo].[LOAISP] ([MaLSP])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_LoaiSP]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD CHECK  (([Giaban]>=(0)))
GO

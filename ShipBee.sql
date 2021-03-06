USE [master]
GO
/****** Object:  Database [MPLogistics]    Script Date: 9/8/2020 7:33:46 PM ******/
CREATE DATABASE [MPLogistics]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MPLogistics', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MPLogistics.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MPLogistics_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MPLogistics_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MPLogistics] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MPLogistics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MPLogistics] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MPLogistics] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MPLogistics] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MPLogistics] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MPLogistics] SET ARITHABORT OFF 
GO
ALTER DATABASE [MPLogistics] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MPLogistics] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MPLogistics] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MPLogistics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MPLogistics] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MPLogistics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MPLogistics] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MPLogistics] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MPLogistics] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MPLogistics] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MPLogistics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MPLogistics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MPLogistics] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MPLogistics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MPLogistics] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MPLogistics] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MPLogistics] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MPLogistics] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MPLogistics] SET  MULTI_USER 
GO
ALTER DATABASE [MPLogistics] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MPLogistics] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MPLogistics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MPLogistics] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MPLogistics] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MPLogistics', N'ON'
GO
USE [MPLogistics]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[SDT] [varchar](15) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[matkhau] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DanhGia_Shipper]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia_Shipper](
	[id_danhgia] [int] IDENTITY(1,1) NOT NULL,
	[sao] [int] NULL,
	[kid] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[comment] [nvarchar](50) NULL,
	[id_donhang] [int] NOT NULL,
 CONSTRAINT [PK_DanhGia_Shipper_1] PRIMARY KEY CLUSTERED 
(
	[id_danhgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhsach_phuong_xa]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhsach_phuong_xa](
	[id_phuong_xa] [int] IDENTITY(1,1) NOT NULL,
	[id_quan_huyen] [int] NOT NULL,
	[phuong_xa] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Danhsach_phuong_xa] PRIMARY KEY CLUSTERED 
(
	[id_phuong_xa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Danhsach_quan_huyen]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhsach_quan_huyen](
	[id_quan_huyen] [int] IDENTITY(1,1) NOT NULL,
	[quan_huyen] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Danhsach_quan_huyen] PRIMARY KEY CLUSTERED 
(
	[id_quan_huyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaChi_layhang]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiaChi_layhang](
	[madiachi] [int] IDENTITY(1,1) NOT NULL,
	[SDTnguoigui] [varchar](15) NULL,
	[hoten] [nvarchar](30) NULL,
	[diachi] [nvarchar](100) NULL,
	[id_phuong_xa] [int] NULL,
 CONSTRAINT [PK_DiaChi_gui] PRIMARY KEY CLUSTERED 
(
	[madiachi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiaChi_nhanhang]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiaChi_nhanhang](
	[madiachi] [int] IDENTITY(1,1) NOT NULL,
	[SDTnguoinhan] [varchar](15) NULL,
	[hoten] [nvarchar](30) NULL,
	[diachi] [nvarchar](100) NULL,
	[id_phuong_xa] [int] NULL,
 CONSTRAINT [PK_DiaChi_nhan] PRIMARY KEY CLUSTERED 
(
	[madiachi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiaChiLayHangMacDinh]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiaChiLayHangMacDinh](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kid] [int] NOT NULL,
	[SDTnguoigui] [varchar](15) NULL,
	[hoten] [nvarchar](30) NULL,
	[diachi] [nvarchar](100) NULL,
	[id_phuong_xa] [int] NULL,
 CONSTRAINT [PK_DiaChiLayHangMacDinh] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang_KHang]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonHang_KHang](
	[id_donhang] [int] IDENTITY(1,1) NOT NULL,
	[madonhang] [varchar](30) NOT NULL,
	[tenhanghoa] [nvarchar](30) NOT NULL,
	[kluong] [decimal](28, 2) NOT NULL,
	[ghichu] [nvarchar](30) NULL,
	[ngaytaodon] [datetime] NOT NULL CONSTRAINT [DF__DonHang_K__ngayt__1DE57479]  DEFAULT (getdate()),
	[Pvanchuyen] [decimal](28, 2) NOT NULL,
	[Pthuho] [decimal](28, 2) NULL,
	[ttdhid] [int] NOT NULL CONSTRAINT [DF__DonHang_K__ttdhi__1ED998B2]  DEFAULT ((1)),
	[Nmadiachi] [int] NULL,
	[Lmadiachi] [int] NULL,
	[lid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[sid] [int] NULL,
	[vid] [int] NOT NULL,
	[kid] [int] NOT NULL,
 CONSTRAINT [PK_DonHang_KHang_1] PRIMARY KEY CLUSTERED 
(
	[id_donhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[kid] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](30) NOT NULL,
	[SDT] [varchar](15) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[matkhau] [varchar](30) NOT NULL,
	[diachi] [nvarchar](70) NULL,
	[levels] [int] NOT NULL CONSTRAINT [DF__KhachHang__level__22AA2996]  DEFAULT ((1)),
	[lock] [int] NOT NULL CONSTRAINT [DF_KhachHang_lock]  DEFAULT ((0)),
 CONSTRAINT [PK_KhachKhang] PRIMARY KEY CLUSTERED 
(
	[kid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phamvi_Khoangcach]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phamvi_Khoangcach](
	[Kcode] [int] IDENTITY(1,1) NOT NULL,
	[NQuanHuyen] [int] NULL,
	[GQuanHuyen] [int] NULL,
	[Km] [int] NULL,
 CONSTRAINT [PK_Phamvi_Khoangcach] PRIMARY KEY CLUSTERED 
(
	[Kcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuongTien]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuongTien](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[loaixe] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhuongTien] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phuongthuc_traphi]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phuongthuc_traphi](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[nguoitraphi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phuongthu_traphi] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phuongthuc_vanchuyen]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phuongthuc_vanchuyen](
	[vid] [int] IDENTITY(1,1) NOT NULL,
	[goivanchuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phuongthuc_vanchuyen] PRIMARY KEY CLUSTERED 
(
	[vid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipper](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](30) NOT NULL,
	[SDT] [varchar](15) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[matkhau] [varchar](30) NOT NULL,
	[diachi] [nvarchar](70) NULL,
	[stkNganHang] [varchar](25) NULL,
	[lid] [int] NOT NULL,
	[biensoxe] [varchar](50) NOT NULL,
	[imgCMND] [varchar](255) NULL,
	[imgBangLaiXe] [varchar](255) NULL,
	[lock] [int] NOT NULL CONSTRAINT [DF_Shipper_lock]  DEFAULT ((0)),
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrangThaiDonHang]    Script Date: 9/8/2020 7:33:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDonHang](
	[ttdhid] [int] IDENTITY(1,1) NOT NULL,
	[trangthaidonhang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Trangthaidonhang] PRIMARY KEY CLUSTERED 
(
	[ttdhid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([aid], [hoten], [SDT], [email], [matkhau]) VALUES (1, N'trung', N'0913425109', N'trungne@gmail.com', N'123456')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[DanhGia_Shipper] ON 

INSERT [dbo].[DanhGia_Shipper] ([id_danhgia], [sao], [kid], [sid], [comment], [id_donhang]) VALUES (13, 5, 1, 1, N'GOOD', 4)
SET IDENTITY_INSERT [dbo].[DanhGia_Shipper] OFF
SET IDENTITY_INSERT [dbo].[Danhsach_phuong_xa] ON 

INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (1, 1, N'Bình Hiên')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (2, 1, N'Bình Thuận')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (3, 1, N'Hải Châu I')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (4, 1, N'Hải Châu II')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (5, 1, N'Hòa Cường Bắc')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (6, 1, N'Hòa Cường Nam')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (7, 1, N'Hòa Thuận Đông')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (8, 1, N'Hòa Thuận Tây')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (9, 1, N'Nam Dương')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (10, 1, N'Phước Ninh')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (11, 1, N'Thạch Thang')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (12, 1, N'Thanh Bình')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (13, 1, N'Thuận Phước
')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (14, 2, N'Hòa An')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (15, 2, N'Hòa Phát')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (16, 2, N'Hòa Thọ Đông')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (17, 2, N'Hòa Thọ Tây')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (18, 2, N'Hòa Xuân')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (19, 2, N'Khuê Trung')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (20, 3, N'An Khê ')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (21, 3, N'Chính Gián')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (22, 3, N'Hòa Khê')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (23, 3, N'Tam Thuận')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (24, 3, N'Tân Chính')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (25, 3, N'Thạc Gián')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (26, 3, N'Thanh Khê Đông')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (27, 3, N'Thanh Khê Tây')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (28, 3, N'Vĩnh Trung')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (29, 3, N'Xuân Hà')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (30, 4, N'Hòa Hiệp Bắc')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (31, 4, N'Hòa Hiệp Nam')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (32, 4, N'Hòa Khánh Bắc')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (33, 4, N'Hòa Khánh Nam')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (34, 4, N'Hòa Minh')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (35, 5, N'Hòa Hải')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (36, 5, N'Hòa Quý
')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (37, 5, N'Khuê Mỹ')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (38, 5, N'Mỹ An')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (39, 6, N'An Hải Bắc')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (40, 6, N'An Hải Đông')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (41, 6, N'An Hải Tây')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (42, 6, N'Mân Thái')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (43, 6, N'Nại Hiên Đông')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (44, 6, N'Phước Mỹ')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (45, 6, N'Thọ Quang')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (46, 7, N'Hòa Bắc')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (47, 7, N'Hòa Châu')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (48, 7, N'Hòa Khương')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (49, 7, N'Hòa Liên')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (50, 7, N'Hòa Nhơn')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (51, 7, N'Hòa Ninh')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (52, 7, N'Hòa Phong')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (53, 7, N'Hòa Phú')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (54, 7, N'Hòa Phước')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (55, 7, N'Hòa Sơn')
INSERT [dbo].[Danhsach_phuong_xa] ([id_phuong_xa], [id_quan_huyen], [phuong_xa]) VALUES (56, 7, N'Hòa Tiến')
SET IDENTITY_INSERT [dbo].[Danhsach_phuong_xa] OFF
SET IDENTITY_INSERT [dbo].[Danhsach_quan_huyen] ON 

INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (1, N'Hải Châu')
INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (2, N'Cẩm Lệ')
INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (3, N'Thanh Khê')
INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (4, N'Liên Chiểu')
INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (5, N'Ngũ Hành Sơn')
INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (6, N'Sơn Trà')
INSERT [dbo].[Danhsach_quan_huyen] ([id_quan_huyen], [quan_huyen]) VALUES (7, N'Huyện Hòa Vang')
SET IDENTITY_INSERT [dbo].[Danhsach_quan_huyen] OFF
SET IDENTITY_INSERT [dbo].[DiaChi_layhang] ON 

INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (1, N'0913425109', N'Tín Đạt', N'82 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (2, N'0913425109', N'Ngô Long', N'82 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (3, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (10, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (17, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (18, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (19, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (20, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (21, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (22, N'0913425109', N'Ngô Long', N'02 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (23, N'0913425109', N'Ngô Long', N'06 núi thành', 23)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (24, N'0913425109', N'Ngô Long', N'06 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (25, N'0913425109', N'Ngô Long', N'06 núi thành', 3)
INSERT [dbo].[DiaChi_layhang] ([madiachi], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (26, N'0913425109', N'Ngô Long', N'06 núi thành', 3)
SET IDENTITY_INSERT [dbo].[DiaChi_layhang] OFF
SET IDENTITY_INSERT [dbo].[DiaChi_nhanhang] ON 

INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (1, N'0144250789', N'Minh Huy', N'39 nguyễn thuật', 14)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (2, N'054565486', N'Trung phan', N'20 nguyễn văn linh', 3)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (3, N'0558761323', N'thành đạt', N'04 Chế Lan Viên', 16)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (10, N'3523452345', N'Chung', N'43 Hà Hải', 17)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (15, N'3523452345', N'Chung', N'43 Hà Hải', 36)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (16, N'3523452345', N'Chung', N'43 Hà Hải', 25)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (17, N'3523452345', N'Chung', N'43 Hà Hải', 25)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (18, N'3523452345', N'Chung', N'43 Hà Hải', 36)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (19, N'3523452345', N'Chung', N'43 Hà Hải', 24)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (20, N'3523452345', N'Chung', N'43 Hà Hải', 17)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (21, N'09146432626', N'Chung', N'43 Hà Hải', 17)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (22, N'3523452345', N'Chung', N'43 Hà Hải', 16)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (23, N'3523452345', N'Chung', N'43 Hà Hải', 17)
INSERT [dbo].[DiaChi_nhanhang] ([madiachi], [SDTnguoinhan], [hoten], [diachi], [id_phuong_xa]) VALUES (24, N'3523452345', N'Chung', N'43 Hà Hải', 25)
SET IDENTITY_INSERT [dbo].[DiaChi_nhanhang] OFF
SET IDENTITY_INSERT [dbo].[DiaChiLayHangMacDinh] ON 

INSERT [dbo].[DiaChiLayHangMacDinh] ([id], [kid], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (1, 1, N'0913425109', N'Ngô Long', N'06 núi thành', 3)
INSERT [dbo].[DiaChiLayHangMacDinh] ([id], [kid], [SDTnguoigui], [hoten], [diachi], [id_phuong_xa]) VALUES (2, 10, N'0913425109', N'Tín Đạt', N'82 núi thành', 39)
SET IDENTITY_INSERT [dbo].[DiaChiLayHangMacDinh] OFF
SET IDENTITY_INSERT [dbo].[DonHang_KHang] ON 

INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (1, N'pcFFU1NZer', N'đồng hồ', CAST(2.00 AS Decimal(28, 2)), N'hàng dễ vỡ', CAST(N'2020-08-25 20:51:22.117' AS DateTime), CAST(26000.00 AS Decimal(28, 2)), CAST(150000.00 AS Decimal(28, 2)), 5, 1, 1, 1, 2, 1, 1, 10)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (2, N'CYxqiSrWuL', N'sịp', CAST(1.00 AS Decimal(28, 2)), N'', CAST(N'2020-08-26 17:29:41.013' AS DateTime), CAST(121500.00 AS Decimal(28, 2)), CAST(12333.99 AS Decimal(28, 2)), 2, 2, 2, 2, 1, NULL, 3, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (3, N'ke48c9xtQJ', N'đồng hồ', CAST(2.00 AS Decimal(28, 2)), N'hàng dễ vỡ', CAST(N'2020-08-27 12:11:36.487' AS DateTime), CAST(17000.00 AS Decimal(28, 2)), CAST(100000.00 AS Decimal(28, 2)), 5, 3, 3, 1, 1, 4, 1, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (4, N'sfsadf', N'sâfsf', CAST(4.00 AS Decimal(28, 2)), N'dsa', CAST(N'2020-08-30 19:37:02.290' AS DateTime), CAST(40000.00 AS Decimal(28, 2)), CAST(232332.00 AS Decimal(28, 2)), 5, 10, 10, 1, 1, 1, 1, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (5, N'vERj6YUXtV', N'rưer', CAST(5.00 AS Decimal(28, 2)), N'5555', CAST(N'2020-08-30 23:27:57.717' AS DateTime), CAST(60000.00 AS Decimal(28, 2)), CAST(123133.00 AS Decimal(28, 2)), 5, 15, 17, 1, 2, 1, 1, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (6, N'A4EXgXHXoF', N'rưer', CAST(3.00 AS Decimal(28, 2)), N'ewr', CAST(N'2020-08-30 23:38:29.580' AS DateTime), CAST(32322.00 AS Decimal(28, 2)), CAST(0.00 AS Decimal(28, 2)), 2, 16, 18, 1, 2, NULL, 2, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (7, N'qMiC1QTRWU', N'rưer', CAST(21.00 AS Decimal(28, 2)), N'423423', CAST(N'2020-08-31 10:35:46.670' AS DateTime), CAST(0.00 AS Decimal(28, 2)), CAST(0.00 AS Decimal(28, 2)), 2, 17, 19, 1, 2, NULL, 3, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (8, N'Hpij58bIpt', N'rưer', CAST(34.00 AS Decimal(28, 2)), N'332', CAST(N'2020-08-31 10:41:48.300' AS DateTime), CAST(0.00 AS Decimal(28, 2)), CAST(0.00 AS Decimal(28, 2)), 2, 18, 20, 1, 1, NULL, 2, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (9, N'honvzc0use', N'rưer', CAST(44.00 AS Decimal(28, 2)), N'ewr', CAST(N'2020-08-31 10:44:17.947' AS DateTime), CAST(0.00 AS Decimal(28, 2)), CAST(0.00 AS Decimal(28, 2)), 1, 19, 21, 2, 2, NULL, 1, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (10, N'G8n7s7D5zO', N'rưer', CAST(44.00 AS Decimal(28, 2)), N'444', CAST(N'2020-08-31 10:55:21.600' AS DateTime), CAST(0.00 AS Decimal(28, 2)), CAST(433434.00 AS Decimal(28, 2)), 1, 20, 22, 1, 1, NULL, 2, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (11, N'p3QJLzUGvg', N'Iphone', CAST(3.00 AS Decimal(28, 2)), N'mắc tiền', CAST(N'2020-09-02 21:24:39.177' AS DateTime), CAST(0.00 AS Decimal(28, 2)), CAST(0.00 AS Decimal(28, 2)), 1, 21, 23, 1, 1, NULL, 2, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (12, N'a1iuHeAoW0', N'Iphone', CAST(4.00 AS Decimal(28, 2)), N'332', CAST(N'2020-09-02 23:30:49.807' AS DateTime), CAST(73000.00 AS Decimal(28, 2)), CAST(45345345.00 AS Decimal(28, 2)), 1, 22, 24, 1, 1, NULL, 2, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (13, N'D4kV9qa6O2', N'Iphone', CAST(4.00 AS Decimal(28, 2)), N'423423', CAST(N'2020-09-03 15:06:19.450' AS DateTime), CAST(25000.00 AS Decimal(28, 2)), CAST(55555.00 AS Decimal(28, 2)), 1, 23, 25, 1, 2, NULL, 1, 1)
INSERT [dbo].[DonHang_KHang] ([id_donhang], [madonhang], [tenhanghoa], [kluong], [ghichu], [ngaytaodon], [Pvanchuyen], [Pthuho], [ttdhid], [Nmadiachi], [Lmadiachi], [lid], [tid], [sid], [vid], [kid]) VALUES (14, N'4HR18MViEg', N'Iphone', CAST(5.00 AS Decimal(28, 2)), N'332', CAST(N'2020-09-05 13:40:25.030' AS DateTime), CAST(89000.00 AS Decimal(28, 2)), CAST(545344.00 AS Decimal(28, 2)), 1, 24, 26, 1, 2, NULL, 2, 1)
SET IDENTITY_INSERT [dbo].[DonHang_KHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([kid], [hoten], [SDT], [email], [matkhau], [diachi], [levels], [lock]) VALUES (1, N'Ngô Bảo', N'0816544828', N'baonnde130037@fpt.edu.vn', N'123456', N'48 nguyễn thuật , Đà Nẵng', 1, 0)
INSERT [dbo].[KhachHang] ([kid], [hoten], [SDT], [email], [matkhau], [diachi], [levels], [lock]) VALUES (6, N'Trung Phan', N'0123456789', N'trung@gmail.com', N'123456', N'02 núi thành, hải châu', 1, 0)
INSERT [dbo].[KhachHang] ([kid], [hoten], [SDT], [email], [matkhau], [diachi], [levels], [lock]) VALUES (10, N'long', N'0123456785', N'long@gmail.com', N'123456', N'82 núi thành, hải châu', 1, 0)
INSERT [dbo].[KhachHang] ([kid], [hoten], [SDT], [email], [matkhau], [diachi], [levels], [lock]) VALUES (11, N'long', N'0111234866', N'long@gmail.com', N'123456', N'núi thành', 1, 0)
INSERT [dbo].[KhachHang] ([kid], [hoten], [SDT], [email], [matkhau], [diachi], [levels], [lock]) VALUES (15, N'Tín Đạt', N'011111111111', N'dat@gmail.com', N'123456', N'85 tôn đản', 1, 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[Phamvi_Khoangcach] ON 

INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (1, 1, 3, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (2, 1, 4, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (3, 1, 1, 1)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (4, 1, 2, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (5, 1, 5, 9)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (6, 1, 6, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (7, 3, 1, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (8, 3, 3, 1)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (9, 3, 4, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (10, 3, 2, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (11, 3, 5, 9)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (12, 3, 6, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (13, 4, 3, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (14, 4, 4, 1)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (15, 4, 1, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (16, 4, 2, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (17, 4, 5, 9)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (18, 4, 6, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (19, 5, 5, 1)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (20, 5, 1, 9)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (21, 5, 3, 15)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (22, 5, 4, 19)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (23, 5, 6, 15)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (24, 5, 2, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (25, 2, 2, 1)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (26, 2, 5, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (27, 2, 1, 6)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (28, 2, 6, 15)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (29, 2, 3, 9)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (30, 2, 6, 12)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (31, 6, 6, 1)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (32, 6, 1, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (33, 6, 2, 15)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (34, 6, 5, 15)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (35, 6, 3, 10)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (36, 6, 4, 14)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (37, 7, 6, 12)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (38, 7, 1, 13)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (39, 7, 2, 14)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (40, 7, 5, 15)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (41, 7, 3, 16)
INSERT [dbo].[Phamvi_Khoangcach] ([Kcode], [NQuanHuyen], [GQuanHuyen], [Km]) VALUES (42, 7, 4, 17)
SET IDENTITY_INSERT [dbo].[Phamvi_Khoangcach] OFF
SET IDENTITY_INSERT [dbo].[PhuongTien] ON 

INSERT [dbo].[PhuongTien] ([lid], [loaixe]) VALUES (1, N'xe máy')
INSERT [dbo].[PhuongTien] ([lid], [loaixe]) VALUES (2, N'xe tải dưới 3,5 tấn')
INSERT [dbo].[PhuongTien] ([lid], [loaixe]) VALUES (3, N'xe tải trên 3,5 tấn')
SET IDENTITY_INSERT [dbo].[PhuongTien] OFF
SET IDENTITY_INSERT [dbo].[Phuongthuc_traphi] ON 

INSERT [dbo].[Phuongthuc_traphi] ([tid], [nguoitraphi]) VALUES (1, N'người gửi ')
INSERT [dbo].[Phuongthuc_traphi] ([tid], [nguoitraphi]) VALUES (2, N'người nhận')
SET IDENTITY_INSERT [dbo].[Phuongthuc_traphi] OFF
SET IDENTITY_INSERT [dbo].[Phuongthuc_vanchuyen] ON 

INSERT [dbo].[Phuongthuc_vanchuyen] ([vid], [goivanchuyen]) VALUES (1, N'Tiêu chuẩn')
INSERT [dbo].[Phuongthuc_vanchuyen] ([vid], [goivanchuyen]) VALUES (2, N'Nhanh')
INSERT [dbo].[Phuongthuc_vanchuyen] ([vid], [goivanchuyen]) VALUES (3, N'Hỏa tốc')
SET IDENTITY_INSERT [dbo].[Phuongthuc_vanchuyen] OFF
SET IDENTITY_INSERT [dbo].[Shipper] ON 

INSERT [dbo].[Shipper] ([sid], [hoten], [SDT], [email], [matkhau], [diachi], [stkNganHang], [lid], [biensoxe], [imgCMND], [imgBangLaiXe], [lock]) VALUES (1, N'Phan Vĩnh Trung', N'0373185206', N'trungphan631@gmail.com', N'123456', N'ngũ hành sơn,đà nẵng, việt nam', N'1425784295325', 1, N'92N1-37090', N'wp1816238.jpg', N'wp1816238.jpg', 0)
INSERT [dbo].[Shipper] ([sid], [hoten], [SDT], [email], [matkhau], [diachi], [stkNganHang], [lid], [biensoxe], [imgCMND], [imgBangLaiXe], [lock]) VALUES (4, N'Phạm Thanh Thanh', N'0376619919', N'thanh123@gmail.com', N'123456', N'Huế', N'1425784295321', 1, N'92N1-37091', N'wp1816238.jpg', N'IMG_20170621_212743_293.jpg', 0)
INSERT [dbo].[Shipper] ([sid], [hoten], [SDT], [email], [matkhau], [diachi], [stkNganHang], [lid], [biensoxe], [imgCMND], [imgBangLaiXe], [lock]) VALUES (5, N'Phạm Thanh Thanh', N'0376619914', N'thanh123@gmail.com', N'123456', N'Huế', N'1425784295321', 1, N'92N1-37091', N'wp1816238.jpg', N'IMG_20170621_212743_293.jpg', 0)
SET IDENTITY_INSERT [dbo].[Shipper] OFF
SET IDENTITY_INSERT [dbo].[TrangThaiDonHang] ON 

INSERT [dbo].[TrangThaiDonHang] ([ttdhid], [trangthaidonhang]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([ttdhid], [trangthaidonhang]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([ttdhid], [trangthaidonhang]) VALUES (3, N'Đã nhận đơn & đang lấy hàng')
INSERT [dbo].[TrangThaiDonHang] ([ttdhid], [trangthaidonhang]) VALUES (4, N'Đã lấy hàng & đang giao hàng')
INSERT [dbo].[TrangThaiDonHang] ([ttdhid], [trangthaidonhang]) VALUES (5, N'Đã giao hàng ')
INSERT [dbo].[TrangThaiDonHang] ([ttdhid], [trangthaidonhang]) VALUES (6, N'Từ chối')
SET IDENTITY_INSERT [dbo].[TrangThaiDonHang] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Admin__CA1930A59B6ED54B]    Script Date: 9/8/2020 7:33:46 PM ******/
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [UQ__Admin__CA1930A59B6ED54B] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__DonHang___74722A5EF922EF72]    Script Date: 9/8/2020 7:33:46 PM ******/
ALTER TABLE [dbo].[DonHang_KHang] ADD  CONSTRAINT [UQ__DonHang___74722A5EF922EF72] UNIQUE NONCLUSTERED 
(
	[madonhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__KhachHan__CA1930A559D80B86]    Script Date: 9/8/2020 7:33:46 PM ******/
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [UQ__KhachHan__CA1930A559D80B86] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Shipper__CA1930A55542C366]    Script Date: 9/8/2020 7:33:46 PM ******/
ALTER TABLE [dbo].[Shipper] ADD  CONSTRAINT [UQ__Shipper__CA1930A55542C366] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DanhGia_Shipper]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Shipper_KhachHang] FOREIGN KEY([kid])
REFERENCES [dbo].[KhachHang] ([kid])
GO
ALTER TABLE [dbo].[DanhGia_Shipper] CHECK CONSTRAINT [FK_DanhGia_Shipper_KhachHang]
GO
ALTER TABLE [dbo].[DanhGia_Shipper]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Shipper_KhachKhang] FOREIGN KEY([id_donhang])
REFERENCES [dbo].[DonHang_KHang] ([id_donhang])
GO
ALTER TABLE [dbo].[DanhGia_Shipper] CHECK CONSTRAINT [FK_DanhGia_Shipper_KhachKhang]
GO
ALTER TABLE [dbo].[DanhGia_Shipper]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_Shipper_Shipper] FOREIGN KEY([sid])
REFERENCES [dbo].[Shipper] ([sid])
GO
ALTER TABLE [dbo].[DanhGia_Shipper] CHECK CONSTRAINT [FK_DanhGia_Shipper_Shipper]
GO
ALTER TABLE [dbo].[Danhsach_phuong_xa]  WITH CHECK ADD  CONSTRAINT [FK_Danhsach_phuong_xa_Danhsach_phuong_xa] FOREIGN KEY([id_quan_huyen])
REFERENCES [dbo].[Danhsach_quan_huyen] ([id_quan_huyen])
GO
ALTER TABLE [dbo].[Danhsach_phuong_xa] CHECK CONSTRAINT [FK_Danhsach_phuong_xa_Danhsach_phuong_xa]
GO
ALTER TABLE [dbo].[DiaChi_layhang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_layhang_Danhsach_phuong_xa] FOREIGN KEY([id_phuong_xa])
REFERENCES [dbo].[Danhsach_phuong_xa] ([id_phuong_xa])
GO
ALTER TABLE [dbo].[DiaChi_layhang] CHECK CONSTRAINT [FK_DiaChi_layhang_Danhsach_phuong_xa]
GO
ALTER TABLE [dbo].[DiaChi_nhanhang]  WITH CHECK ADD  CONSTRAINT [FK_DiaChi_nhanhang_Danhsach_phuong_xa] FOREIGN KEY([id_phuong_xa])
REFERENCES [dbo].[Danhsach_phuong_xa] ([id_phuong_xa])
GO
ALTER TABLE [dbo].[DiaChi_nhanhang] CHECK CONSTRAINT [FK_DiaChi_nhanhang_Danhsach_phuong_xa]
GO
ALTER TABLE [dbo].[DiaChiLayHangMacDinh]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiLayHangMacDinh_Danhsach_phuong_xa] FOREIGN KEY([id_phuong_xa])
REFERENCES [dbo].[Danhsach_phuong_xa] ([id_phuong_xa])
GO
ALTER TABLE [dbo].[DiaChiLayHangMacDinh] CHECK CONSTRAINT [FK_DiaChiLayHangMacDinh_Danhsach_phuong_xa]
GO
ALTER TABLE [dbo].[DiaChiLayHangMacDinh]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiLayHangMacDinh_KhachHang] FOREIGN KEY([kid])
REFERENCES [dbo].[KhachHang] ([kid])
GO
ALTER TABLE [dbo].[DiaChiLayHangMacDinh] CHECK CONSTRAINT [FK_DiaChiLayHangMacDinh_KhachHang]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_DiaChi_layhang] FOREIGN KEY([Lmadiachi])
REFERENCES [dbo].[DiaChi_layhang] ([madiachi])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_DiaChi_layhang]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_Diachi_nhanhang] FOREIGN KEY([Nmadiachi])
REFERENCES [dbo].[DiaChi_nhanhang] ([madiachi])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_Diachi_nhanhang]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_KhachKhang] FOREIGN KEY([kid])
REFERENCES [dbo].[KhachHang] ([kid])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_KhachKhang]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_PhuongTien] FOREIGN KEY([lid])
REFERENCES [dbo].[PhuongTien] ([lid])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_PhuongTien]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_Phuongthuc_traphi] FOREIGN KEY([tid])
REFERENCES [dbo].[Phuongthuc_traphi] ([tid])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_Phuongthuc_traphi]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_Phuongthuc_vanchuyen] FOREIGN KEY([vid])
REFERENCES [dbo].[Phuongthuc_vanchuyen] ([vid])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_Phuongthuc_vanchuyen]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_Shipper] FOREIGN KEY([sid])
REFERENCES [dbo].[Shipper] ([sid])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_Shipper]
GO
ALTER TABLE [dbo].[DonHang_KHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KHang_TrangThai] FOREIGN KEY([ttdhid])
REFERENCES [dbo].[TrangThaiDonHang] ([ttdhid])
GO
ALTER TABLE [dbo].[DonHang_KHang] CHECK CONSTRAINT [FK_DonHang_KHang_TrangThai]
GO
ALTER TABLE [dbo].[Shipper]  WITH CHECK ADD  CONSTRAINT [FK_Shipper_PhuongTien] FOREIGN KEY([lid])
REFERENCES [dbo].[PhuongTien] ([lid])
GO
ALTER TABLE [dbo].[Shipper] CHECK CONSTRAINT [FK_Shipper_PhuongTien]
GO
USE [master]
GO
ALTER DATABASE [MPLogistics] SET  READ_WRITE 
GO

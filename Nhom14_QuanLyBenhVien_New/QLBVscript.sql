USE [master]
GO
/****** Object:  Database [QLBV]    Script Date: 5/13/2024 11:28:59 PM ******/
CREATE DATABASE [QLBV]
GO
ALTER DATABASE [QLBV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBV] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBV] SET  MULTI_USER 
GO
ALTER DATABASE [QLBV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBV]
GO
/****** Object:  Table [dbo].[BenhNhan]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan](
	[MaBN] [nvarchar](12) NOT NULL,
	[HoTenBN] [nvarchar](60) NOT NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DanToc] [nvarchar](50) NULL,
	[NgheNghiep] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SoDT] [nvarchar](10) NULL,
	[SoDTNN] [nvarchar](10) NULL,
 CONSTRAINT [PK_BenhNhan] PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenhNhan_DichVu]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenhNhan_DichVu](
	[MaBN] [nvarchar](12) NOT NULL,
	[MaDV] [nvarchar](12) NOT NULL,
	[MaPhieuKB] [nvarchar](12) NOT NULL,
	[MaNVYeuCau] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_BenhNhan_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC,
	[MaDV] ASC,
	[MaPhieuKB] ASC,
	[MaNVYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonThuoc]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonThuoc](
	[MaDonThuoc] [nvarchar](12) NOT NULL,
	[MaThuoc] [nvarchar](12) NOT NULL,
	[SoLuong] [int] NULL,
	[CachDung] [nvarchar](500) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_ChiTietDonThuoc] PRIMARY KEY CLUSTERED 
(
	[MaDonThuoc] ASC,
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](12) NOT NULL,
	[TenChucVu] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenNganh]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenNganh](
	[MaChuyenNganh] [nvarchar](12) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NULL,
	[MaKhoa] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_ChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [nvarchar](12) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[DonGiaDichVu] [float] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonThuoc]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonThuoc](
	[MaDonThuoc] [nvarchar](12) NOT NULL,
	[NgayGioKeDon] [datetime] NULL,
	[TongTienThuoc] [float] NULL,
	[MaNV] [nvarchar](12) NOT NULL,
	[MaBN] [nvarchar](12) NOT NULL,
	[ChanDoan] [nvarchar](100) NULL,
 CONSTRAINT [PK_DonThuoc] PRIMARY KEY CLUSTERED 
(
	[MaDonThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiuongBenh]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiuongBenh](
	[MaGiuong] [nvarchar](12) NOT NULL,
	[SoGiuong] [nvarchar](10) NULL,
	[MaPhong] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_GiuongBenh] PRIMARY KEY CLUSTERED 
(
	[MaGiuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhamBenh]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhamBenh](
	[MaBN] [nvarchar](12) NOT NULL,
	[MaPhongKham] [nvarchar](12) NOT NULL,
	[MaNV] [nvarchar](12) NOT NULL,
	[MaPhieuKB] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_KhamBenh] PRIMARY KEY CLUSTERED 
(
	[MaPhieuKB] ASC,
	[MaPhongKham] ASC,
	[MaNV] ASC,
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [nvarchar](12) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhauThuat]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhauThuat](
	[MaPT] [nvarchar](12) NOT NULL,
	[TenPT] [nvarchar](40) NULL,
	[MucDo] [nvarchar](20) NULL,
 CONSTRAINT [PK_LoaiPhauThuat] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](12) NOT NULL,
	[HoTenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[MaKhoa] [nvarchar](12) NOT NULL,
	[MaChuyenNganh] [nvarchar](12) NOT NULL,
	[MaChucVu] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanGiuong]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanGiuong](
	[MaBN] [nvarchar](12) NOT NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[MaPhong] [nvarchar](12) NOT NULL,
	[MaGiuong] [nvarchar](12) NOT NULL,
	[MaNVYeuCau] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_PhanGiuong] PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC,
	[MaGiuong] ASC,
	[MaPhong] ASC,
	[MaNVYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhauThuat]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhauThuat](
	[MaNV] [nvarchar](12) NOT NULL,
	[MaPT] [nvarchar](12) NOT NULL,
	[MaBN] [nvarchar](12) NOT NULL,
	[NgayPT] [datetime] NULL,
	[MaPhongKham] [nvarchar](12) NOT NULL,
	[MaNVYeuCau] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_PhauThuat] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaPT] ASC,
	[MaBN] ASC,
	[MaNVYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuKhamBenh]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuKhamBenh](
	[MaPhieuKB] [nvarchar](12) NOT NULL,
	[MaBN] [nvarchar](12) NOT NULL,
	[NgayKham] [date] NULL,
 CONSTRAINT [PK_PhieuKhamBenh] PRIMARY KEY CLUSTERED 
(
	[MaPhieuKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBenh]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBenh](
	[MaPhong] [nvarchar](12) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[Loai] [nvarchar](20) NULL,
	[MaKhoa] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_PhongBenh] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongKham]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongKham](
	[MaPhongKham] [nvarchar](12) NOT NULL,
	[TenPhongKham] [nvarchar](50) NULL,
	[MaKhoa] [nvarchar](12) NOT NULL,
	[LoaiPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongKham] PRIMARY KEY CLUSTERED 
(
	[MaPhongKham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoBenhAn]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoBenhAn](
	[MaSoBenhAn] [nvarchar](12) NOT NULL,
	[TrieuChung] [nvarchar](100) NULL,
	[TieuSuBenhLy] [nvarchar](100) NULL,
	[ThongTinLamSang] [nvarchar](100) NULL,
	[ChanDoan] [nvarchar](100) NULL,
	[MaBN] [nvarchar](12) NOT NULL,
	[MaNV] [nvarchar](12) NOT NULL,
	[NgayLap] [datetime] NULL,
	[MaPhieuKB] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_SoBenhAn] PRIMARY KEY CLUSTERED 
(
	[MaSoBenhAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheBHYT]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheBHYT](
	[MaBHYT] [nvarchar](12) NOT NULL,
	[MaBN] [nvarchar](12) NOT NULL,
	[NgayCap] [date] NULL,
	[NgayHetHan] [date] NULL,
 CONSTRAINT [PK_TheBHYT] PRIMARY KEY CLUSTERED 
(
	[MaBHYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheoDoiDieuTri]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheoDoiDieuTri](
	[MaBN] [nvarchar](12) NOT NULL,
	[NgayTheoDoi] [datetime] NULL,
	[ChiSoCanNang] [nvarchar](10) NULL,
	[ChiSoHuyetAp] [nvarchar](10) NULL,
	[ChiSoNhipTho] [nvarchar](10) NULL,
	[YLenh] [nvarchar](500) NULL,
	[MaNV] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_TheoDoiDieuTri] PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThucHienXNCC]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucHienXNCC](
	[MaNV] [nvarchar](12) NOT NULL,
	[MaPhieu] [nvarchar](12) NOT NULL,
	[MaPhongKham] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_ThucHienXNCC] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaPhieu] ASC,
	[MaPhongKham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[MaThuoc] [nvarchar](12) NOT NULL,
	[TenThuoc] [nvarchar](30) NULL,
	[DonViTinh] [nvarchar](10) NULL,
	[XuatXu] [nvarchar](20) NULL,
	[DonGiaThuoc] [float] NULL,
 CONSTRAINT [PK_Thuoc] PRIMARY KEY CLUSTERED 
(
	[MaThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XN_CC]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XN_CC](
	[MaPhieu] [nvarchar](12) NOT NULL,
	[MaDV] [nvarchar](12) NOT NULL,
	[NgayThucHien] [datetime] NULL,
	[KetQua] [nvarchar](100) NULL,
	[MaBN] [nvarchar](12) NOT NULL,
	[MaNVYeuCau] [nvarchar](12) NOT NULL,
 CONSTRAINT [PK_XN_CC] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN001', N'Nguyễn Ngọc Trâm Anh', N'Nữ', CAST(N'2004-03-05' AS Date), N'Kinh', N'Học sinh', N'Phường Phúc Xá, Quận Ba Đình, Hà Nội', N'0987654321', N'0938428491')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN002', N'Phạm Việt Anh', N'Nam', CAST(N'2000-07-01' AS Date), N'Kinh', N'Công Nhân', N'Phường Phú Thượng, Quận Tây Hồ, Hà Nội', N'0987690876', N'0987639834')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN003', N'Nguyễn Ngọc Trâm Thư', N'Nữ', CAST(N'2006-08-23' AS Date), N'Kinh', N'Học sinh', N'Xã Thân Cửu Nghĩa, Huyện Châu Thành, Tiền Giang', N'0926487210', N'0337725477')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN004', N'Đỗ Tuấn Phong', N'Nam', CAST(N'1992-07-07' AS Date), N'Kinh', N'Viên Chức', N'Phường Đông Thanh, Thành phố Đông Hà, Quảng Trị', N'0966658611', N'0985345884')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN005', N'Nguyễn Thị Tuyết Nhi', N'Nữ', CAST(N'1990-10-03' AS Date), N'Kinh', N'Nhân Viên Văn Phòng', N'Xã Liên Thủy, Huyện Lệ Thủy, Quảng Bình', N'0989934211', N'0337681919')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN006', N'Đỗ Minh Quân', N'Nam', CAST(N'2001-06-09' AS Date), N'Kinh', N'Sinh Viên', N'Xã Gia Khánh, Huyện Gia Lộc, Hải Dương', N'0387554311', N'0993436165')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN007', N'Dương Thị Thuận', N'Nữ', CAST(N'2009-01-02' AS Date), N'Kinh', N'Học sinh', N'Phường Tân Định, Quận 1, Thành phố Hồ Chí Minh', N'0877654110', N'0336782467')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN008', N'Nguyễn Bình Khiêm', N'Nam', CAST(N'2010-01-08' AS Date), N'Kinh', N'Học sinh', N'Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', N'0381004321', N'0985970772')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN009', N'Nguyễn Phạm Khánh Huyền', N'Nữ', CAST(N'1999-05-18' AS Date), N'Kinh', N'Giáo Viên', N'Phường Việt Hưng, Quận Long Biên, Hà Nội', N'0839739669', N'0985970652')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN010', N'Trần Đình Hoàng', N'Nam', CAST(N'1999-11-18' AS Date), N'Kinh', N'Công Nhân', N'Xã Luân Giới, Huyện Điện Biên Đông, Điện Biên', N'0377923732', N'0982877723')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN011', N'Nguyễn Thanh Vân', N'Nữ', CAST(N'1989-01-18' AS Date), N'Kinh', N'Thương Nhân', N'Phường Quyết Thắng, Thành phố Lai Châu, Lai Châu', N'0947500903', N'0985970772')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN012', N'Phạm Hải Nam', N'Nam', CAST(N'2012-04-07' AS Date), N'Kinh', N'Học sinh', N'Phường Quyết Thắng, Thành phố Sơn La, Sơn La', N'0364837378', N'0338825642')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN013', N'Trần Hà Phương Nghi', N'Nữ', CAST(N'1997-12-11' AS Date), N'Kinh', N'Nội Trợ', N'Phường Yên Ninh, Thành phố Yên Bái, Yên Bái', N'0364949513', N'0932447854')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN014', N'Vương Đình Hào', N'Nam', CAST(N'2011-02-16' AS Date), N'Kinh', N'Học sinh', N'Xã Quang Tiến, Thành phố Hòa Bình, Hoà Bình', N'0329407707', N'0372856890')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN015', N'Nguyễn Phương Anh', N'Nữ', CAST(N'2012-08-30' AS Date), N'Kinh', N'Học sinh', N'Phường Thịnh Đán, Thành phố Thái Nguyên, Thái Nguyên', N'0389787665', N'0365446879')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN016', N'Phạm Ngọc Quỳnh Chi', N'Nữ', CAST(N'2012-10-20' AS Date), N'Kinh', N'Học sinh', N'Phường 02, Quận Bình Thạnh, Thành phố Hồ Chí Minh', N'0942529659', N'0985764446')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN017', N'Hoàng Lan Phương', N'Nữ', CAST(N'2016-09-09' AS Date), N'Kinh', N'Học sinh', N'Phường 12, Quận Tân Bình, Thành phố Hồ Chí Minh', N'0378722739', N'0978867554')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN018', N'Đào Hà My', N'Nữ', CAST(N'1985-02-15' AS Date), N'Kinh', N'Kế Toán', N'Phường 04, Quận Phú Nhuận, Thành phố Hồ Chí Minh', N'0348832806', N'0998678665')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN019', N'Nguyễn Thục Hân', N'Nữ', CAST(N'2003-12-10' AS Date), N'Kinh', N'Sinh Viên', N'Phường Linh Xuân, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', N'0332313369', N'0326887543')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN020', N'Nguyễn Minh Nghĩa', N'Nam', CAST(N'2001-06-15' AS Date), N'Kinh', N'Sinh Viên', N'Phường Linh Xuân, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', N'0332319872', N'0387678654')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN021', N'Nguyễn Tiến Huy Hoàng', N'Nam', CAST(N'2003-03-12' AS Date), N'Kinh', N'Sinh Viên', N'Phường Đồng Nhân, Quận Hai Bà Trưng, Hà Nội', N'0382916032', N'0989876778')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN022', N'Trần Diệu Linh', N'Nữ', CAST(N'2000-12-10' AS Date), N'Kinh', N'Nhân Viên Văn Phòng', N'Phường Phố Huế, Quận Hai Bà Trưng, Hà Nội', N'0334980790', N'0336775675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN023', N'Lê Tuấn Kiệt', N'Nam', CAST(N'2001-04-13' AS Date), N'Kinh', N'Marketing', N'Thị trấn Long Điền, Huyện Long Điền, Bà Rịa - Vũng Tàu', N'0385217220', N'0336775334')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN024', N'Lê Cao Thắng', N'Nam', CAST(N'1993-12-11' AS Date), N'Kinh', N'Quản Trị Nhân Lực', N'Phường Tân Chánh Hiệp, Quận 12, Thành phố Hồ Chí Minh', N'0397718400', N'0336775837')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN025', N'Ngô Khánh Diệp', N'Nữ', CAST(N'2002-01-10' AS Date), N'Kinh', N'Kinh Doanh', N'Xã Tân Hải, Huyện Phú Tân, Cà Mau', N'0937394493', N'0336724675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN026', N'Vũ Duy Hưng', N'Nam', CAST(N'1997-10-06' AS Date), N'Kinh', N'Môi Giới', N'Xã Phong Lộc, Huyện Hậu Lộc, Thanh Hóa', N'0914257399', N'0336772935')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN027', N'Phạm Phương Hà', N'Nữ', CAST(N'2000-02-02' AS Date), N'Kinh', N'Sinh viên', N'Xã Lý Thường Kiệt, Huyện Yên Mỹ, Hưng Yên', N'0975129492', N'0343475675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN028', N'Hoàng Hương Ly', N'Nữ', CAST(N'1990-12-09' AS Date), N'Kinh', N'Luật Sư', N'Xã Xuân Đám, Huyện Cát Hải, Hải Phòng', N'0987913483', N'0336775112')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN029', N'Phạm Thị Hằng Nga', N'Nữ', CAST(N'2000-01-10' AS Date), N'Kinh', N'Thợ Làm Tóc', N'Xã Hưng Long, Huyện Ninh Giang, Hải Dương', N'0377350534', N'0336123675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN030', N'Trần Xuân Toản', N'Nam', CAST(N'1998-12-01' AS Date), N'Kinh', N'Nhân Viên Ngân Hàng', N'Xã Vạn Ninh, Huyện Gia Bình, Bắc Ninh', N'0379379300', N'0336773455')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN031', N'Bùi Hải Lâm', N'Nam', CAST(N'2000-04-21' AS Date), N'Kinh', N'Bảo Vệ', N'Xã Bàu Lâm, Huyện Xuyên Mộc, Bà Rịa - Vũng Tàu', N'0967500903', N'0336652675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN032', N'Nguyễn Phúc Lộc', N'Nam', CAST(N'1980-07-28' AS Date), N'Kinh', N'Nghệ Sĩ', N'Phường 17, Quận Gò Vấp, Thành phố Hồ Chí Minh', N'0338087827', N'0336778825')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN033', N'Nguyễn Thị Khánh Linh', N'Nữ', CAST(N'1985-09-25' AS Date), N'Kinh', N'Thu Ngân', N'Xã Vân Xuân, Huyện Vĩnh Tường, Vĩnh Phúc', N'0389448792', N'0336823675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN034', N'Nguyễn Hải Đăng Khoa', N'Nam', CAST(N'1992-10-20' AS Date), N'Kinh', N'Xây Dựng', N'Xã Mỹ Thuận, Huyện Tân Sơn, Phú Thọ', N'0987159117', N'0336775675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN035', N'Nguyễn Minh Nghĩa', N'Nam', CAST(N'1979-06-09' AS Date), N'Kinh', N'Nông Dân', N'Xã Hoàng Lương, Huyện Hiệp Hòa, Bắc Giang', N'0394728598', N'0982778237')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN036', N'Nguyễn Thủy Tiên', N'Nữ', CAST(N'1999-11-09' AS Date), N'Kinh', N'Kiểm Toán', N'Xã Hiệp Hòa, Thị xã Quảng Yên, Quảng Ninh', N'0333915393', N'0336482375')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN037', N'Tạ Thị Như Ý', N'Nữ', CAST(N'2009-08-02' AS Date), N'Kinh', N'Học sinh', N'Xã Khánh Xuân, Huyện Lộc Bình, Lạng Sơn', N'0363210215', N'0335765675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN038', N'Nguyễn Thị Hồng Ngọc', N'Nữ', CAST(N'1984-12-30' AS Date), N'Kinh', N'Lập Trình Viên', N'Xã Bảo Lý, Huyện Phú Bình, Thái Nguyên', N'0964575125', N'0336890675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN039', N'Phạm Lê Tấn Phát', N'Nam', CAST(N'1987-04-26' AS Date), N'Kinh', N'Kỹ Sư Phần Mềm', N'Xã Bảo Hiệu, Huyện Yên Thủy, Hoà Bình', N'0984445689', N'0336776575')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN040', N'Phan Như Nguyện', N'Nữ', CAST(N'1977-09-09' AS Date), N'Kinh', N'Phụ Bếp', N'Thị trấn Vinh Quang, Huyện Hoàng Su Phì, Hà Giang', N'0932121619', N'0336890275')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN041', N'Phạm Đoàn Hạnh San', N'Nữ', CAST(N'2002-01-06' AS Date), N'Kinh', N'Công Nhân', N'Xã Chân Sơn, Huyện Yên Sơn, Tuyên Quang', N'0982536087', N'0336775765')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN042', N'Phạm Minh Nhân', N'Nam', CAST(N'1981-10-10' AS Date), N'Kinh', N'Thư Ký', N'Phường Bình Minh, Thành phố Lào Cai, Lào Cai', N'0989702608', N'0336777765')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN043', N'Đỗ Quốc Thịnh', N'Nam', CAST(N'1990-08-02' AS Date), N'Kinh', N'Giám Đốc', N'Phường Hàng Bồ, Quận Hoàn Kiếm, Hà Nội', N'0938462665', N'0336545475')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN044', N'Lê Tấn Phát', N'Nam', CAST(N'2006-07-02' AS Date), N'Kinh', N'Học sinh', N'Xã Ô Lâm, Huyện Tri Tôn, An Giang', N'0374799679', N'0336775002')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN045', N'Nguyễn Ngọc Khánh Thy', N'Nữ', CAST(N'2010-12-15' AS Date), N'Kinh', N'Học sinh', N'Xã Hòa Điền, Huyện Kiên Lương, Kiên Giang', N'0369068104', N'0336732475')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN046', N'Thạch Ngọc Thiên', N'Nam', CAST(N'2004-06-12' AS Date), N'Kinh', N'Bán Hàng', N'Phường An Khánh, Quận Ninh Kiều, Cần Thơ', N'0354730520', N'0339087675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN047', N'Nguyễn Ngọc Như Thảo', N'Nữ', CAST(N'2003-11-14' AS Date), N'Kinh', N'Nhân Viên', N'Xã Hoả Tiến, Thành phố Vị Thanh, Hậu Giang', N'0386097194', N'0331234675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN048', N'Trần Minh Thư', N'Nữ', CAST(N'1995-09-02' AS Date), N'Kinh', N'Thợ May', N'Xã Kế Thành, Huyện Kế Sách, Sóc Trăng', N'0378203155', N'0336774345')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN049', N'Trần Minh Anh', N'Nữ', CAST(N'1998-03-26' AS Date), N'Kinh', N'Nhà Văn', N'Xã Vĩnh Lộc, Huyện Hồng Dân, Bạc Liêu', N'0339508877', N'0336012675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN050', N'Nguyễn Võ Kim Tuyền', N'Nữ', CAST(N'2000-10-12' AS Date), N'Kinh', N'Sinh Viên', N'Xã Khánh Lâm, Huyện U Minh, Cà Mau', N'0964617739', N'0336232375')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN051', N'Tạ Minh Khang', N'Nam', CAST(N'2002-04-12' AS Date), N'Kinh', N'Thợ Xăm', N'Phường Cầu Kho, Quận 1, Thành phố Hồ Chí Minh', N'0339127846', N'0336554675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN052', N'Nguyễn Minh Huy', N'Nam', CAST(N'1994-05-29' AS Date), N'Kinh', N'Thợ Làm Tóc', N'Phường 03, Quận Gò Vấp, Thành phố Hồ Chí Minh', N'0964244749', N'0336241275')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN053', N'Lê Phúc Lập', N'Nam', CAST(N'1991-06-01' AS Date), N'Kinh', N'Thợ Hàn', N'Phường 5, Thành phố Tân An, Long An', N'0373058545', N'0336721545')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN054', N'Hồ Hoàng Thiên Ngân', N'Nữ', CAST(N'1992-02-12' AS Date), N'Kinh', N'Bác Sĩ Thú Y', N'Xã Tân Thuận Tây, Thành phố Cao Lãnh, Đồng Tháp', N'0918623281', N'0333327675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN055', N'Phạm Ánh Ngọc', N'Nữ', CAST(N'1999-11-10' AS Date), N'Kinh', N'Bồi Bàn', N'Phường 8, Thành phố Mỹ Tho, Tiền Giang', N'0345552324', N'0334223675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN056', N'Nguyễn Thiện Nhân', N'Nữ', CAST(N'2007-08-22' AS Date), N'Kinh', N'Học sinh', N'Xã Phước Tuy, Huyện Cần Đước, Long An', N'0907861770', N'0336434375')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN057', N'Nguyễn Diễm Phương', N'Nữ', CAST(N'2005-06-27' AS Date), N'Kinh', N'Sinh Viên', N'Phường Tân Dân, Thành phố Việt Trì, Phú Thọ', N'0979227047', N'0334435675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN058', N'Trần Thị Huỳnh Trân', N'Nữ', CAST(N'1996-10-23' AS Date), N'Kinh', N'Marketing', N'Xã Minh Quang, Huyện Bình Xuyên, Vĩnh Phúc', N'0949918855', N'0336766575')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN059', N'Nguyễn Nhựt Trường', N'Nam', CAST(N'2001-02-19' AS Date), N'Kinh', N'Bảo Vệ', N'Xã Thống Nhất, Huyện Hạ Lang, Cao Bằng', N'0333546401', N'0336452675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN060', N'Nguyễn Phương Nghi', N'Nữ', CAST(N'2009-01-19' AS Date), N'Kinh', N'Học sinh', N'Xã Đồng Yên, Huyện Bắc Quang, Hà Giang', N'0397005371', N'0336775675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN061', N'Nguyễn Ngọc Bích Trâm', N'Nữ', CAST(N'2000-08-06' AS Date), N'Kinh', N'Thu Ngân', N'Phường Kim Mã, Quận Ba Đình, Hà Nội', N'0332695510', N'0336371675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN062', N'Phan Thị Mỹ Dung', N'Nữ', CAST(N'1999-12-30' AS Date), N'Kinh', N'Công Nhân', N'Phường Hàng Bột, Quận Đống Đa, Hà Nội', N'0347676566', N'0336372675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN063', N'Lương Phước Tài', N'Nam', CAST(N'2012-08-05' AS Date), N'Kinh', N'Học sinh', N'Xã Đồng Phong, Huyện Nho Quan, Ninh Bình', N'0377153518', N'0336284675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN064', N'Nguyễn Phúc Khang', N'Nam', CAST(N'1998-05-24' AS Date), N'Kinh', N'Trưởng Phòng', N'Thị trấn Tân Phú, Huyện Tân Phú, Đồng Nai', N'0335942063', N'0332345675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN065', N'Nguyễn Phạm Thanh Liêm', N'Nam', CAST(N'1980-08-15' AS Date), N'Kinh', N'Lập Trình Viên', N'Xã Cam Hiệp Nam, Huyện Cam Lâm, Khánh Hòa', N'0343684803', N'0336992675')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN066', N'Nguyễn Thị Phương Thảo', N'Nữ', CAST(N'1992-10-10' AS Date), N'Kinh', N'Chuyên Viên Tư Vấn', N'Xã Xích Thổ, Huyện Nho Quan, Ninh Bình', N'0339383034', N'0931100700')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN067', N'Triệu Duy Khanh', N'Nam', CAST(N'2000-12-10' AS Date), N'Kinh', N'Công Nhân', N'Xã Phước Tân, Huyện Bác Ái, Ninh Thuận', N'0949983779', N'0389863996')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN068', N'Đào Quang Hiếu', N'Nam', CAST(N'1997-05-04' AS Date), N'Kinh', N'Nghệ Sĩ', N'Xã Phú Lạc, Huyện Tuy Phong, Bình Thuận', N'0932734610', N'0966446148')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN069', N'Danh Thanh Sang', N'Nam', CAST(N'2013-12-11' AS Date), N'Kinh', N'Học sinh', N'Xã Đắk Man, Huyện Đắk Glei, Kon Tum', N'0326912379', N'0336525984')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN070', N'Nguyễn Huỳnh Nhật An', N'Nữ', CAST(N'2016-02-10' AS Date), N'Kinh', N'Học sinh', N'Xã Chư Á, Thành phố Pleiku, Gia Lai', N'0852877355', N'0377589150')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN071', N'Lương Minh Hiếu', N'Nam', CAST(N'2011-06-05' AS Date), N'Kinh', N'Học sinh', N'Xã Phước Trung, Huyện Bác Ái, Ninh Thuận', N'0389553583', N'0367082276')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN072', N'Lê Trọng Khang', N'Nam', CAST(N'2017-02-20' AS Date), N'Kinh', N'Học sinh', N'Xã Đắk Plao, Huyện Đăk Glong, Đắk Nông', N'0326959455', N'0795594406')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN073', N'Nguyễn Phạm Thùy Linh', N'Nữ', CAST(N'1984-09-12' AS Date), N'Kinh', N'Thợ May', N'Xã Trạm Hành, Thành phố Đà Lạt, Lâm Đồng', N'0374551208', N'0368036523')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN074', N'Nguyễn Nhật Huy', N'Nam', CAST(N'1998-09-21' AS Date), N'Kinh', N'Thợ Hồ', N'Xã Thanh Phú, Thị xã Bình Long, Bình Phước', N'0974419626', N'0702535812')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN075', N'Võ Trọng Nhân', N'Nam', CAST(N'1997-10-22' AS Date), N'Kinh', N'Nhân Viên Ngân Hàng', N'Xã Tân Lập, Huyện Tân Biên, Tây Ninh', N'0389156265', N'0358974968')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN076', N'Nguyễn Thảo Như', N'Nữ', CAST(N'1994-01-20' AS Date), N'Kinh', N'Kinh Doanh', N'Phường Suối Tre, Thành phố Long Khánh, Đồng Nai', N'0356500019', N'0979190626')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN077', N'Nguyễn Duy Phúc', N'Nam', CAST(N'2008-05-01' AS Date), N'Kinh', N'Học sinh', N'Phường Rạch Dừa, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', N'0977537287', N'0987717624')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN078', N'Đoàn Văn Quí', N'Nam', CAST(N'1994-02-26' AS Date), N'Kinh', N'Công Nhân', N'Phường Tân Thới Nhất, Quận 12, Thành phố Hồ Chí Minh', N'0919089415', N'0374433219')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN079', N'Tạ Thị Khánh Vy', N'Nữ', CAST(N'1982-09-28' AS Date), N'Kinh', N'Giám Đốc', N'Xã Công Hải, Huyện Thuận Bắc, Ninh Thuận', N'0932839089', N'0357779457')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN080', N'Võ Thị Ánh Dương', N'Nữ', CAST(N'2000-12-15' AS Date), N'Kinh', N'Nhân Viên Văn Phòng', N'Xã Vĩnh An, Huyện Tây Sơn, Bình Định', N'0854665522', N'0357402276')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN081', N'Nguyễn Văn Khang', N'Nam', CAST(N'2001-05-26' AS Date), N'Kinh', N'Marketing', N'Xã Ba Vinh, Huyện Ba Tơ, Quảng Ngãi', N'0355370573', N'0333093135')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN082', N'Nguyễn Thị Ngọc Ngân', N'Nữ', CAST(N'1995-12-01' AS Date), N'Kinh', N'Kiểm Toán', N'Xã Tam Anh Bắc, Huyện Núi Thành, Quảng Nam', N'0975584055', N'0357364731')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN083', N'Lê Ngọc Anh', N'Nữ', CAST(N'1986-05-02' AS Date), N'Kinh', N'Doanh Nhân', N'Phường Mân Thái, Quận Sơn Trà, Đà Nẵng', N'0971028039', N'0333744526')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN084', N'Nguyễn Xuân Mai', N'Nữ', CAST(N'1989-08-09' AS Date), N'Kinh', N'Trưởng Phòng', N'Xã Vinh Hưng, Huyện Phú Lộc, Thừa Thiên Huế', N'0977224549', N'0906414917')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN085', N'Nguyễn Trần Bảo Thoa', N'Nữ', CAST(N'1989-04-19' AS Date), N'Kinh', N'Thợ Làm Tóc', N'Xã Triệu Tài, Huyện Triệu Phong, Quảng Trị', N'0979146078', N'0348494969')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN086', N'Nguyễn Minh Thái', N'Nam', CAST(N'1975-08-10' AS Date), N'Kinh', N'Kỹ Sư Xây Dựng', N'Xã Tân Long, Huyện Hướng Hóa, Quảng Trị', N'0395525637', N'0337441077')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN087', N'Nguyễn Thanh Tuyền', N'Nữ', CAST(N'2003-12-10' AS Date), N'Kinh', N'Sinh Viên', N'Xã Gia Ninh, Huyện Quảng Ninh, Quảng Bình', N'0969615672', N'0932561208')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN088', N'Nguyễn Bảo Yến', N'Nữ', CAST(N'1979-10-16' AS Date), N'Kinh', N'Kinh Doanh', N'Xã Kỳ Sơn, Huyện Kỳ Anh, Hà Tĩnh', N'0335651758', N'0707252275')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN089', N'Đỗ Quốc Thịnh', N'Nam', CAST(N'1988-09-10' AS Date), N'Kinh', N'Thợ Chụp Ảnh', N'Xã Xuân Lam, Huyện Hưng Nguyên, Nghệ An', N'0333309600', N'0987659112')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN090', N'Nguyễn Trung Trực', N'Nam', CAST(N'2015-10-02' AS Date), N'Kinh', N'Học sinh', N'Xã Gia Sinh, Huyện Gia Viễn, Ninh Bình', N'0336018378', N'0379974185')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN091', N'Bùi Xuân Vy', N'Nữ', CAST(N'1999-02-20' AS Date), N'Kinh', N'Bảo Vệ', N'Xã Hải Bắc, Huyện Hải Hậu, Nam Định', N'0989908539', N'0378913247')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN092', N'Nguyễn Ngọc Quỳnh Quyên', N'Nữ', CAST(N'1979-06-20' AS Date), N'Kinh', N'Đầu Bếp', N'Xã Nhân Bình, Huyện Lý Nhân, Hà Nam', N'0988510594', N'0352342424')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN093', N'Võ Thiên Phụng', N'Nữ', CAST(N'1995-09-22' AS Date), N'Kinh', N'Thợ May', N'Thị trấn Đông Hưng, Huyện Đông Hưng, Thái Bình', N'0347307435', N'0375805042')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN094', N'Nguyễn Ngọc Duy', N'Nam', CAST(N'2004-12-19' AS Date), N'Kinh', N'Sinh Viên', N'Xã An Viên, Huyện Tiên Lữ, Hưng Yên', N'0349889064', N'0347305014')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN095', N'Tạ Văn Minh Đạt', N'Nam', CAST(N'1970-10-01' AS Date), N'Kinh', N'Xây Dựng', N'Thị trấn Cát Bà, Huyện Cát Hải, Hải Phòng', N'0987271509', N'0347120642')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN096', N'Nguyễn Văn Hưng', N'Nam', CAST(N'1993-11-27' AS Date), N'Kinh', N'Thợ Làm Tóc', N'Xã Vĩnh Hòa, Huyện Ninh Giang, Hải Dương', N'0353323692', N'0981932419')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN097', N'Huỳnh Nhật Thanh', N'Nam', CAST(N'1992-09-26' AS Date), N'Kinh', N'Thư Ký', N'Xã Cao Đức, Huyện Gia Bình, Bắc Ninh', N'0386957221', N'0335796056')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN098', N'Nguyễn Bảo Châu', N'Nữ', CAST(N'1986-04-03' AS Date), N'Kinh', N'Thông Dịch Viên', N'Xã Vũ Di, Huyện Vĩnh Tường, Vĩnh Phúc', N'0342017781', N'0932525138')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN099', N'Huỳnh Thị Vân Anh', N'Nữ', CAST(N'1984-10-29' AS Date), N'Kinh', N'Nhân Viên Ngân Hàng', N'Xã Đào Xá, Huyện Thanh Thuỷ, Phú Thọ', N'0333344753', N'0977141602')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN100', N'Huỳnh Tuấn Khanh', N'Nam', CAST(N'2016-01-11' AS Date), N'Kinh', N'Học sinh', N'Xã Đại Thành, Huyện Hiệp Hòa, Bắc Giang', N'0363999756', N'0392936726')
GO
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN101', N'Nguyễn Thị Mai', N'Nữ', CAST(N'1995-10-15' AS Date), N'Kinh', N'Bác sĩ', N'Phường Bình Hưng Hòa, Quận Bình Tân, Thành phố Hồ Chí Minh', N'0901234567', N'0925232811')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN102', N'Trần Thị Lan', N'Nữ', CAST(N'1980-05-20' AS Date), N'Kinh', N'Giáo viên', N'Xã Xuân Thới Đông, Huyện Hóc Môn, Thành phố Hồ Chí Minh', N'0987654321', N'0379180921')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN103', N'Hoàng Thị Hương', N'Nữ', CAST(N'1976-03-12' AS Date), N'Kinh', N'Nhân viên văn phòng', N'Phường 5, Thành phố Tân An, Tỉnh Long An', N'0976543210', N'0367885447')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN104', N'Lê Thị Thanh Hằng', N'Nữ', CAST(N'1988-08-08' AS Date), N'Kinh', N'Kỹ sư', N'Xã Hướng Thọ Phú, Thành phố Tân An, Tỉnh Long An', N'0987654321', N'0362641597')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN105', N'Phạm Thị Ngọc Anh', N'Nữ', CAST(N'1999-09-25' AS Date), N'Kinh', N'Sinh viên', N'Phường Khánh Hậu, Thành phố Tân An, Tỉnh Long An', N'0909876543', N'0768479949')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN106', N'Nguyễn Văn Long', N'Nam', CAST(N'1975-11-30' AS Date), N'Kinh', N'Chủ doanh nghiệp', N'Xã Tuyên Thạnh, Thị xã Kiến Tường, Tỉnh Long An', N'0912345678', N'0974797278')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN107', N'Đặng Văn Hùng', N'Nam', CAST(N'1985-07-05' AS Date), N'Kinh', N'Tiến sĩ', N'Phường 4, Thành phố Mỹ Tho, Tỉnh Tiền Giang', N'0987654321', N'0364025864')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN108', N'Lê Thị Thu', N'Nữ', CAST(N'1992-12-20' AS Date), N'Kinh', N'Kỹ thuật viên', N'Phường Tân Long, Thành phố Mỹ Tho, Tỉnh Tiền Giang', N'0912345678', N'0971896307')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN109', N'Phan Văn Dũng', N'Nam', CAST(N'1982-04-08' AS Date), N'Kinh', N'Tài xế', N'Xã Mỹ Phong, Thành phố Mỹ Tho, Tỉnh Tiền Giang', N'0987654321', N'0365849607')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN110', N'Trần Thị Kim Ngân', N'Nữ', CAST(N'1989-11-15' AS Date), N'Kinh', N'Quản lý', N'Xã Long Hưng, Thị xã Gò Công, Tỉnh Tiền Giang', N'0901234567', N'0987299149')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN111', N'Vũ Văn Phúc', N'Nam', CAST(N'1996-02-25' AS Date), N'Kinh', N'Sinh viên', N'Xã Bình Đông, Thị xã Gò Công, Tỉnh Tiền Giang', N'0976543210', N'0384554480')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN112', N'Nguyễn Thị Trinh', N'Nữ', CAST(N'1979-08-30' AS Date), N'Kinh', N'Chuyên viên', N'Xã Mỹ Phước Tây, Thị xã Cai Lậy, Tỉnh Tiền Giang', N'0987654321', N'0348730107')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN113', N'Phạm Văn Đức', N'Nam', CAST(N'1987-06-10' AS Date), N'Kinh', N'Kỹ sư', N'Xã Tân Hòa Đông, Huyện Tân Phước, Tỉnh Tiền Giang', N'0901234567', N'0969274165')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN114', N'Lê Thị Hà', N'Nữ', CAST(N'1993-03-01' AS Date), N'Kinh', N'Bác sĩ', N'Xã Tân Hòa Thành, Huyện Tân Phước, Tỉnh Tiền Giang', N'0976543210', N'0397389615')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN115', N'Nguyễn Văn Tú', N'Nam', CAST(N'1983-09-18' AS Date), N'Kinh', N'Nhân viên bán hàng', N'Xã Hậu Mỹ Bắc A, Huyện Cái Bè, Tỉnh Tiền Giang', N'0987654321', N'0983189246')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN116', N'Trần Thị Thanh', N'Nữ', CAST(N'1998-07-20' AS Date), N'Kinh', N'Sinh viên', N'Xã Hậu Thành, Huyện Cái Bè, Tỉnh Tiền Giang', N'0901234567', N'0969094343')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN117', N'Phan Văn Hưng', N'Nam', CAST(N'2018-05-05' AS Date), N'Kinh', N'Học sinh', N'Xã Phú Cường, Huyện Cai Lậy, Tỉnh Tiền Giang', N'0976543210', N'0869311403')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN118', N'Vũ Thị Lan', N'Nữ', CAST(N'1990-10-10' AS Date), N'Kinh', N'Trưởng phòng', N'Xã Tân Hương, Huyện Châu Thành, Tỉnh Tiền Giang', N'0987654321', N'0986710492')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN119', N'Nguyễn Văn An', N'Nam', CAST(N'1986-01-02' AS Date), N'Kinh', N'Tiến sĩ', N'Xã Điềm Hy, Huyện Châu Thành, Tỉnh Tiền Giang', N'0901234567', N'0343674596')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN120', N'Trần Thị Minh', N'Nữ', CAST(N'1997-12-05' AS Date), N'Kinh', N'Sinh viên', N'Xã Nhị Bình, Huyện Châu Thành, Tỉnh Tiền Giang', N'0976543210', N'0396524770')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN121', N'Đinh Văn Quân', N'Nam', CAST(N'1984-08-08' AS Date), N'Kinh', N'Tài xế', N'Xã Bình Trưng, Huyện Châu Thành, Tỉnh Tiền Giang', N'0987654321', N'0394581635')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN122', N'Lê Thị Diệu Hằng', N'Nữ', CAST(N'1991-11-25' AS Date), N'Kinh', N'Quản lý', N'Phường 4, Thành phố Bến Tre, Tỉnh Bến Tre', N'0901234567', N'0386468192')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN123', N'Nguyễn Văn Tuấn', N'Nam', CAST(N'2017-10-30' AS Date), N'Kinh', N'Học sinh', N'Xã Sơn Đông, Thành phố Bến Tre, Tỉnh Bến Tre', N'0976543210', N'0983610728')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN124', N'Phạm Thị Hồng', N'Nữ', CAST(N'2014-05-15' AS Date), N'Kinh', N'Học sinh', N'Xã Nhơn Thạnh, Thành phố Bến Tre, Tỉnh Bến Tre', N'0987654321', N'0862116043')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN125', N'Trần Văn Hải', N'Nam', CAST(N'2015-02-18' AS Date), N'Kinh', N'Học sinh', N'Xã Phú An Hòa, Huyện Châu Thành, Tỉnh Bến Tre', N'0901234567', N'0966634792')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN126', N'Lê Thị Hương', N'Nữ', CAST(N'2015-01-01' AS Date), N'Kinh', N'Học sinh', N'Xã Đại Phúc, Huyện Càng Long, Tỉnh Trà Vinh', N'0976543210', N'0868604087')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN127', N'Phan Văn Hùng', N'Nam', CAST(N'1982-09-05' AS Date), N'Kinh', N'Kỹ sư', N'Xã Đức Mỹ, Huyện Càng Long, Tỉnh Trà Vinh', N'0987654321', N'0385351290')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN128', N'Vũ Thị Hải', N'Nữ', CAST(N'1987-06-20' AS Date), N'Kinh', N'Sinh viên', N'Xã Nguyệt Hóa, Huyện Châu Thành, Tỉnh Trà Vinh', N'0901234567', N'0393569639')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN129', N'Nguyễn Văn Khánh', N'Nam', CAST(N'1999-04-25' AS Date), N'Kinh', N'Nhân viên bán hàng', N'Phường Tân Ngãi, Thành phố Vĩnh Long, Tỉnh Vĩnh Long', N'0976543210', N'0866171469')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN130', N'Trần Thị Thúy', N'Nữ', CAST(N'1993-03-10' AS Date), N'Kinh', N'Tài xế', N'Phường Tân Hội, Thành phố Vĩnh Long, Tỉnh Vĩnh Long', N'0987654321', N'0862296846')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN131', N'Lê Văn Hải', N'Nam', CAST(N'1988-08-05' AS Date), N'Kinh', N'Tiến sĩ', N'Xã An Bình, Huyện Long Hồ, Tỉnh Vĩnh Long', N'0901234567', N'0362270451')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN132', N'Nguyễn Thị Nhung', N'Nữ', CAST(N'1989-12-20' AS Date), N'Kinh', N'Quản lý', N'Xã Tân Thuận Tây, Thành phố Cao Lãnh, Tỉnh Đồng Tháp', N'0976543210', N'0397935052')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN133', N'Phạm Văn Đức', N'Nam', CAST(N'1991-07-10' AS Date), N'Kinh', N'Trưởng phòng', N'Xã Tân Thuận Đông, Thành phố Cao Lãnh, Tỉnh Đồng Tháp', N'0987654321', N'0352218547')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN134', N'Lê Thị Tú', N'Nữ', CAST(N'1984-04-01' AS Date), N'Kinh', N'Chuyên viên', N'Phường 4, Thành phố Sa Đéc, Tỉnh Đồng Tháp', N'0901234567', N'0392937476')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN135', N'Nguyễn Văn Tuấn', N'Nam', CAST(N'1976-11-15' AS Date), N'Kinh', N'Kỹ sư', N'Xã Bình Thạnh, Thành phố Hồng Ngự, Tỉnh Đồng Tháp', N'0976543210', N'0356466385')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN136', N'Vũ Thị Ngọc', N'Nữ', CAST(N'1990-08-30' AS Date), N'Kinh', N'Sinh viên', N'Thị trấn Sa Rài, Huyện Tân Hồng, Tỉnh Đồng Tháp', N'0987654321', N'0354525782')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN137', N'Trần Lê Minh Thư', N'Nữ', CAST(N'1983-03-20' AS Date), N'Kinh', N'Nhân viên văn phòng', N'Phường Đông Xuyên, Thành phố Long Xuyên, Tỉnh An Giang', N'0901234567', N'0962370132')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN138', N'Nguyễn Thị Hương', N'Nữ', CAST(N'1997-02-05' AS Date), N'Kinh', N'Bác sĩ', N'Xã Vĩnh Tế, Thành phố Châu Đốc, Tỉnh An Giang', N'0976543210', N'0326661705')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN139', N'Phan Văn Dũng', N'Nam', CAST(N'1980-01-10' AS Date), N'Kinh', N'Tiến sĩ', N'Xã Hiệp Xương, Huyện Phú Tân, Tỉnh An Giang', N'0987654321', N'0935376012')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN140', N'Lê Thị Thảo', N'Nữ', CAST(N'1989-07-25' AS Date), N'Kinh', N'Kỹ thuật viên', N'Xã Mỹ Lâm, Huyện Hòn Đất, Tỉnh Kiên Giang', N'0901234567', N'0333641746')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN141', N'Nguyễn Văn Tuấn', N'Nam', CAST(N'1995-06-20' AS Date), N'Kinh', N'Quản lý', N'Xã Tân Hoà, Huyện Tân Hiệp, Tỉnh Kiên Giang', N'0976543210', N'0335896839')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN142', N'Phạm Thị Hồng', N'Nữ', CAST(N'1992-12-15' AS Date), N'Kinh', N'Sinh viên', N'Phường Lê Bình, Quận Cái Răng, Thành phố Cần Thơ', N'0987654321', N'0963494307')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN143', N'Trần Văn Đức', N'Nam', CAST(N'1987-11-30' AS Date), N'Kinh', N'Tiến sĩ', N'Phường Phú Thứ, Quận Cái Răng, Thành phố Cần Thơ', N'0901234567', N'0787696239')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN144', N'Nguyễn Thị Lan', N'Nữ', CAST(N'1998-05-20' AS Date), N'Kinh', N'Chuyên viên', N'Xã Thới Hưng, Huyện Cờ Đỏ, Thành phố Cần Thơ', N'0976543210', N'0977093747')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN145', N'Vũ Văn Tuấn', N'Nam', CAST(N'1983-08-18' AS Date), N'Kinh', N'Kỹ sư', N'Thị trấn Mái Dầm, Huyện Châu Thành, Tỉnh Hậu Giang', N'0987654321', N'0902171050')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN146', N'Lê Thị Mai', N'Nữ', CAST(N'1980-04-10' AS Date), N'Kinh', N'Bác sĩ', N'Xã Phương Bình, Huyện Phụng Hiệp, Tỉnh Hậu Giang', N'0901234567', N'0981536443')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN147', N'Nguyễn Văn Thanh', N'Nam', CAST(N'1991-09-05' AS Date), N'Kinh', N'Nhân viên bán hàng', N'Xã Nhơn Mỹ, Huyện Kế Sách, Tỉnh Sóc Trăng', N'0976543210', N'0796501176')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN148', N'Phạm Thị Thu Hương', N'Nữ', CAST(N'1984-03-01' AS Date), N'Kinh', N'Tài xế', N'Xã Vĩnh Trạch, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', N'0987654321', N'0355544663')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN149', N'Trần Văn Long', N'Nam', CAST(N'1990-10-15' AS Date), N'Kinh', N'Trưởng phòng', N'Thị trấn U Minh, Huyện U Minh, Tỉnh Cà Mau', N'0901234567', N'0327600655')
INSERT [dbo].[BenhNhan] ([MaBN], [HoTenBN], [GioiTinh], [NgaySinh], [DanToc], [NgheNghiep], [DiaChi], [SoDT], [SoDTNN]) VALUES (N'BN150', N'Nguyễn Thị Thùy Dung', N'Nữ', CAST(N'1993-07-20' AS Date), N'Kinh', N'Sinh viên', N'Xã Trí Phải, Huyện Thới Bình, Tỉnh Cà Mau', N'0976543210', N'0586500510')
GO
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN001', N'DV011', N'PKB001', N'NV051')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN001', N'DV016', N'PKB001', N'NV051')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN002', N'DV011', N'PKB002', N'NV051')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN002', N'DV016', N'PKB002', N'NV051')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN004', N'DV013', N'PKB004', N'NV084')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN004', N'DV016', N'PKB004', N'NV084')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN025', N'DV003', N'PKB025', N'NV074')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN025', N'DV011', N'PKB025', N'NV074')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN025', N'DV025', N'PKB025', N'NV074')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN029', N'DV001', N'PKB029', N'NV091')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN029', N'DV002', N'PKB029', N'NV091')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN029', N'DV004', N'PKB029', N'NV091')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN039', N'DV002', N'PKB039', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN039', N'DV003', N'PKB039', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN039', N'DV004', N'PKB039', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN039', N'DV011', N'PKB039', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN039', N'DV024', N'PKB039', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN040', N'DV002', N'PKB040', N'NV095')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN040', N'DV004', N'PKB040', N'NV095')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN040', N'DV005', N'PKB040', N'NV095')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN041', N'DV002', N'PKB041', N'NV111')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN041', N'DV003', N'PKB041', N'NV111')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN041', N'DV004', N'PKB041', N'NV111')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN041', N'DV011', N'PKB041', N'NV111')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN041', N'DV028', N'PKB041', N'NV111')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN042', N'DV002', N'PKB042', N'NV063')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN042', N'DV003', N'PKB042', N'NV063')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN042', N'DV004', N'PKB042', N'NV063')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN047', N'DV003', N'PKB047', N'NV096')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN049', N'DV003', N'PKB049', N'NV098')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN049', N'DV013', N'PKB049', N'NV098')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN049', N'DV025', N'PKB049', N'NV098')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN050', N'DV003', N'PKB050', N'NV114')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN050', N'DV013', N'PKB050', N'NV114')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN050', N'DV022', N'PKB050', N'NV114')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN054', N'DV003', N'PKB054', N'NV066')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN080', N'DV003', N'PKB080', N'NV122')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN084', N'DV001', N'PKB084', N'NV139')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN084', N'DV002', N'PKB084', N'NV139')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN084', N'DV004', N'PKB084', N'NV139')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN094', N'DV002', N'PKB094', N'NV143')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN094', N'DV003', N'PKB094', N'NV143')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN094', N'DV004', N'PKB094', N'NV143')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN095', N'DV002', N'PKB095', N'NV163')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN095', N'DV004', N'PKB095', N'NV163')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN095', N'DV005', N'PKB095', N'NV163')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN096', N'DV002', N'PKB096', N'NV178')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN096', N'DV003', N'PKB096', N'NV178')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN096', N'DV004', N'PKB096', N'NV178')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN097', N'DV002', N'PKB097', N'NV127')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN097', N'DV004', N'PKB097', N'NV127')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN097', N'DV007', N'PKB097', N'NV127')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN102', N'DV003', N'PKB102', N'NV144')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN104', N'DV003', N'PKB104', N'NV150')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN105', N'DV003', N'PKB104', N'NV150')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN109', N'DV003', N'PKB109', N'NV149')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN134', N'DV003', N'PKB134', N'NV173')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN138', N'DV001', N'PKB138', N'NV190')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN138', N'DV002', N'PKB138', N'NV190')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN138', N'DV004', N'PKB138', N'NV190')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN148', N'DV002', N'PKB148', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN148', N'DV003', N'PKB148', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN148', N'DV004', N'PKB148', N'NV079')
INSERT [dbo].[BenhNhan_DichVu] ([MaBN], [MaDV], [MaPhieuKB], [MaNVYeuCau]) VALUES (N'BN150', N'DV001', N'PKB150.1', N'NV060')
GO
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT001', N'TH001', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT001', N'TH002', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT001', N'TH200', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT001.1', N'TH001', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT001.1', N'TH002', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT001.1', N'TH200', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT002', N'TH077', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT002', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT002.1', N'TH077', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT002.1', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT003', N'TH077', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT003', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT003.1', N'TH077', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT003.1', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT004', N'TH012', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT004', N'TH112', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT004.1', N'TH012', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT004.1', N'TH112', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT005', N'TH077', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT005', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT005', N'TH115', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT005.1', N'TH077', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT005.1', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT005.1', N'TH115', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT006', N'TH030', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT006', N'TH134', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT006.1', N'TH030', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT006.1', N'TH134', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT007', N'TH028', 2, N'1 ngày 2 lần', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT007', N'TH029', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT007.1', N'TH028', 2, N'1 ngày 2 lần', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT007.1', N'TH029', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT008', N'TH045', 2, N'1 ngày 2 lần', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT008', N'TH046', 4, N'1 ngày 2 lần', 44000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT008', N'TH065', 2, N'1 ngày 1 lần', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT008.1', N'TH045', 2, N'1 ngày 2 lần', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT008.1', N'TH046', 4, N'1 ngày 2 lần', 44000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT008.1', N'TH065', 2, N'1 ngày 1 lần', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT009', N'TH001', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT009', N'TH002', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT009', N'TH099', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT009.1', N'TH001', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT009.1', N'TH002', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT009.1', N'TH099', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT010', N'TH072', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT010', N'TH082', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT010', N'TH092', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT010.1', N'TH072', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT010.1', N'TH082', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT010.1', N'TH092', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT011', N'TH033', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT011', N'TH051', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT011', N'TH067', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT011.1', N'TH033', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT011.1', N'TH051', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT011.1', N'TH067', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT012', N'TH065', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT012', N'TH109', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT012', N'TH110', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT012.1', N'TH065', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT012.1', N'TH109', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT012.1', N'TH110', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT013', N'TH098', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT013', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT013', N'TH182', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT013.1', N'TH098', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT013.1', N'TH100', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT013.1', N'TH182', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT014', N'TH188', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT014', N'TH190', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT014', N'TH192', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT014.1', N'TH188', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT014.1', N'TH190', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT014.1', N'TH192', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT015', N'TH167', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT015', N'TH179', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT015.1', N'TH167', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT015.1', N'TH179', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT016', N'TH136', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT016', N'TH142', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT016.1', N'TH136', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT016.1', N'TH142', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT017', N'TH011', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT017', N'TH012', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT017', N'TH134', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT017.1', N'TH011', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT017.1', N'TH012', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT017.1', N'TH134', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018', N'TH008', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018', N'TH009', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018', N'TH010', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018', N'TH020', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018.1', N'TH008', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018.1', N'TH009', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018.1', N'TH010', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT018.1', N'TH020', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT019', N'TH012', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT019', N'TH020', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT019', N'TH022', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT019.1', N'TH012', 6, N'1 ngày 3 lần', 66000)
GO
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT019.1', N'TH020', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT019.1', N'TH022', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT020', N'TH004', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT020', N'TH012', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT020', N'TH015', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT020.1', N'TH004', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT020.1', N'TH012', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT020.1', N'TH015', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT021', N'TH013', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT021', N'TH014', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT021', N'TH015', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT021.1', N'TH013', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT021.1', N'TH014', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT021.1', N'TH015', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT022', N'TH016', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT022', N'TH089', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT022.1', N'TH016', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT022.1', N'TH089', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023', N'TH020', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023', N'TH022', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023', N'TH026', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023', N'TH030', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023.1', N'TH020', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023.1', N'TH022', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023.1', N'TH026', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT023.1', N'TH030', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT024', N'TH021', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT024', N'TH049', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT024', N'TH134', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT024.1', N'TH021', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT024.1', N'TH049', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT024.1', N'TH134', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT025', N'TH076', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT025', N'TH099', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT025', N'TH123', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT025.1', N'TH076', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT025.1', N'TH099', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT025.1', N'TH123', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT026', N'TH034', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT026', N'TH144', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT026', N'TH193', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT026.1', N'TH034', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT026.1', N'TH144', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT026.1', N'TH193', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT027', N'TH188', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT027', N'TH192', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT027.1', N'TH188', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT027.1', N'TH192', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT028', N'TH114', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT028', N'TH187', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT028', N'TH200', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT028.1', N'TH114', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT028.1', N'TH187', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT028.1', N'TH200', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT029', N'TH124', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT029', N'TH126', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT029.1', N'TH124', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT029.1', N'TH126', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030', N'TH113', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030', N'TH123', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030', N'TH143', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030', N'TH173', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.1', N'TH113', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.1', N'TH123', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.1', N'TH143', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.1', N'TH173', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.2', N'TH001', 2, N'2', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.2', N'TH004', 2, N'2', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT030.2', N'TH007', 2, N'2', 22000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT031', N'TH008', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT031', N'TH018', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT031', N'TH038', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT032', N'TH028', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT032', N'TH048', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT032', N'TH078', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT032', N'TH098', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT033', N'TH007', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT033', N'TH017', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT033', N'TH027', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT033', N'TH037', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT034', N'TH056', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT034', N'TH066', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT034', N'TH086', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT035', N'TH033', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT035', N'TH053', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT035', N'TH073', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT035', N'TH093', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT036', N'TH034', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT036', N'TH044', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT036', N'TH084', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT036', N'TH094', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT037', N'TH051', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT037', N'TH052', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT037', N'TH054', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT038', N'TH023', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT038', N'TH087', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT039', N'TH112', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT039', N'TH128', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT039', N'TH183', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT040', N'TH123', 3, N'1 ngày 3 lần', 33000)
GO
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT040', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT040', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT041', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT041', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT042', N'TH123', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT042', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT042', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT043', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT043', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT044', N'TH123', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT044', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT044', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT045', N'TH123', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT045', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT045', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT046', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT046', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT046', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT047', N'TH090', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT047', N'TH120', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT047', N'TH130', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT048', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT048', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT048', N'TH200', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT049', N'TH123', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT049', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT050', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT050', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT050', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT051', N'TH133', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT051', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT051', N'TH156', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT052', N'TH123', 3, N'1 ngày 3 lần', 33000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT052', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT052', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT053', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT053', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT054', N'TH136', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT054', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT054', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT055', N'TH087', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT055', N'TH136', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT056', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT056', N'TH129', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT056', N'TH139', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT057', N'TH007', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT057', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT058', N'TH133', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT058', N'TH139', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT058', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT059', N'TH124', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT059', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT060', N'TH101', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT060', N'TH102', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT060', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT061', N'TH103', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT061', N'TH104', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT061', N'TH105', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT062', N'TH106', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT062', N'TH107', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT063', N'TH108', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT063', N'TH109', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT063', N'TH110', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT064', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT064', N'TH112', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT065', N'TH113', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT065', N'TH114', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT066', N'TH115', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT066', N'TH116', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT066', N'TH117', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT067', N'TH118', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT067', N'TH119', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT068', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT068', N'TH113', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT069', N'TH001', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT069', N'TH002', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT069', N'TH006', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT070', N'TH009', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT070', N'TH098', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT070', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT071', N'TH122', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT071', N'TH166', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT071', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT072', N'TH098', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT072', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT072', N'TH198', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT073', N'TH109', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT073', N'TH138', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT073', N'TH140', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT074', N'TH013', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT074', N'TH018', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT074', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT075', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT075', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT076', N'TH166', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT076', N'TH177', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT076', N'TH188', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT077', N'TH133', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT077', N'TH144', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT077', N'TH155', 6, N'1 ngày 3 lần', 66000)
GO
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT078', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT078', N'TH122', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT078', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT079', N'TH100', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT079', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT079', N'TH198', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT079', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT080', N'TH195', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT080', N'TH196', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT080', N'TH197', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT081', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT081', N'TH194', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT082', N'TH191', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT082', N'TH192', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT082', N'TH193', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT083', N'TH124', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT083', N'TH165', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT083', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT084', N'TH127', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT084', N'TH137', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT084', N'TH197', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT085', N'TH097', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT085', N'TH175', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT086', N'TH002', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT086', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT086', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT087', N'TH007', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT087', N'TH009', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT087', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT088', N'TH010', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT088', N'TH108', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT088', N'TH109', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT089', N'TH019', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT089', N'TH189', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT089', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT090', N'TH154', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT090', N'TH163', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT091', N'TH112', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT091', N'TH153', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT092', N'TH022', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT092', N'TH098', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT092', N'TH121', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT093', N'TH156', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT093', N'TH157', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT093', N'TH189', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT094', N'TH120', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT094', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT095', N'TH112', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT095', N'TH134', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT096', N'TH154', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT096', N'TH173', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT096', N'TH174', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT097', N'TH182', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT097', N'TH193', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT098', N'TH128', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT098', N'TH153', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT098', N'TH184', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT099', N'TH155', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT099', N'TH164', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT100', N'TH133', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT100', N'TH144', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT101', N'TH143', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT101', N'TH166', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT101', N'TH175', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT102', N'TH103', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT102', N'TH138', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT102', N'TH193', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT103', N'TH104', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT103', N'TH105', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT104', N'TH009', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT104', N'TH035', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT104', N'TH189', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT105', N'TH175', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT105', N'TH184', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT106', N'TH175', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT106', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT106', N'TH178', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT107', N'TH165', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT107', N'TH179', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT108', N'TH164', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT108', N'TH167', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT109', N'TH134', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT109', N'TH135', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT109', N'TH163', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT110', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT110', N'TH153', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT111', N'TH112', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT111', N'TH165', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT111', N'TH178', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT112', N'TH110', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT112', N'TH111', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT113', N'TH134', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT113', N'TH195', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT114', N'TH183', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT114', N'TH187', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT115', N'TH138', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT115', N'TH155', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT115', N'TH193', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT116', N'TH177', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT116', N'TH183', 6, N'1 ngày 3 lần', 66000)
GO
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT117', N'TH185', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT117', N'TH189', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT118', N'TH163', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT118', N'TH165', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT118', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT119', N'TH173', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT119', N'TH184', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT120', N'TH145', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT120', N'TH192', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT121', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT121', N'TH200', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT122', N'TH120', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT122', N'TH130', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT123', N'TH122', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT123', N'TH134', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT123', N'TH176', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT124', N'TH123', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT124', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT125', N'TH125', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT125', N'TH127', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT125', N'TH135', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT126', N'TH019', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT126', N'TH023', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT126', N'TH137', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT127', N'TH021', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT127', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT128', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT128', N'TH191', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT129', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT129', N'TH191', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT130', N'TH189', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT130', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT131', N'TH133', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT131', N'TH145', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT132', N'TH145', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT132', N'TH146', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT132', N'TH167', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT133', N'TH155', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT133', N'TH177', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT133', N'TH187', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT134', N'TH133', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT134', N'TH188', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT135', N'TH134', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT135', N'TH144', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT136', N'TH135', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT136', N'TH165', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT137', N'TH132', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT137', N'TH175', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT137', N'TH183', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT138', N'TH167', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT138', N'TH189', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT140', N'TH165', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT140', N'TH166', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT141', N'TH113', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT141', N'TH115', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT142', N'TH098', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT142', N'TH152', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT143', N'TH122', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT143', N'TH198', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT144', N'TH113', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT144', N'TH185', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT144', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT145', N'TH185', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT145', N'TH186', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT145', N'TH196', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT146', N'TH187', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT146', N'TH189', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT146', N'TH190', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT147', N'TH191', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT147', N'TH192', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT147', N'TH193', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT148', N'TH194', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT148', N'TH195', 9, N'1 ngày 3 lần', 99000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT149', N'TH196', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT149', N'TH197', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT150', N'TH198', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT150', N'TH199', 6, N'1 ngày 3 lần', 66000)
INSERT [dbo].[ChiTietDonThuoc] ([MaDonThuoc], [MaThuoc], [SoLuong], [CachDung], [TongTien]) VALUES (N'DT150', N'TH200', 6, N'1 ngày 3 lần', 66000)
GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV1', N'Trưởng Khoa')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV2', N'Phó Khoa')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV3', N'Bác Sĩ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV4', N'Y Tá')
GO
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN1', N'Chuyên khoa Hồi sức và Chăm sóc cấp cứu', N'K1')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN10', N'Chuyên khoa Hồi sức', N'K3')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN12', N'Chuyên khoa Y tế Công cộng', N'K4')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN13', N'Chuyên khoa Y học Địa phương', N'K4')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN14', N'Chuyên khoa Nhi khoa Nội tiết', N'K5')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN15', N'Chuyên khoa Nhi khoa Hô hấp ', N'K5')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN16', N'Chuyên khoa Nhi khoa Tim mạch', N'K5')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN17', N'Chuyên khoa  Nhi khoa Tâm thần', N'K5')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN18', N'Chuyên khoa Phục hồi chức năng Thần kinh', N'K6')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN19', N'Chuyên khoa Phục hồi chức năng Vật lý', N'K6')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN2', N'Chuyên khoa Hồi sức Tim mạch', N'K1')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN21', N'Chuyên khoa Da liễu Dị ứng', N'K7')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN22', N'Chuyên khoa Da liễu Nội tiết', N'K7')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN23', N'Chuyên khoa Da liễu Laser', N'K7')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN24', N'Chuyên khoa Y học Thể thao', N'K8')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN25', N'Chuyên khoa Y học Thể thao Phẫu thuật', N'K8')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN26', N'Chuyên khoa Y học Thể thao Nội tiết', N'K8')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN27', N'Chuyên khoa Sản phụ khoa', N'K9')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN28', N'Chuyên khoa Y học Sinh sản', N'K9')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN29', N'Chuyên khoa Ung thư Phụ khoa', N'K9')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN3', N'Chuyên khoa Hồi sức Nội tiết ', N'K1')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN30', N'Chuyên khoa Thần kinh cận lâm sàng', N'K10')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN31', N'Chuyên khoa Điều trị Đau', N'K10')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN32', N'Chuyên khoa Học Tổng hợp Thần kinh', N'K10')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN33', N'Chuyên khoa Nha khoa Tổng quát', N'K11')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN34', N'Chuyên khoa Răng hàm mặt Phẫu thuật', N'K11')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN36', N'Chuyên khoa Hô hấp', N'K12')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN37', N'Chuyên khoa Y học cấp cứu', N'K12')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN38', N'Chuyên khoa Y học Hồi sức tích cực', N'K12')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN39', N'Chuyên khoa Ung thư Nội khoa', N'K13')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN4', N'Chuyên khoa Tim mạch', N'K2')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN40', N'Chuyên khoa Ung thư Ngoại khoa', N'K13')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN41', N'Chuyên khoa Ung thư Bức xạ', N'K13')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN42', N'Chuyên khoa Hóa trị liệu', N'K13')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN43', N'Chuyên khoa Tim mạch Nội khoa', N'K14')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN44', N'Chuyên khoa Tim mạch Ngoại khoa', N'K14')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN45', N'Chuyên khoa Tim mạch Nhi khoa', N'K14')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN46', N'Chuyên khoa Ngoại biên Tổng quát', N'K15')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN47', N'Chuyên khoa Ngoại biên Phẫu thuât', N'K15')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN49', N'Chuyên khoa Chấn thương chỉnh hình Tổng quát', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN5', N'Chuyên khoa Tiêu hóa', N'K2')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN50', N'Chuyên khoa Phẫu thuật chỉnh hình', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN51', N'Chuyên khoa Chấn thương cột sống', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN52', N'Chuyên khoa Chấn thương thể thao', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN53', N'Chuyên khoa Chấn thương gối và cẳng chân', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN54', N'Chuyên khoa Chấn thương vai và cánh tay', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN55', N'Chuyên khoa Chấn thương chân và cổ chân', N'K16')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN6', N'Chuyên khoa Nội tiết', N'K2')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN7', N'Chuyên khoa Huyết học', N'K2')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN8', N'Chuyên khoa Nhi khoa', N'K2')
INSERT [dbo].[ChuyenNganh] ([MaChuyenNganh], [TenChuyenNganh], [MaKhoa]) VALUES (N'CN9', N'Chuyên khoa Ngoại tiết niệu', N'K3')
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV001', N'Xét nghiệm ung bướu', 200000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV002', N'Xét nghiệm máu', 50000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV003', N'Chụp X-Quang', 300000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV004', N'Xét nghiệm nước tiểu', 80000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV005', N'Xét nghiệm da liễu', 1500000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV006', N'Chụp cắt lớp CT', 800000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV007', N'Chụp điện não', 800000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV008', N'Dịch vụ hấp thụ oxy', 1000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV009', N'Dịch vụ phục hồi chức năng', 2000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV010', N'Dịch vụ chăm sóc sau phẫu thuật', 3000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV011', N'Phòng VIP', 2000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV012', N'Phòng 2 Giường', 1500000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV013', N'Phòng 3 Giường', 1000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV014', N'Phòng 5 Giường', 500000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV015', N'Phòng 7 Giường', 200000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV016', N'Phẫu thuật Tim', 80000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV017', N'Phẫu thuật Gan', 20000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV018', N'Phẫu thuật Mắt', 10000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV019', N'Phẫu thuật Tai mũi họng', 20000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV021', N'Phẫu thuật Khối u', 50000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV022', N'Phẫu thuật Cột sống', 40000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV023', N'Phẫu thuật Lồng ngực', 30000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV024', N'Phẫu thuật Bụng', 70000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV025', N'Phẫu thuật Cơ xương khớp', 70000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV026', N'Phẫu thuật Ung thư', 70000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV027', N'Phẫu thuật Túi mật', 40000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV028', N'Phẫu thuật Phổi', 70000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV029', N'Phẫu thuật Thận', 70000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV030', N'Phẫu thuật Hậu quả cháy nổ', 10000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV031', N'Phẫu thuật Sửa chữa gãy xương', 200000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV032', N'Phẫu thuật Nội soi', 20000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV033', N'Phẫu thuật Hạch', 40000000)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [DonGiaDichVu]) VALUES (N'DV034', N'Phẫu thuật Đại tràng', 50000000)
GO
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT001', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV051', N'BN001', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT001.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV051', N'BN001', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT002', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV067', N'BN002', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT002.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV067', N'BN002', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT003', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV083', N'BN003', N'Viêm phổi nặng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT003.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV083', N'BN003', N'Viêm phổi nặng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT004', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV084', N'BN004', N'Đau tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT004.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV084', N'BN004', N'Đau tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT005', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV100', N'BN005', N'Viêm gan')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT005.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV100', N'BN005', N'Viêm gan')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT006', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV052', N'BN006', N'Bệnh bạch huyết')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT006.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV052', N'BN006', N'Bệnh bạch huyết')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT007', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV116', N'BN007', N'Bệnh tiểu đường')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT007.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV116', N'BN007', N'Bệnh tiểu đường')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT008', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV068', N'BN008', N'Viêm Họng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT008.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV068', N'BN008', N'Viêm Họng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT009', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV069', N'BN009', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT009.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV069', N'BN009', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT010', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV085', N'BN010', N'Sỏi thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT010.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV085', N'BN010', N'Sỏi thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT011', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV053', N'BN011', N'Sỏi thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT011.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV053', N'BN011', N'Sỏi thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT012', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV054', N'BN012', N'Sốt xuất huyết')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT012.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV054', N'BN012', N'Sốt xuất huyết')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT013', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV070', N'BN013', N'Tiêu chảy')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT013.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV070', N'BN013', N'Tiêu chảy')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT014', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV087', N'BN014', N'Tăng giáp')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT014.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV087', N'BN014', N'Tăng giáp')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT015', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV103', N'BN015', N'Hen suyễn')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT015.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV103', N'BN015', N'Hen suyễn')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT016', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV055', N'BN016', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT016.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV055', N'BN016', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT017', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV072', N'BN017', N'Rối loạn tăng động giảm chú ý')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT017.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV072', N'BN017', N'Rối loạn tăng động giảm chú ý')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT018', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV088', N'BN018', N'Đau dây thần kinh toàn thân')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT018.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV088', N'BN018', N'Đau dây thần kinh toàn thân')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT019', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV071', N'BN019', N'Đau lưng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT019.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV071', N'BN019', N'Đau lưng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT020', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV056', N'BN020', N'Đau lưng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT020.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV056', N'BN020', N'Đau lưng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT021', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV089', N'BN021', N'Psoriasis')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT021.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV089', N'BN021', N'Psoriasis')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT022', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV073', N'BN022', N'Đau đầu')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT022.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV073', N'BN022', N'Đau đầu')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT023', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV057', N'BN023', N'Chàm')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT023.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV057', N'BN023', N'Chàm')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT024', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV058', N'BN024', N'Chấn thương cơ và xương')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT024.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV058', N'BN024', N'Chấn thương cơ và xương')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT025', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV074', N'BN025', N'Chấn thương gối')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT025.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV074', N'BN025', N'Chấn thương gối')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT026', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV090', N'BN026', N'Tăng cortisol')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT026.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV090', N'BN026', N'Tăng cortisol')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT027', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV059', N'BN027', N'Rối loạn kinh nguyệt')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT027.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV059', N'BN027', N'Rối loạn kinh nguyệt')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT028', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV075', N'BN028', N'U xơ tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT028.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV075', N'BN028', N'U xơ tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT029', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV091', N'BN029', N'Ung thư tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT029.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV091', N'BN029', N'Ung thư tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT030', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV060', N'BN030', N'Đau dây thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT030.1', CAST(N'2024-05-02T00:00:00.000' AS DateTime), 66000, N'NV060', N'BN030', N'Đau dây thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT030.2', CAST(N'2024-05-13T00:00:00.000' AS DateTime), 66000, N'NV051', N'BN030', N'A')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT031', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV076', N'BN031', N'Đau đầu')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT032', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV092', N'BN032', N'Rối loạn chức năng thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT033', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV061', N'BN033', N'Sâu răng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT034', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV077', N'BN034', N'Tắc nghẽn đường hô hấp khi ngủ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT035', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV093', N'BN035', N'Loại bỏ răng sâu, trồng răng mới')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT036', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV062', N'BN036', N'Hen suyễn')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT037', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV078', N'BN037', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT038', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV094', N'BN038', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT039', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV079', N'BN039', N'Ung thư dạ dày')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT040', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV095', N'BN040', N'Ung thư da')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT041', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV111', N'BN041', N'Ung thư phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT042', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV063', N'BN042', N'Ung thư não')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT043', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV064', N'BN043', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT044', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV080', N'BN044', N'Động mạch vành')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT045', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV097', N'BN045', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT046', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV081', N'BN046', N'Thoái hóa đốt sống cổ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT047', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV096', N'BN047', N'Gai cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT048', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV065', N'BN048', N'Bradycardia')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT049', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV098', N'BN049', N'Gãy xương')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT050', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV114', N'BN050', N'Cong vẹo cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT051', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV130', N'BN051', N'Cong vẹo ngược cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT052', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV049', N'BN052', N'Rách cơ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT053', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV050', N'BN053', N'Tổn thương dây chằng và gân')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT054', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV066', N'BN054', N'Gãy xương ở cẳng tay')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT055', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV082', N'BN055', N'Trẹo cổ chân')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT056', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV099', N'BN056', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT057', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV115', N'BN057', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT058', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV131', N'BN058', N'Nhiễm trùng ruột')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT059', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV168', N'BN059', N'Bradycardia')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT060', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV183', N'BN060', N'Viêm đại tràng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT061', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV132', N'BN061', N'Huyết áp thấp')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT062', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV198', N'BN062', N'Suy thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT063', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV152', N'BN063', N'Sốt')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT064', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV117', N'BN064', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT065', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV133', N'BN065', N'Viêm phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT066', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV101', N'BN066', N'Viêm bàng quang')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT067', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV086', N'BN067', N'Sốt rét')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT068', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV102', N'BN068', N'Tiểu đường')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT069', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV155', N'BN069', N'Tăng prolactin')
GO
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT070', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV169', N'BN070', N'Viêm phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT071', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV135', N'BN071', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT072', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV119', N'BN072', N'Rối loạn hành vi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT073', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV136', N'BN073', N'Suy giảm chức năng thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT074', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV120', N'BN074', N'Căng cơ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT075', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV104', N'BN075', N'Suy thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT076', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV105', N'BN076', N'Chàm')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT077', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV121', N'BN077', N'Psoriasis')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT078', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV137', N'BN078', N'Tăng cortisol')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT079', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV106', N'BN079', N'Chấn thương cơ và xương')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT080', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV122', N'BN080', N'Chấn thương gối')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT081', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV138', N'BN081', N'Tăng cortisol')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT082', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV107', N'BN082', N'Rối loạn kinh nguyệt')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT083', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV123', N'BN083', N'U xơ tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT084', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV139', N'BN084', N'Ung thư tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT085', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV108', N'BN085', N'Đau dây thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT086', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV124', N'BN086', N'Đau đầu')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT087', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV140', N'BN087', N'Rối loạn chức năng thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT088', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV109', N'BN088', N'Sâu răng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT089', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV125', N'BN089', N'Tắc nghẽn đường hô hấp khi ngủ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT090', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV141', N'BN090', N'Sâu răng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT091', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV110', N'BN091', N'Viêm phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT092', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV126', N'BN092', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT093', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV142', N'BN093', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT094', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV143', N'BN094', N'Ung thư dạ dày')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT095', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV163', N'BN095', N'Ung thư da')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT096', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV178', N'BN096', N'Ung thư phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT097', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV127', N'BN097', N'Ung thư não')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT098', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV112', N'BN098', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT099', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV128', N'BN099', N'Động mạch vành')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT100', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV145', N'BN100', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT101', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV129', N'BN101', N'Thoái hóa đốt sống cổ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT102', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV144', N'BN102', N'Gai cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT103', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV113', N'BN103', N'Gai cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT104', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV150', N'BN104', N'Gãy xương')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT105', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV197', N'BN105', N'Cong vẹo cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT106', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV146', N'BN106', N'Cong vẹo ngược cột sống')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT107', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV147', N'BN107', N'Rách cơ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT108', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV148', N'BN108', N'Tổn thương dây chằng và gân')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT109', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV149', N'BN109', N'Gãy xương ở cẳng tay')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT110', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV151', N'BN110', N'Trẹo cổ chân')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT111', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV166', N'BN111', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT112', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV182', N'BN112', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT113', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV084', N'BN113', N'Nhiễm trùng ruột')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT114', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV100', N'BN114', N'Bradycardia')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT115', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV199', N'BN115', N'Viêm đại tràng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT116', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV116', N'BN116', N'Huyết áp thấp')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT117', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV200', N'BN117', N'Suy thận')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT118', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV167', N'BN118', N'Sốt')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT119', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV184', N'BN119', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT120', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV153', N'BN120', N'Viêm đại tràng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT121', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV118', N'BN121', N'Viêm bàng quang')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT122', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV134', N'BN122', N'Sốt rét')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT123', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV087', N'BN123', N'Tiểu đường')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT124', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV103', N'BN124', N'Viêm phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT125', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV186', N'BN125', N'Suy tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT126', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV185', N'BN126', N'Rối loạn hành vi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT127', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV187', N'BN127', N'Suy giảm chức năng thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT128', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV172', N'BN128', N'Căng cơ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT129', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV156', N'BN129', N'Căng cơ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT130', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV157', N'BN130', N'Chàm')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT131', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV171', N'BN131', N'Psoriasis')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT132', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV188', N'BN132', N'Tăng cortisol')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT133', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV158', N'BN133', N'Chấn thương cơ và xương')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT134', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV173', N'BN134', N'Chấn thương gối')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT135', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV189', N'BN135', N'Tăng cortisol')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT136', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV159', N'BN136', N'Rối loạn kinh nguyệt')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT137', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV174', N'BN137', N'U xơ tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT138', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV190', N'BN138', N'Ung thư tử cung')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT139', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV160', N'BN139', N'Đau dây thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT140', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV175', N'BN140', N'Đau đầu')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT141', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV191', N'BN141', N'Rối loạn chức năng thần kinh')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT142', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV161', N'BN142', N'Sâu răng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT143', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV176', N'BN143', N'Tắc nghẽn đường hô hấp khi ngủ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT144', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV192', N'BN144', N'Sâu răng')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT145', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV162', N'BN145', N'Viêm phổi')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT146', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV177', N'BN146', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT147', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV193', N'BN147', N'Đột quỵ')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT148', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV079', N'BN148', N'Ung thư dạ dày')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT149', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV164', N'BN149', N'Nhồi máu cơ tim')
INSERT [dbo].[DonThuoc] ([MaDonThuoc], [NgayGioKeDon], [TongTienThuoc], [MaNV], [MaBN], [ChanDoan]) VALUES (N'DT150', CAST(N'2024-04-13T00:00:00.000' AS DateTime), 66000, N'NV180', N'BN150', N'Thoái hóa đốt sống cổ')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T001', N'G1', N'P006')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T002', N'G2', N'P006')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T003', N'G1', N'P007')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T004', N'G2', N'P007')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T005', N'G1', N'P008')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T006', N'G2', N'P008')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T007', N'G1', N'P009')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T008', N'G2', N'P009')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T009', N'G1', N'P010')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T010', N'G2', N'P010')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T011', N'G1', N'P011')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T012', N'G2', N'P011')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T013', N'G1', N'P012')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T014', N'G2', N'P012')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T015', N'G1', N'P013')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T016', N'G2', N'P013')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T017', N'G1', N'P014')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T018', N'G2', N'P014')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T019', N'G3', N'P014')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T020', N'G1', N'P015')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T021', N'G2', N'P015')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T022', N'G3', N'P015')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T023', N'G1', N'P016')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T024', N'G2', N'P016')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T025', N'G3', N'P016')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T026', N'G1', N'P017')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T027', N'G2', N'P017')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T028', N'G3', N'P017')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T029', N'G1', N'P018')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T030', N'G2', N'P018')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T031', N'G3', N'P018')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T032', N'G2', N'P019')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T033', N'G3', N'P019')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T034', N'G4', N'P019')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T035', N'G5', N'P019')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T036', N'G1', N'P020')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T037', N'G2', N'P020')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T038', N'G3', N'P020')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T039', N'G4', N'P020')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T040', N'G5', N'P020')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T041', N'G1', N'P021')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T042', N'G2', N'P021')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T043', N'G3', N'P021')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T044', N'G4', N'P021')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T045', N'G5', N'P021')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T046', N'G1', N'P022')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T047', N'G2', N'P022')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T048', N'G3', N'P022')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T049', N'G4', N'P022')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T050', N'G5', N'P022')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T051', N'G1', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T052', N'G2', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T053', N'G3', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T054', N'G4', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T055', N'G5', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T056', N'G6', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T057', N'G7', N'P023')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T058', N'G1', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T059', N'G2', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T060', N'G3', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T061', N'G4', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T062', N'G5', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T063', N'G6', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T064', N'G7', N'P024')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T065', N'G1', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T066', N'G2', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T067', N'G3', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T068', N'G4', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T069', N'G5', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T070', N'G6', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T071', N'G7', N'P025')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T072', N'G1', N'P031')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T073', N'G2', N'P031')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T074', N'G1', N'P032')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T075', N'G2', N'P032')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T076', N'G1', N'P033')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T077', N'G2', N'P033')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T078', N'G1', N'P034')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T079', N'G2', N'P034')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T080', N'G1', N'P035')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T081', N'G2', N'P035')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T082', N'G1', N'P036')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T083', N'G2', N'P036')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T084', N'G1', N'P037')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T085', N'G2', N'P037')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T086', N'G1', N'P038')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T087', N'G2', N'P038')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T088', N'G1', N'P039')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T089', N'G2', N'P039')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T090', N'G3', N'P039')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T091', N'G1', N'P040')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T092', N'G2', N'P040')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T093', N'G3', N'P040')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T094', N'G1', N'P041')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T095', N'G2', N'P041')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T096', N'G3', N'P041')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T097', N'G1', N'P042')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T098', N'G2', N'P042')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T099', N'G3', N'P042')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T100', N'G1', N'P043')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T101', N'G2', N'P043')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T102', N'G3', N'P043')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T103', N'G1', N'P044')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T104', N'G2', N'P044')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T105', N'G3', N'P044')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T106', N'G4', N'P044')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T107', N'G5', N'P044')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T108', N'G1', N'P045')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T109', N'G2', N'P045')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T110', N'G3', N'P045')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T111', N'G4', N'P045')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T112', N'G5', N'P045')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T113', N'G1', N'P046')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T114', N'G2', N'P046')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T115', N'G3', N'P046')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T116', N'G4', N'P046')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T117', N'G5', N'P046')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T118', N'G1', N'P047')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T119', N'G2', N'P047')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T120', N'G3', N'P047')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T121', N'G4', N'P047')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T122', N'G5', N'P047')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T123', N'G1', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T124', N'G2', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T125', N'G3', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T126', N'G4', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T127', N'G5', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T128', N'G6', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T129', N'G7', N'P048')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T130', N'G1', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T131', N'G2', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T132', N'G3', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T133', N'G4', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T134', N'G5', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T135', N'G6', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T136', N'G7', N'P049')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T137', N'G1', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T138', N'G2', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T139', N'G3', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T140', N'G4', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T141', N'G5', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T142', N'G6', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T143', N'G7', N'P050')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T144', N'G1', N'P056')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T145', N'G2', N'P056')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T146', N'G1', N'P057')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T147', N'G2', N'P057')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T148', N'G1', N'P058')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T149', N'G2', N'P058')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T150', N'G1', N'P059')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T151', N'G2', N'P059')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T152', N'G1', N'P060')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T153', N'G2', N'P060')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T154', N'G1', N'P061')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T155', N'G2', N'P061')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T156', N'G1', N'P062')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T157', N'G2', N'P062')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T158', N'G1', N'P063')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T159', N'G2', N'P063')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T160', N'G1', N'P064')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T161', N'G2', N'P064')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T162', N'G3', N'P064')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T163', N'G1', N'P065')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T164', N'G2', N'P065')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T165', N'G3', N'P065')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T166', N'G1', N'P066')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T167', N'G2', N'P066')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T168', N'G3', N'P066')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T169', N'G1', N'P067')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T170', N'G2', N'P067')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T171', N'G3', N'P067')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T172', N'G1', N'P068')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T173', N'G2', N'P068')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T174', N'G3', N'P068')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T175', N'G1', N'P069')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T176', N'G2', N'P069')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T177', N'G3', N'P069')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T178', N'G4', N'P069')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T179', N'G5', N'P069')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T180', N'G1', N'P070')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T181', N'G2', N'P070')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T182', N'G3', N'P070')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T183', N'G4', N'P070')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T184', N'G5', N'P070')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T185', N'G1', N'P071')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T186', N'G2', N'P071')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T187', N'G3', N'P071')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T188', N'G4', N'P071')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T189', N'G5', N'P071')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T190', N'G1', N'P072')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T191', N'G2', N'P072')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T192', N'G3', N'P072')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T193', N'G4', N'P072')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T194', N'G5', N'P072')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T195', N'G1', N'P073')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T196', N'G2', N'P073')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T197', N'G3', N'P073')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T198', N'G4', N'P073')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T199', N'G5', N'P073')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T200', N'G6', N'P073')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T201', N'G7', N'P073')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T202', N'G1', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T203', N'G2', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T204', N'G3', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T205', N'G4', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T206', N'G5', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T207', N'G6', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T208', N'G7', N'P074')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T209', N'G1', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T210', N'G2', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T211', N'G3', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T212', N'G4', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T213', N'G5', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T214', N'G6', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T215', N'G7', N'P075')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T216', N'G1', N'P078')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T217', N'G2', N'P078')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T218', N'G1', N'P079')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T219', N'G2', N'P079')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T220', N'G1', N'P080')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T221', N'G2', N'P080')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T222', N'G1', N'P081')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T223', N'G2', N'P081')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T224', N'G1', N'P082')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T225', N'G2', N'P082')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T226', N'G3', N'P082')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T227', N'G1', N'P083')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T228', N'G2', N'P083')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T229', N'G3', N'P083')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T230', N'G1', N'P084')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T231', N'G2', N'P084')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T232', N'G3', N'P084')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T233', N'G1', N'P085')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T234', N'G2', N'P085')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T235', N'G3', N'P085')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T236', N'G4', N'P085')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T237', N'G5', N'P085')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T238', N'G1', N'P086')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T239', N'G2', N'P086')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T240', N'G3', N'P086')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T241', N'G4', N'P086')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T242', N'G5', N'P086')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T243', N'G1', N'P087')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T244', N'G2', N'P087')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T245', N'G3', N'P087')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T246', N'G4', N'P087')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T247', N'G5', N'P087')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T248', N'G1', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T249', N'G2', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T250', N'G3', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T251', N'G4', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T252', N'G5', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T253', N'G6', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T254', N'G7', N'P088')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T255', N'G1', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T256', N'G2', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T257', N'G3', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T258', N'G4', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T259', N'G5', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T260', N'G6', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T261', N'G7', N'P089')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T262', N'G1', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T263', N'G2', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T264', N'G3', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T265', N'G4', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T266', N'G5', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T267', N'G6', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T268', N'G7', N'P090')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T269', N'G1', N'P096')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T270', N'G2', N'P096')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T271', N'G1', N'P097')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T272', N'G2', N'P097')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T273', N'G1', N'P098')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T274', N'G2', N'P098')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T275', N'G1', N'P099')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T276', N'G2', N'P099')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T277', N'G1', N'P100')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T278', N'G2', N'P100')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T279', N'G1', N'P101')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T280', N'G2', N'P101')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T281', N'G1', N'P102')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T282', N'G2', N'P102')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T283', N'G1', N'P103')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T284', N'G2', N'P103')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T285', N'G1', N'P104')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T286', N'G2', N'P104')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T287', N'G3', N'P104')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T288', N'G1', N'P105')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T289', N'G2', N'P105')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T290', N'G3', N'P105')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T291', N'G1', N'P106')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T292', N'G2', N'P106')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T293', N'G3', N'P106')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T294', N'G1', N'P107')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T295', N'G2', N'P107')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T296', N'G3', N'P107')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T297', N'G1', N'P108')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T298', N'G2', N'P108')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T299', N'G3', N'P108')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T300', N'G1', N'P109')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T301', N'G2', N'P109')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T302', N'G3', N'P109')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T303', N'G4', N'P109')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T304', N'G5', N'P109')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T305', N'G1', N'P110')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T306', N'G2', N'P110')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T307', N'G3', N'P110')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T308', N'G4', N'P110')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T309', N'G5', N'P110')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T310', N'G1', N'P111')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T311', N'G2', N'P111')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T312', N'G3', N'P111')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T313', N'G4', N'P111')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T314', N'G5', N'P111')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T315', N'G1', N'P112')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T316', N'G2', N'P112')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T317', N'G3', N'P112')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T318', N'G4', N'P112')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T319', N'G5', N'P112')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T320', N'G1', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T321', N'G2', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T322', N'G3', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T323', N'G4', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T324', N'G5', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T325', N'G6', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T326', N'G7', N'P113')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T327', N'G1', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T328', N'G2', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T329', N'G3', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T330', N'G4', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T331', N'G5', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T332', N'G6', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T333', N'G7', N'P114')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T334', N'G1', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T335', N'G2', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T336', N'G3', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T337', N'G4', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T338', N'G5', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T339', N'G6', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T340', N'G7', N'P115')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T341', N'G1', N'P121')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T342', N'G2', N'P121')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T343', N'G1', N'P122')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T344', N'G2', N'P122')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T345', N'G1', N'P123')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T346', N'G2', N'P123')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T347', N'G1', N'P124')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T348', N'G2', N'P124')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T349', N'G1', N'P125')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T350', N'G2', N'P125')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T351', N'G1', N'P126')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T352', N'G2', N'P126')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T353', N'G1', N'P127')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T354', N'G2', N'P127')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T355', N'G1', N'P128')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T356', N'G2', N'P128')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T357', N'G1', N'P129')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T358', N'G2', N'P129')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T359', N'G3', N'P129')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T360', N'G1', N'P130')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T361', N'G2', N'P130')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T362', N'G3', N'P130')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T363', N'G1', N'P131')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T364', N'G2', N'P131')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T365', N'G3', N'P131')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T366', N'G1', N'P132')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T367', N'G2', N'P132')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T368', N'G3', N'P132')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T369', N'G1', N'P133')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T370', N'G2', N'P133')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T371', N'G3', N'P133')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T372', N'G1', N'P134')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T373', N'G2', N'P134')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T374', N'G3', N'P134')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T375', N'G4', N'P134')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T376', N'G5', N'P134')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T377', N'G1', N'P135')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T378', N'G2', N'P135')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T379', N'G3', N'P135')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T380', N'G4', N'P135')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T381', N'G5', N'P135')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T382', N'G1', N'P136')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T383', N'G2', N'P136')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T384', N'G3', N'P136')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T385', N'G4', N'P136')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T386', N'G5', N'P136')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T387', N'G1', N'P137')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T388', N'G2', N'P137')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T389', N'G3', N'P137')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T390', N'G4', N'P137')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T391', N'G5', N'P137')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T392', N'G1', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T393', N'G2', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T394', N'G3', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T395', N'G4', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T396', N'G5', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T397', N'G6', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T398', N'G7', N'P138')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T399', N'G1', N'P139')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T400', N'G2', N'P139')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T401', N'G3', N'P139')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T402', N'G4', N'P139')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T403', N'G5', N'P139')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T404', N'G6', N'P139')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T405', N'G7', N'P139')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T406', N'G1', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T407', N'G2', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T408', N'G3', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T409', N'G4', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T410', N'G5', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T411', N'G6', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T412', N'G7', N'P140')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T413', N'G1', N'P143')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T414', N'G2', N'P143')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T415', N'G1', N'P144')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T416', N'G2', N'P144')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T417', N'G1', N'P145')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T418', N'G2', N'P145')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T419', N'G1', N'P146')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T420', N'G2', N'P146')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T421', N'G3', N'P146')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T422', N'G1', N'P147')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T423', N'G2', N'P147')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T424', N'G3', N'P147')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T425', N'G1', N'P148')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T426', N'G2', N'P148')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T427', N'G3', N'P148')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T428', N'G1', N'P149')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T429', N'G2', N'P149')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T430', N'G3', N'P149')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T431', N'G4', N'P149')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T432', N'G5', N'P149')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T433', N'G1', N'P150')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T434', N'G2', N'P150')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T435', N'G3', N'P150')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T436', N'G4', N'P150')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T437', N'G5', N'P150')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T438', N'G1', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T439', N'G2', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T440', N'G3', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T441', N'G4', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T442', N'G5', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T443', N'G6', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T444', N'G7', N'P151')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T445', N'G1', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T446', N'G2', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T447', N'G3', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T448', N'G4', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T449', N'G5', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T450', N'G6', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T451', N'G7', N'P152')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T452', N'G1', N'P155')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T453', N'G2', N'P155')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T454', N'G1', N'P156')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T455', N'G2', N'P156')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T456', N'G1', N'P157')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T457', N'G2', N'P157')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T458', N'G1', N'P158')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T459', N'G2', N'P158')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T460', N'G3', N'P158')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T461', N'G1', N'P159')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T462', N'G2', N'P159')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T463', N'G3', N'P159')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T464', N'G1', N'P160')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T465', N'G2', N'P160')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T466', N'G3', N'P160')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T467', N'G1', N'P161')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T468', N'G2', N'P161')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T469', N'G3', N'P161')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T470', N'G4', N'P161')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T471', N'G5', N'P161')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T472', N'G1', N'P162')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T473', N'G2', N'P162')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T474', N'G3', N'P162')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T475', N'G4', N'P162')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T476', N'G5', N'P162')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T477', N'G1', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T478', N'G2', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T479', N'G3', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T480', N'G4', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T481', N'G5', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T482', N'G6', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T483', N'G7', N'P163')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T484', N'G1', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T485', N'G2', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T486', N'G3', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T487', N'G4', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T488', N'G5', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T489', N'G6', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T490', N'G7', N'P164')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T491', N'G1', N'P167')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T492', N'G2', N'P167')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T493', N'G1', N'P168')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T494', N'G2', N'P168')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T495', N'G1', N'P169')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T496', N'G2', N'P169')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T497', N'G1', N'P170')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T498', N'G2', N'P170')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T499', N'G3', N'P170')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T500', N'G1', N'P171')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T501', N'G2', N'P171')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T502', N'G3', N'P171')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T503', N'G1', N'P172')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T504', N'G2', N'P172')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T505', N'G3', N'P172')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T506', N'G1', N'P173')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T507', N'G2', N'P173')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T508', N'G3', N'P173')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T509', N'G4', N'P173')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T510', N'G5', N'P173')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T511', N'G1', N'P174')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T512', N'G2', N'P174')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T513', N'G3', N'P174')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T514', N'G4', N'P174')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T515', N'G5', N'P174')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T516', N'G1', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T517', N'G2', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T518', N'G3', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T519', N'G4', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T520', N'G5', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T521', N'G6', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T522', N'G7', N'P175')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T523', N'G1', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T524', N'G2', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T525', N'G3', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T526', N'G4', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T527', N'G5', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T528', N'G6', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T529', N'G7', N'P176')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T530', N'G1', N'P179')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T531', N'G2', N'P179')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T532', N'G1', N'P180')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T533', N'G2', N'P180')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T534', N'G1', N'P181')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T535', N'G2', N'P181')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T536', N'G1', N'P182')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T537', N'G2', N'P182')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T538', N'G3', N'P182')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T539', N'G1', N'P183')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T540', N'G2', N'P183')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T541', N'G3', N'P183')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T542', N'G1', N'P184')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T543', N'G2', N'P184')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T544', N'G3', N'P184')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T545', N'G1', N'P185')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T546', N'G2', N'P185')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T547', N'G3', N'P185')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T548', N'G4', N'P185')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T549', N'G5', N'P185')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T550', N'G1', N'P186')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T551', N'G2', N'P186')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T552', N'G3', N'P186')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T553', N'G4', N'P186')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T554', N'G5', N'P186')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T555', N'G1', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T556', N'G2', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T557', N'G3', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T558', N'G4', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T559', N'G5', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T560', N'G6', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T561', N'G7', N'P187')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T562', N'G1', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T563', N'G2', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T564', N'G3', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T565', N'G4', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T566', N'G5', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T567', N'G6', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T568', N'G7', N'P188')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T569', N'G1', N'P191')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T570', N'G2', N'P191')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T571', N'G1', N'P192')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T572', N'G2', N'P192')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T573', N'G1', N'P193')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T574', N'G2', N'P193')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T575', N'G1', N'P194')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T576', N'G2', N'P194')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T577', N'G3', N'P194')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T578', N'G1', N'P195')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T579', N'G2', N'P195')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T580', N'G3', N'P195')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T581', N'G1', N'P196')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T582', N'G2', N'P196')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T583', N'G3', N'P196')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T584', N'G1', N'P197')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T585', N'G2', N'P197')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T586', N'G3', N'P197')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T587', N'G4', N'P197')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T588', N'G5', N'P197')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T589', N'G1', N'P198')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T590', N'G2', N'P198')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T591', N'G3', N'P198')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T592', N'G4', N'P198')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T593', N'G5', N'P198')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T594', N'G1', N'P199')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T595', N'G2', N'P199')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T596', N'G3', N'P199')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T597', N'G4', N'P199')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T598', N'G5', N'P199')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T599', N'G6', N'P199')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T600', N'G7', N'P199')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T601', N'G1', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T602', N'G2', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T603', N'G3', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T604', N'G4', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T605', N'G5', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T606', N'G6', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T607', N'G7', N'P200')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T608', N'G1', N'P203')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T609', N'G2', N'P203')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T610', N'G1', N'P204')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T611', N'G2', N'P204')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T612', N'G1', N'P205')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T613', N'G2', N'P205')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T614', N'G1', N'P206')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T615', N'G2', N'P206')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T616', N'G3', N'P206')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T617', N'G1', N'P207')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T618', N'G2', N'P207')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T619', N'G3', N'P207')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T620', N'G1', N'P208')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T621', N'G2', N'P208')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T622', N'G3', N'P208')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T623', N'G1', N'P209')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T624', N'G2', N'P209')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T625', N'G3', N'P209')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T626', N'G4', N'P209')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T627', N'G5', N'P209')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T628', N'G1', N'P210')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T629', N'G2', N'P210')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T630', N'G3', N'P210')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T631', N'G4', N'P210')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T632', N'G5', N'P210')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T633', N'G1', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T634', N'G2', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T635', N'G3', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T636', N'G4', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T637', N'G5', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T638', N'G6', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T639', N'G7', N'P211')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T640', N'G1', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T641', N'G2', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T642', N'G3', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T643', N'G4', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T644', N'G5', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T645', N'G6', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T646', N'G7', N'P212')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T647', N'G1', N'P215')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T648', N'G2', N'P215')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T649', N'G1', N'P216')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T650', N'G2', N'P216')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T651', N'G1', N'P217')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T652', N'G2', N'P217')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T653', N'G1', N'P218')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T654', N'G2', N'P218')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T655', N'G3', N'P218')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T656', N'G1', N'P219')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T657', N'G2', N'P219')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T658', N'G3', N'P219')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T659', N'G1', N'P220')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T660', N'G2', N'P220')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T661', N'G3', N'P220')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T662', N'G1', N'P221')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T663', N'G2', N'P221')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T664', N'G3', N'P221')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T665', N'G4', N'P221')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T666', N'G5', N'P221')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T667', N'G1', N'P222')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T668', N'G2', N'P222')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T669', N'G3', N'P222')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T670', N'G4', N'P222')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T671', N'G5', N'P222')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T672', N'G1', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T673', N'G2', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T674', N'G3', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T675', N'G4', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T676', N'G5', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T677', N'G6', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T678', N'G7', N'P223')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T679', N'G1', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T680', N'G2', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T681', N'G3', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T682', N'G4', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T683', N'G5', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T684', N'G6', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T685', N'G7', N'P224')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T686', N'G1', N'P227')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T687', N'G2', N'P227')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T688', N'G1', N'P228')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T689', N'G2', N'P228')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T690', N'G1', N'P229')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T691', N'G2', N'P229')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T692', N'G1', N'P230')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T693', N'G2', N'P230')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T694', N'G3', N'P230')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T695', N'G1', N'P231')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T696', N'G2', N'P231')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T697', N'G3', N'P231')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T698', N'G1', N'P232')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T699', N'G2', N'P232')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T700', N'G3', N'P232')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T701', N'G1', N'P233')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T702', N'G2', N'P233')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T703', N'G3', N'P233')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T704', N'G4', N'P233')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T705', N'G5', N'P233')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T706', N'G1', N'P234')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T707', N'G2', N'P234')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T708', N'G3', N'P234')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T709', N'G4', N'P234')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T710', N'G5', N'P234')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T711', N'G1', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T712', N'G2', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T713', N'G3', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T714', N'G4', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T715', N'G5', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T716', N'G6', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T717', N'G7', N'P235')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T718', N'G1', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T719', N'G2', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T720', N'G3', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T721', N'G4', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T722', N'G5', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T723', N'G6', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T724', N'G7', N'P236')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T725', N'G1', N'P239')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T726', N'G2', N'P239')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T727', N'G1', N'P240')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T728', N'G2', N'P240')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T729', N'G1', N'P241')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T730', N'G2', N'P241')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T731', N'G1', N'P242')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T732', N'G2', N'P242')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T733', N'G3', N'P242')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T734', N'G1', N'P243')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T735', N'G2', N'P243')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T736', N'G3', N'P243')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T737', N'G1', N'P244')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T738', N'G2', N'P244')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T739', N'G3', N'P244')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T740', N'G1', N'P245')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T741', N'G2', N'P245')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T742', N'G3', N'P245')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T743', N'G4', N'P245')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T744', N'G5', N'P245')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T745', N'G1', N'P246')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T746', N'G2', N'P246')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T747', N'G3', N'P246')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T748', N'G4', N'P246')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T749', N'G5', N'P246')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T750', N'G1', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T751', N'G2', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T752', N'G3', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T753', N'G4', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T754', N'G5', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T755', N'G6', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T756', N'G7', N'P247')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T757', N'G1', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T758', N'G2', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T759', N'G3', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T760', N'G4', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T761', N'G5', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T762', N'G6', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T763', N'G7', N'P248')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T764', N'G1', N'P254')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T765', N'G2', N'P254')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T766', N'G1', N'P255')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T767', N'G2', N'P255')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T768', N'G1', N'P256')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T769', N'G2', N'P256')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T770', N'G1', N'P257')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T771', N'G2', N'P257')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T772', N'G1', N'P258')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T773', N'G2', N'P258')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T774', N'G1', N'P259')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T775', N'G2', N'P259')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T776', N'G1', N'P260')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T777', N'G2', N'P260')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T778', N'G3', N'P260')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T779', N'G1', N'P261')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T780', N'G2', N'P261')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T781', N'G3', N'P261')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T782', N'G1', N'P262')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T783', N'G2', N'P262')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T784', N'G3', N'P262')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T785', N'G1', N'P263')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T786', N'G2', N'P263')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T787', N'G3', N'P263')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T788', N'G1', N'P264')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T789', N'G2', N'P264')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T790', N'G3', N'P264')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T791', N'G4', N'P264')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T792', N'G5', N'P264')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T793', N'G1', N'P265')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T794', N'G2', N'P265')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T795', N'G3', N'P265')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T796', N'G4', N'P265')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T797', N'G5', N'P265')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T798', N'G1', N'P266')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T799', N'G2', N'P266')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T800', N'G3', N'P266')
GO
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T801', N'G4', N'P266')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T802', N'G5', N'P266')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T803', N'G1', N'P267')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T804', N'G2', N'P267')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T805', N'G3', N'P267')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T806', N'G4', N'P267')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T807', N'G5', N'P267')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T808', N'G1', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T809', N'G2', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T810', N'G3', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T811', N'G4', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T812', N'G5', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T813', N'G6', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T814', N'G7', N'P268')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T815', N'G1', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T816', N'G2', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T817', N'G3', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T818', N'G4', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T819', N'G5', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T820', N'G6', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T821', N'G7', N'P269')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T822', N'G1', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T823', N'G2', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T824', N'G3', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T825', N'G4', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T826', N'G5', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T827', N'G6', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T828', N'G7', N'P270')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'T829', N'G1', N'P019')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V001', N'G1', N'P001')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V002', N'G1', N'P002')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V003', N'G1', N'P003')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V004', N'G1', N'P004')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V005', N'G1', N'P005')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V006', N'G1', N'P026')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V007', N'G1', N'P027')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V008', N'G1', N'P028')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V009', N'G1', N'P029')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V010', N'G1', N'P030')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V011', N'G1', N'P051')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V012', N'G1', N'P052')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V013', N'G1', N'P053')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V014', N'G1', N'P054')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V015', N'G1', N'P055')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V016', N'G1', N'P076')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V017', N'G1', N'P077')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V018', N'G1', N'P091')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V019', N'G1', N'P092')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V020', N'G1', N'P093')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V021', N'G1', N'P094')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V022', N'G1', N'P095')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V023', N'G1', N'P116')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V024', N'G1', N'P117')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V025', N'G1', N'P118')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V026', N'G1', N'P119')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V027', N'G1', N'P120')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V028', N'G1', N'P141')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V029', N'G1', N'P142')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V030', N'G1', N'P153')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V031', N'G1', N'P154')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V032', N'G1', N'P165')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V033', N'G1', N'P166')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V034', N'G1', N'P177')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V035', N'G1', N'P178')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V036', N'G1', N'P189')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V037', N'G1', N'P190')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V038', N'G1', N'P201')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V039', N'G1', N'P202')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V040', N'G1', N'P213')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V041', N'G1', N'P214')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V042', N'G1', N'P225')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V043', N'G1', N'P226')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V044', N'G1', N'P237')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V045', N'G1', N'P238')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V046', N'G1', N'P249')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V047', N'G1', N'P250')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V048', N'G1', N'P251')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V049', N'G1', N'P252')
INSERT [dbo].[GiuongBenh] ([MaGiuong], [SoGiuong], [MaPhong]) VALUES (N'V050', N'G1', N'P253')
GO
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN001', N'PK101.1', N'NV051', N'PKB001')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN001', N'PK101.1', N'NV051', N'PKB001.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN002', N'PK102.1', N'NV067', N'PKB002')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN002', N'PK102.1', N'NV067', N'PKB002.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN003', N'PK103.1', N'NV083', N'PKB003')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN003', N'PK103.1', N'NV083', N'PKB003.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN004', N'PK201.1', N'NV084', N'PKB004')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN004', N'PK201.1', N'NV084', N'PKB004.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN005', N'PK202.1', N'NV100', N'PKB005')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN005', N'PK202.1', N'NV100', N'PKB005.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN006', N'PK203.1', N'NV052', N'PKB006')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN006', N'PK203.1', N'NV052', N'PKB006.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN007', N'PK204.1', N'NV116', N'PKB007')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN007', N'PK204.1', N'NV116', N'PKB007.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN008', N'PK205.1', N'NV068', N'PKB008')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN008', N'PK205.1', N'NV068', N'PKB008.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN009', N'PK301.1', N'NV069', N'PKB009')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN009', N'PK301.1', N'NV069', N'PKB009.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN010', N'PK302.1', N'NV085', N'PKB010')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN010', N'PK302.1', N'NV085', N'PKB010.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN011', N'PK303.1', N'NV053', N'PKB011')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN011', N'PK303.1', N'NV053', N'PKB011.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN012', N'PK401.1', N'NV054', N'PKB012')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN012', N'PK401.1', N'NV054', N'PKB012.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN013', N'PK402.1', N'NV070', N'PKB013')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN013', N'PK402.1', N'NV070', N'PKB013.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN014', N'PK501', N'NV087', N'PKB014')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN014', N'PK501', N'NV087', N'PKB014.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN015', N'PK502', N'NV103', N'PKB015')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN015', N'PK502', N'NV103', N'PKB015.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN016', N'PK503', N'NV055', N'PKB016')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN016', N'PK503', N'NV055', N'PKB016.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN017', N'PK504', N'NV072', N'PKB017')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN017', N'PK504', N'NV072', N'PKB017.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN018', N'PK601', N'NV088', N'PKB018')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN018', N'PK601', N'NV088', N'PKB018.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN019', N'PK602', N'NV071', N'PKB019')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN019', N'PK602', N'NV071', N'PKB019.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN020', N'PK602', N'NV071', N'PKB020')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN020', N'PK602', N'NV071', N'PKB020.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN021', N'PK702', N'NV089', N'PKB021')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN021', N'PK702', N'NV089', N'PKB021.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN022', N'PK1001', N'NV076', N'PKB022')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN022', N'PK1001', N'NV076', N'PKB022.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN023', N'PK701', N'NV057', N'PKB023')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN023', N'PK701', N'NV057', N'PKB023.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN024', N'PK801', N'NV058', N'PKB024')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN024', N'PK801', N'NV058', N'PKB024.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN025', N'PK802', N'NV074', N'PKB025')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN025', N'PK802', N'NV074', N'PKB025.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN026', N'PK803', N'NV090', N'PKB026')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN026', N'PK803', N'NV090', N'PKB026.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN027', N'PK901', N'NV059', N'PKB027')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN027', N'PK901', N'NV059', N'PKB027.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN028', N'PK902', N'NV075', N'PKB028')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN028', N'PK902', N'NV075', N'PKB028.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN029', N'PK903', N'NV091', N'PKB029')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN029', N'PK903', N'NV091', N'PKB029.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN030', N'PK1001', N'NV060', N'PKB030')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN030', N'PK1001', N'NV060', N'PKB030.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN030', N'PK101.1', N'NV051', N'PKB030.2')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN031', N'PK1002', N'NV076', N'PKB031')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN032', N'PK1003', N'NV092', N'PKB032')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN033', N'PK1101', N'NV061', N'PKB033')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN034', N'PK1102', N'NV077', N'PKB034')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN035', N'PK1102', N'NV093', N'PKB035')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN036', N'PK1201', N'NV062', N'PKB036')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN037', N'PK1202', N'NV078', N'PKB037')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN038', N'PK1202', N'NV094', N'PKB038')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN039', N'PK1301', N'NV079', N'PKB039')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN040', N'PK1302', N'NV095', N'PKB040')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN041', N'PK1303', N'NV111', N'PKB041')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN042', N'PK1304', N'NV063', N'PKB042')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN043', N'PK1401', N'NV064', N'PKB043')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN044', N'PK1402', N'NV080', N'PKB044')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN045', N'PK1403', N'NV097', N'PKB045')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN046', N'PK1501', N'NV081', N'PKB046')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN047', N'PK1502', N'NV096', N'PKB047')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN048', N'PK201.1', N'NV168', N'PKB048')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN049', N'PK1601', N'NV098', N'PKB049')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN050', N'PK1602', N'NV114', N'PKB050')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN051', N'PK1603', N'NV130', N'PKB051')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN052', N'PK1604', N'NV049', N'PKB052')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN053', N'PK1605', N'NV050', N'PKB053')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN054', N'PK1606', N'NV066', N'PKB054')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN055', N'PK1607', N'NV082', N'PKB055')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN056', N'PK101.1', N'NV099', N'PKB056')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN057', N'PK102.2', N'NV115', N'PKB057')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN058', N'PK103.1', N'NV131', N'PKB058')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN059', N'PK201.2', N'NV168', N'PKB059')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN060', N'PK202.1', N'NV183', N'PKB060')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN061', N'PK203.1', N'NV132', N'PKB061')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN062', N'PK204.1', N'NV198', N'PKB062')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN063', N'PK205.1', N'NV152', N'PKB063')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN064', N'PK301.1', N'NV117', N'PKB064')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN065', N'PK502', N'NV169', N'PKB065')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN066', N'PK303.1', N'NV101', N'PKB066')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN067', N'PK401.1', N'NV086', N'PKB067')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN068', N'PK402.2', N'NV102', N'PKB068')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN069', N'PK501', N'NV155', N'PKB069')
GO
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN070', N'PK502', N'NV169', N'PKB070')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN071', N'PK503', N'NV135', N'PKB071')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN072', N'PK504', N'NV119', N'PKB072')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN073', N'PK601', N'NV136', N'PKB073')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN074', N'PK602', N'NV120', N'PKB074')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN075', N'PK202.1', N'NV198', N'PKB075')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN076', N'PK701', N'NV105', N'PKB076')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN077', N'PK702', N'NV121', N'PKB077')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN078', N'PK803', N'NV138', N'PKB078')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN079', N'PK801', N'NV106', N'PKB079')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN080', N'PK802', N'NV122', N'PKB080')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN081', N'PK803', N'NV138', N'PKB081')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN082', N'PK901', N'NV107', N'PKB082')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN083', N'PK902', N'NV123', N'PKB083')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN084', N'PK903', N'NV139', N'PKB084')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN085', N'PK1001', N'NV108', N'PKB085')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN086', N'PK1002', N'NV124', N'PKB086')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN087', N'PK1003', N'NV140', N'PKB087')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN088', N'PK1101', N'NV109', N'PKB088')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN089', N'PK1102', N'NV125', N'PKB089')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN090', N'PK1101', N'NV109', N'PKB090')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN091', N'PK1201', N'NV110', N'PKB091')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN092', N'PK1202', N'NV126', N'PKB092')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN093', N'PK1201', N'NV142', N'PKB093')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN094', N'PK1301', N'NV143', N'PKB094')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN095', N'PK1302', N'NV163', N'PKB095')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN096', N'PK1303', N'NV178', N'PKB096')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN097', N'PK1304', N'NV127', N'PKB097')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN098', N'PK1401', N'NV112', N'PKB098')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN099', N'PK1402', N'NV128', N'PKB099')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN100', N'PK1403', N'NV145', N'PKB100')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN101', N'PK1501', N'NV129', N'PKB101')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN102', N'PK1502', N'NV144', N'PKB102')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN103', N'PK502', N'NV144', N'PKB103')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN104', N'PK1601', N'NV150', N'PKB104')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN105', N'PK1602', N'NV197', N'PKB105')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN106', N'PK1603', N'NV146', N'PKB106')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN107', N'PK1604', N'NV147', N'PKB107')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN108', N'PK1605', N'NV148', N'PKB108')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN109', N'PK1606', N'NV149', N'PKB109')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN110', N'PK101.1', N'NV151', N'PKB110')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN111', N'PK102.1', N'NV166', N'PKB111')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN112', N'PK103.1', N'NV182', N'PKB112')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN113', N'PK201.2', N'NV084', N'PKB113')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN114', N'PK202.2', N'NV100', N'PKB114')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN115', N'PK203.1', N'NV199', N'PKB115')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN116', N'PK204.1', N'NV116', N'PKB116')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN117', N'PK205.2', N'NV200', N'PKB117')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN118', N'PK301.1', N'NV167', N'PKB118')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN119', N'PK302.2', N'NV184', N'PKB119')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN120', N'PK202.2', N'NV199', N'PKB120')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN121', N'PK401.2', N'NV118', N'PKB121')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN122', N'PK402.1', N'NV134', N'PKB122')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN123', N'PK501', N'NV087', N'PKB123')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN124', N'PK502', N'NV103', N'PKB124')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN125', N'PK503', N'NV186', N'PKB125')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN126', N'PK504', N'NV185', N'PKB126')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN127', N'PK601', N'NV187', N'PKB127')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN128', N'PK602', N'NV172', N'PKB128')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN129', N'PK1501', N'NV172', N'PKB129')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN130', N'PK701', N'NV157', N'PKB130')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN131', N'PK702', N'NV171', N'PKB131')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN132', N'PK801', N'NV189', N'PKB132')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN133', N'PK801', N'NV158', N'PKB133')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN134', N'PK802', N'NV173', N'PKB134')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN135', N'PK803', N'NV189', N'PKB135')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN136', N'PK901', N'NV159', N'PKB136')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN137', N'PK902', N'NV174', N'PKB137')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN138', N'PK903', N'NV190', N'PKB138')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN139', N'PK1001', N'NV160', N'PKB139')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN140', N'PK1002', N'NV175', N'PKB140')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN141', N'PK1003', N'NV191', N'PKB141')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN142', N'PK1101', N'NV161', N'PKB142')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN143', N'PK1102', N'NV176', N'PKB143')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN144', N'PK1101', N'NV161', N'PKB144')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN145', N'PK1201', N'NV162', N'PKB145')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN146', N'PK1202', N'NV177', N'PKB146')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN147', N'PK1202', N'NV193', N'PKB147')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN148', N'PK1301', N'NV079', N'PKB148')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN149', N'PK1401', N'NV164', N'PKB149')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN150', N'PK1501', N'NV180', N'PKB150')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN150', N'PK1001', N'NV060', N'PKB150.1')
INSERT [dbo].[KhamBenh] ([MaBN], [MaPhongKham], [MaNV], [MaPhieuKB]) VALUES (N'BN150', N'PK1101', N'NV061', N'PKB150.1')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K1', N'Khoa Hồi sức tích cực')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K10', N'Khoa Thần kinh học')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K11', N'Khoa Răng hàm mặt')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K12', N'Khoa Y học nội trú')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K13', N'Khoa Ung bướu')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K14', N'Khoa Tim mạch')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K15', N'Khoa Ngoại biên')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K16', N'Khoa Chấn thương chỉnh hình')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K2', N'Khoa Nội')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K3', N'Khoa Ngoại')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K4', N'Khoa Y Học Cộng đồng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K5', N'Khoa Nhi')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K6', N'Khoa Phục hồi chức năng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K7', N'Khoa Da liễu')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K8', N'Khoa Y học Thể thao')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'K9', N'Khoa Sản')
GO
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT001', N'Phẫu thuật Tim', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT002', N'Phẫu thuật Gan', N'Trung bình')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT003', N'Phẫu thuật Mắt', N'Nhẹ')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT004', N'Phẫu thuật Tai mũi họng', N'Trung bình')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT006', N'Phẫu thuật Khối u', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT007', N'Phẫu thuật Cột sống', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT008', N'Phẫu thuật Lồng ngực', N'Trung bình')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT009', N'Phẫu thuật Bụng', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT010', N'Phẫu thuật Cơ xương khớp', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT011', N'Phẫu thuật Ung thư', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT012', N'Phẫu thuật Túi mật', N'Trung bình')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT013', N'Phẫu thuật Phổi', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT014', N'Phẫu thuật Thận', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT015', N'Phẫu thuật Hậu quả cháy nổ', N'Nặng')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT016', N'Phẫu thuật Sửa chữa gãy xương', N'Trung bình')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT017', N'Phẫu thuật Nội soi', N'Nhẹ')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT018', N'Phẫu thuật Hạch', N'Trung bình')
INSERT [dbo].[LoaiPhauThuat] ([MaPT], [TenPT], [MucDo]) VALUES (N'PT019', N'Phẫu thuật Đại tràng', N'Nặng')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV001', N'Nguyễn Tấn Điền', N'Nam', CAST(N'1980-12-12' AS Date), N'K1', N'CN1', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV002', N'Trần Thị Thu Trang', N'Nữ', CAST(N'1989-12-10' AS Date), N'K2', N'CN4', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV003', N'Phạm Đình Văn Nam', N'Nam', CAST(N'1988-12-23' AS Date), N'K3', N'CN9', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV004', N'Lê Thị Bảo Ngọc', N'Nữ', CAST(N'1987-11-30' AS Date), N'K4', N'CN13', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV005', N'Nguyễn Văn Ngân', N'Nam', CAST(N'1980-12-11' AS Date), N'K5', N'CN14', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV006', N'Trần Xuân Thịnh', N'Nam', CAST(N'1980-12-09' AS Date), N'K6', N'CN18', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV007', N'Hà Thị Thu', N'Nữ', CAST(N'1980-03-01' AS Date), N'K7', N'CN21', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV008', N'Nguyễn Văn Đức', N'Nam', CAST(N'1989-10-02' AS Date), N'K8', N'CN24', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV009', N'Nguyễn Thị Hồng Nhung', N'Nữ', CAST(N'1981-11-11' AS Date), N'K9', N'CN27', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV010', N'Lê Bảo An', N'Nam', CAST(N'1989-12-10' AS Date), N'K10', N'CN30', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV011', N'Hoàng Thị Thu Thủy', N'Nữ', CAST(N'1989-10-12' AS Date), N'K11', N'CN33', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV012', N'Đỗ Trọng Thắng', N'Nam', CAST(N'1988-02-05' AS Date), N'K12', N'CN36', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV013', N'Mai Thị Hải', N'Nữ', CAST(N'1990-12-09' AS Date), N'K13', N'CN39', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV014', N'Vũ Thị Tuyết Ly', N'Nữ', CAST(N'1982-10-12' AS Date), N'K14', N'CN43', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV015', N'Nguyễn Văn Thanh', N'Nam', CAST(N'1991-12-09' AS Date), N'K15', N'CN46', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV016', N'Nguyễn Thị Lan Anh', N'Nữ', CAST(N'1981-10-12' AS Date), N'K16', N'CN49', N'CV1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV017', N'Nguyễn Văn Tùng', N'Nam', CAST(N'1981-02-09' AS Date), N'K1', N'CN2', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV018', N'Huỳnh Thị Kim Thy', N'Nữ', CAST(N'1980-05-12' AS Date), N'K2', N'CN5', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV019', N'Đỗ Trọng Hiếu', N'Nam', CAST(N'1990-12-02' AS Date), N'K3', N'CN10', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV020', N'Đặng Thị Mai Thúy', N'Nữ', CAST(N'1980-12-12' AS Date), N'K4', N'CN12', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV021', N'Nguyễn Văn Hậu', N'Nam', CAST(N'1988-10-12' AS Date), N'K5', N'CN15', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV022', N'Đỗ Thị Hà', N'Nữ', CAST(N'1990-12-02' AS Date), N'K6', N'CN19', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV023', N'Lê Văn Phúc', N'Nam', CAST(N'1988-07-13' AS Date), N'K7', N'CN22', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV024', N'Hồ Thị Thanh', N'Nữ', CAST(N'1979-12-12' AS Date), N'K8', N'CN25', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV025', N'Đinh Văn Đại', N'Nam', CAST(N'1977-01-12' AS Date), N'K9', N'CN28', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV026', N'Vũ Thị Hoa', N'Nữ', CAST(N'1980-12-09' AS Date), N'K10', N'CN31', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV027', N'Trần Văn Linh', N'Nữ', CAST(N'1988-12-27' AS Date), N'K11', N'CN34', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV028', N'Nguyễn Thị Thùy', N'Nữ', CAST(N'1993-12-24' AS Date), N'K12', N'CN37', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV029', N'Lê Văn Hòa', N'Nam', CAST(N'1980-07-06' AS Date), N'K13', N'CN40', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV030', N'Phạm Thị Mai', N'Nữ', CAST(N'1989-03-12' AS Date), N'K14', N'CN44', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV031', N'Bùi Văn Đức', N'Nam', CAST(N'1980-04-12' AS Date), N'K15', N'CN9', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV032', N'Đinh Thị Tuyết Anh', N'Nữ', CAST(N'1980-05-12' AS Date), N'K16', N'CN50', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV033', N'Lê Văn Long', N'Nam', CAST(N'1994-08-15' AS Date), N'K1', N'CN3', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV034', N'Nguyễn Thị Hường', N'Nữ', CAST(N'1981-11-12' AS Date), N'K2', N'CN6', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV035', N'Nguyễn Quang Hải', N'Nam', CAST(N'1979-06-22' AS Date), N'K3', N'CN10', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV036', N'Nguyễn Thị Loan', N'Nữ', CAST(N'1990-08-12' AS Date), N'K4', N'CN13', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV037', N'Nguyễn Lê Bảo Ngọc', N'Nữ', CAST(N'1980-11-08' AS Date), N'K5', N'CN16', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV038', N'Đinh Văn Tuấn', N'Nam', CAST(N'1987-10-12' AS Date), N'K6', N'CN18', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV039', N'Đỗ Thị Thu Thùy', N'Nữ', CAST(N'1989-11-12' AS Date), N'K7', N'CN23', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV040', N'Nguyễn Minh Quân', N'Nam', CAST(N'1988-12-08' AS Date), N'K8', N'CN26', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV041', N'Bùi Thị Ngọc Ly', N'Nữ', CAST(N'1980-09-09' AS Date), N'K9', N'CN29', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV042', N'Lý Văn Nghĩa', N'Nam', CAST(N'1987-12-12' AS Date), N'K10', N'CN32', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV043', N'Trần Thị Nga', N'Nữ', CAST(N'1990-12-12' AS Date), N'K11', N'CN33', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV044', N'Phạm Văn Đức', N'Nam', CAST(N'1991-09-19' AS Date), N'K16', N'CN51', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV045', N'Nguyễn Thị Thanh An', N'Nữ', CAST(N'1981-10-07' AS Date), N'K13', N'CN41', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV046', N'Đặng Văn Khánh', N'Nam', CAST(N'1980-10-09' AS Date), N'K15', N'CN47', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV047', N'Nguyễn Thị Linh', N'Nữ', CAST(N'1989-12-12' AS Date), N'K12', N'CN38', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV048', N'Lê Đức Trung', N'Nam', CAST(N'1980-10-12' AS Date), N'K14', N'CN45', N'CV2')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV049', N'Lê Thị Thu', N'Nữ', CAST(N'1980-10-01' AS Date), N'K16', N'CN52', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV050', N'Nguyễn Thị Mai Lan', N'Nữ', CAST(N'1981-01-01' AS Date), N'K16', N'CN53', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV051', N'Nguyễn Tấn Lực', N'Nam', CAST(N'1978-09-12' AS Date), N'K1', N'CN1', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV052', N'Trần Thị Hương', N'Nữ', CAST(N'1989-12-12' AS Date), N'K2', N'CN7', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV053', N'Phạm Văn Nam', N'Nam', CAST(N'1980-03-19' AS Date), N'K3', N'CN9', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV054', N'Lê Thị Trang', N'Nữ', CAST(N'1987-05-10' AS Date), N'K4', N'CN12', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV055', N'Nguyễn Văn Hòa', N'Nam', CAST(N'1981-02-24' AS Date), N'K5', N'CN16', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV056', N'Trần Văn Bình', N'Nam', CAST(N'1979-08-17' AS Date), N'K6', N'CN19', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV057', N'Hà Thị Mai', N'Nữ', CAST(N'1980-02-09' AS Date), N'K7', N'CN21', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV058', N'Vũ Văn Đức', N'Nam', CAST(N'1994-12-11' AS Date), N'K8', N'CN24', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV059', N'Nguyễn Thị Hồng', N'Nam', CAST(N'1980-02-01' AS Date), N'K9', N'CN27', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV060', N'Lê Văn An', N'Nam', CAST(N'1981-12-12' AS Date), N'K10', N'CN30', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV061', N'Hoàng Thị Thu', N'Nữ', CAST(N'1984-12-09' AS Date), N'K11', N'CN33', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV062', N'Đỗ Văn Thắng', N'Nam', CAST(N'1980-08-27' AS Date), N'K12', N'CN36', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV063', N'Phan Thị Hải', N'Nữ', CAST(N'1980-12-12' AS Date), N'K13', N'CN42', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV064', N'Vũ Thị Minh', N'Nữ', CAST(N'1984-08-30' AS Date), N'K14', N'CN43', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV065', N'Trần Văn Thanh', N'Nam', CAST(N'1989-10-19' AS Date), N'K15', N'CN46', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV066', N'Nguyễn Thị Lan', N'Nữ', CAST(N'1978-12-12' AS Date), N'K16', N'CN54', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV067', N'Lê Văn Tùng', N'Nam', CAST(N'1984-03-19' AS Date), N'K1', N'CN2', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV068', N'Huỳnh Thị Ngọc', N'Nữ', CAST(N'1981-12-28' AS Date), N'K2', N'CN8', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV069', N'Phạm Văn Hiếu', N'Nam', CAST(N'1987-03-12' AS Date), N'K3', N'CN10', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV070', N'Đặng Thị Thu', N'Nữ', CAST(N'1980-12-16' AS Date), N'K4', N'CN13', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV071', N'Trần Văn Hậu', N'Nam', CAST(N'1980-10-19' AS Date), N'K6', N'CN19', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV072', N'Nguyễn Thị Hà', N'Nữ', CAST(N'1987-06-12' AS Date), N'K5', N'CN17', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV073', N'Lê Văn Phúc', N'Nam', CAST(N'1980-12-29' AS Date), N'K7', N'CN22', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV074', N'Hồ Thị Thanh', N'Nữ', CAST(N'1980-06-12' AS Date), N'K8', N'CN25', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV075', N'Đinh Văn Đại', N'Nam', CAST(N'1984-01-12' AS Date), N'K9', N'CN28', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV076', N'Vũ Thị Hoa', N'Nam', CAST(N'1980-08-12' AS Date), N'K10', N'CN31', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV077', N'Trần Văn Linh', N'Nam', CAST(N'1980-07-13' AS Date), N'K11', N'CN34', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV078', N'Nguyễn Thị Thùy', N'Nữ', CAST(N'1977-12-12' AS Date), N'K12', N'CN37', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV079', N'Lê Văn Hòa', N'Nam', CAST(N'1977-12-12' AS Date), N'K13', N'CN39', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV080', N'Phạm Thị Mai', N'Nữ', CAST(N'1980-04-30' AS Date), N'K14', N'CN44', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV081', N'Bùi Văn Đức', N'Nam', CAST(N'1984-09-12' AS Date), N'K15', N'CN46', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV082', N'Đinh Thị Hồng', N'Nữ', CAST(N'1980-10-20' AS Date), N'K16', N'CN55', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV083', N'Lê Văn Long', N'Nam', CAST(N'1989-10-12' AS Date), N'K1', N'CN3', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV084', N'Nguyễn Thị Hường', N'Nữ', CAST(N'1981-02-12' AS Date), N'K2', N'CN4', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV085', N'Trần Văn Hải', N'Nam', CAST(N'1990-12-16' AS Date), N'K3', N'CN9', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV086', N'Hồ Thị Loan', N'Nữ', CAST(N'1979-11-21' AS Date), N'K4', N'CN12', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV087', N'Lê Thị Trà', N'Nữ', CAST(N'1980-09-12' AS Date), N'K5', N'CN14', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV088', N'Võ Văn Tuấn', N'Nam', CAST(N'1980-12-19' AS Date), N'K6', N'CN18', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV089', N'Đỗ Thị Thu', N'Nữ', CAST(N'1990-10-18' AS Date), N'K7', N'CN23', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV090', N'Nguyễn Văn Quân', N'Nam', CAST(N'1986-09-28' AS Date), N'K8', N'CN26', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV091', N'Bùi Thị Ngọc', N'Nữ', CAST(N'1993-11-29' AS Date), N'K9', N'CN29', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV092', N'Trần Văn Hiệp', N'Nam', CAST(N'1989-05-12' AS Date), N'K10', N'CN32', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV093', N'Nguyễn Thị Nga', N'Nữ', CAST(N'1980-07-13' AS Date), N'K11', N'CN34', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV094', N'Phạm Văn Hùng', N'Nam', CAST(N'1986-08-10' AS Date), N'K12', N'CN38', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV095', N'Trần Thị Thanh', N'Nữ', CAST(N'1989-12-12' AS Date), N'K13', N'CN40', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV096', N'Hoàng Văn Khánh', N'Nam', CAST(N'1990-10-12' AS Date), N'K15', N'CN47', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV097', N'Nguyễn Thị Lan', N'Nữ', CAST(N'1984-07-19' AS Date), N'K14', N'CN45', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV098', N'Lê Văn Trung', N'Nam', CAST(N'1988-11-26' AS Date), N'K16', N'CN49', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV099', N'Huỳnh Thị Hồng', N'Nữ', CAST(N'1989-03-27' AS Date), N'K1', N'CN1', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV100', N'Đặng Văn Lợi', N'Nam', CAST(N'1986-10-12' AS Date), N'K2', N'CN5', N'CV3')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV101', N'Nguyễn Thị Hằng', N'Nữ', CAST(N'1980-12-12' AS Date), N'K3', N'CN9', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV102', N'Trần Văn Tuấn', N'Nam', CAST(N'1989-12-14' AS Date), N'K4', N'CN13', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV103', N'Phạm Thị Hoài', N'Nữ', CAST(N'1983-10-29' AS Date), N'K5', N'CN15', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV104', N'Lê Văn Hòa', N'Nam', CAST(N'1992-07-12' AS Date), N'K6', N'CN18', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV105', N'Nguyễn Thị Nhung', N'Nữ', CAST(N'1980-02-11' AS Date), N'K7', N'CN21', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV106', N'Hoàng Văn Hùng', N'Nam', CAST(N'1989-10-12' AS Date), N'K8', N'CN24', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV107', N'Trần Thị Mai', N'Nữ', CAST(N'1982-09-30' AS Date), N'K9', N'CN27', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV108', N'Nguyễn Văn Hải', N'Nam', CAST(N'1990-09-12' AS Date), N'K10', N'CN30', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV109', N'Lê Thị Kim', N'Nữ', CAST(N'1980-09-16' AS Date), N'K11', N'CN33', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV110', N'Phan Văn Anh', N'Nam', CAST(N'1990-02-27' AS Date), N'K12', N'CN36', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV111', N'Trần Văn Hậu', N'Nam', CAST(N'1981-09-05' AS Date), N'K13', N'CN41', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV112', N'Nguyễn Thị Hạnh', N'Nữ', CAST(N'1993-10-12' AS Date), N'K14', N'CN43', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV113', N'Phạm Văn Lâm', N'Nam', CAST(N'1990-08-16' AS Date), N'K15', N'CN47', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV114', N'Lê Thị Thùy', N'Nữ', CAST(N'1977-09-10' AS Date), N'K16', N'CN50', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV115', N'Hoàng Văn Đức', N'Nam', CAST(N'1989-04-12' AS Date), N'K1', N'CN2', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV116', N'Nguyễn Thị Hằng', N'Nữ', CAST(N'1990-05-12' AS Date), N'K2', N'CN6', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV117', N'Trần Văn Lâm', N'Nam', CAST(N'1980-12-12' AS Date), N'K3', N'CN10', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV118', N'Lê Thị Hồng', N'Nữ', CAST(N'1979-12-19' AS Date), N'K4', N'CN12', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV119', N'Phan Văn Hùng', N'Nam', CAST(N'1980-09-28' AS Date), N'K5', N'CN17', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV120', N'Nguyễn Thị Tú', N'Nữ', CAST(N'1988-12-29' AS Date), N'K6', N'CN19', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV121', N'Hoàng Văn Thanh', N'Nam', CAST(N'1980-12-09' AS Date), N'K7', N'CN22', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV122', N'Trần Thị Mai', N'Nữ', CAST(N'1982-11-12' AS Date), N'K8', N'CN25', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV123', N'Nguyễn Văn Đông', N'Nam', CAST(N'1981-12-12' AS Date), N'K9', N'CN28', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV124', N'Nguyễn Thị Hồng', N'Nữ', CAST(N'1993-01-01' AS Date), N'K10', N'CN31', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV125', N'Hoàng Văn Thắng', N'Nam', CAST(N'1990-12-02' AS Date), N'K11', N'CN34', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV126', N'Lê Thị Thúy', N'Nữ', CAST(N'1980-12-23' AS Date), N'K12', N'CN37', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV127', N'Nguyễn Văn Bình', N'Nam', CAST(N'1986-02-26' AS Date), N'K13', N'CN42', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV128', N'Nguyễn Thị Ngọc', N'Nữ', CAST(N'1994-12-12' AS Date), N'K14', N'CN44', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV129', N'Nguyễn Văn Hoàng', N'Nam', CAST(N'1981-09-12' AS Date), N'K15', N'CN46', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV130', N'Phạm Thị Thanh', N'Nữ', CAST(N'1989-01-12' AS Date), N'K16', N'CN51', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV131', N'Trần Thị Loan', N'Nữ', CAST(N'1983-12-12' AS Date), N'K1', N'CN3', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV132', N'Nguyễn Văn Đức', N'Nam', CAST(N'1980-04-02' AS Date), N'K2', N'CN7', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV133', N'Hoàng Thị Mai', N'Nữ', CAST(N'1991-12-01' AS Date), N'K3', N'CN10', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV134', N'Nguyễn Văn Hải', N'Nam', CAST(N'1989-11-01' AS Date), N'K4', N'CN13', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV135', N'Trần Thị Lan', N'Nữ', CAST(N'1980-12-22' AS Date), N'K5', N'CN16', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV136', N'Lê Văn Phúc', N'Nam', CAST(N'1980-12-12' AS Date), N'K6', N'CN18', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV137', N'Nguyễn Thị Ngọc', N'Nữ', CAST(N'1980-01-09' AS Date), N'K7', N'CN23', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV138', N'Hoàng Văn Tiến', N'Nam', CAST(N'1989-11-06' AS Date), N'K8', N'CN26', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV139', N'Trần Thị Thúy', N'Nữ', CAST(N'1981-01-08' AS Date), N'K9', N'CN29', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV140', N'Nguyễn Văn Dương', N'Nam', CAST(N'1981-05-21' AS Date), N'K10', N'CN32', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV141', N'Nguyễn Thị Thảo', N'Nữ', CAST(N'1995-12-12' AS Date), N'K11', N'CN33', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV142', N'Trần Văn An', N'Nam', CAST(N'1990-09-11' AS Date), N'K12', N'CN38', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV143', N'Hoàng Thị Lan', N'Nữ', CAST(N'1991-12-12' AS Date), N'K13', N'CN39', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV144', N'Trần Văn Hà', N'Nam', CAST(N'1989-04-16' AS Date), N'K15', N'CN47', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV145', N'Nguyễn Thị Trang', N'Nữ', CAST(N'1992-12-12' AS Date), N'K14', N'CN45', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV146', N'Phạm Văn Thành', N'Nam', CAST(N'1982-04-23' AS Date), N'K16', N'CN52', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV147', N'Trần Thị Nga', N'Nữ', CAST(N'1979-08-06' AS Date), N'K16', N'CN53', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV148', N'Nguyễn Văn Hùng', N'Nam', CAST(N'1981-04-12' AS Date), N'K16', N'CN54', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV149', N'Phạm Thị Hạnh', N'Nữ', CAST(N'1980-06-12' AS Date), N'K16', N'CN55', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV150', N'Lê Văn Hoàng', N'Nam', CAST(N'1987-01-12' AS Date), N'K16', N'CN49', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV151', N'Nguyễn Thị Hoa', N'Nữ', CAST(N'1988-03-12' AS Date), N'K1', N'CN1', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV152', N'Trần Văn Dũng', N'Nam', CAST(N'1980-08-12' AS Date), N'K2', N'CN8', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV153', N'Nguyễn Thị Hồng', N'Nữ', CAST(N'1993-12-01' AS Date), N'K3', N'CN9', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV154', N'Trần Thị Hương', N'Nữ', CAST(N'1990-12-12' AS Date), N'K4', N'CN12', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV155', N'Nguyễn Văn Tú', N'Nam', CAST(N'1993-11-12' AS Date), N'K5', N'CN14', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV156', N'Trần Văn Thắng', N'Nam', CAST(N'1985-04-09' AS Date), N'K6', N'CN19', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV157', N'Phạm Thị Thu', N'Nữ', CAST(N'1980-02-02' AS Date), N'K7', N'CN21', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV158', N'Nguyễn Văn Đức', N'Nam', CAST(N'1989-10-12' AS Date), N'K8', N'CN24', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV159', N'Lê Thị Hải', N'Nữ', CAST(N'1990-03-19' AS Date), N'K9', N'CN27', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV160', N'Trần Văn Hùng', N'Nam', CAST(N'1988-05-12' AS Date), N'K10', N'CN30', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV161', N'Phạm Thị Thảo', N'Nữ', CAST(N'1981-02-12' AS Date), N'K11', N'CN33', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV162', N'Nguyễn Văn Nam', N'Nam', CAST(N'1990-09-12' AS Date), N'K12', N'CN36', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV163', N'Trần Thị Thúy', N'Nữ', CAST(N'1984-01-12' AS Date), N'K13', N'CN40', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV164', N'Lê Văn Hiếu', N'Nam', CAST(N'1980-02-11' AS Date), N'K14', N'CN43', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV165', N'Nguyễn Thị Hồng', N'Nữ', CAST(N'1982-04-13' AS Date), N'K15', N'CN46', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV166', N'Trần Văn Đức', N'Nam', CAST(N'1980-11-12' AS Date), N'K1', N'CN2', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV167', N'Phạm Thị Hà', N'Nữ', CAST(N'1993-12-12' AS Date), N'K3', N'CN10', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV168', N'Nguyễn Văn Thanh', N'Nam', CAST(N'1988-05-12' AS Date), N'K2', N'CN4', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV169', N'Trần Thị Ngọc', N'Nữ', CAST(N'1977-12-12' AS Date), N'K5', N'CN15', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV170', N'Phan Văn Long', N'Nam', CAST(N'1980-12-30' AS Date), N'K4', N'CN13', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV171', N'Nguyễn Thị Trang', N'Nữ', CAST(N'1980-04-26' AS Date), N'K7', N'CN22', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV172', N'Trần Văn Quân', N'Nam', CAST(N'1993-12-11' AS Date), N'K6', N'CN19', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV173', N'Phạm Thị Loan', N'Nữ', CAST(N'1992-12-12' AS Date), N'K8', N'CN25', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV174', N'Lê Văn Hòa', N'Nam', CAST(N'1980-12-14' AS Date), N'K9', N'CN28', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV175', N'Trần Thị Thảo', N'Nữ', CAST(N'1989-12-12' AS Date), N'K10', N'CN31', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV176', N'Nguyễn Văn Thắng', N'Nam', CAST(N'1983-12-12' AS Date), N'K11', N'CN34', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV177', N'Trần Thị Bích', N'Nữ', CAST(N'1980-10-12' AS Date), N'K12', N'CN37', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV178', N'Nguyễn Văn Bảo', N'Nam', CAST(N'1980-12-12' AS Date), N'K13', N'CN41', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV179', N'Lê Thị Hồng', N'Nữ', CAST(N'1980-08-12' AS Date), N'K14', N'CN44', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV180', N'Nguyễn Văn Phúc', N'Nam', CAST(N'1981-12-12' AS Date), N'K15', N'CN46', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV181', N'Trần Thị Nga', N'Nữ', CAST(N'1980-11-10' AS Date), N'K16', N'CN50', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV182', N'Phạm Văn Hùng', N'Nam', CAST(N'1993-10-12' AS Date), N'K1', N'CN3', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV183', N'Nguyễn Thị Hằng', N'Nam', CAST(N'1989-07-12' AS Date), N'K2', N'CN5', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV184', N'Trần Văn Tâm', N'Nam', CAST(N'1988-10-12' AS Date), N'K3', N'CN9', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV185', N'Phạm Thị Tú', N'Nữ', CAST(N'1989-02-12' AS Date), N'K5', N'CN17', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV186', N'Lê Văn Hải', N'Nam', CAST(N'1980-12-12' AS Date), N'K5', N'CN16', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV187', N'Trần Thị Lý', N'Nữ', CAST(N'1978-09-16' AS Date), N'K6', N'CN18', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV188', N'Nguyễn Văn An', N'Nam', CAST(N'1992-12-12' AS Date), N'K7', N'CN23', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV189', N'Phạm Thị Hương', N'Nữ', CAST(N'1994-10-01' AS Date), N'K8', N'CN26', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV190', N'Trần Văn Đạt', N'Nam', CAST(N'1980-09-05' AS Date), N'K9', N'CN29', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV191', N'Nguyễn Thị Thanh', N'Nữ', CAST(N'1995-10-08' AS Date), N'K10', N'CN32', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV192', N'Trần Thị Tâm', N'Nữ', CAST(N'1993-05-13' AS Date), N'K11', N'CN34', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV193', N'Phạm Văn Quân', N'Nam', CAST(N'1990-06-09' AS Date), N'K12', N'CN38', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV194', N'Nguyễn Thị Lan', N'Nam', CAST(N'1989-12-12' AS Date), N'K14', N'CN45', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV195', N'Hoàng Văn Trung', N'Nam', CAST(N'1981-12-30' AS Date), N'K13', N'CN42', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV196', N'Trần Thị Loan', N'Nữ', CAST(N'1977-09-21' AS Date), N'K15', N'CN47', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV197', N'Nguyễn Văn Dũng', N'Nam', CAST(N'1979-12-12' AS Date), N'K16', N'CN51', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV198', N'Lê Thị Hải', N'Nữ', CAST(N'1993-04-17' AS Date), N'K2', N'CN6', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV199', N'Nguyễn Văn Hiệp', N'Nam', CAST(N'1980-03-12' AS Date), N'K2', N'CN7', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV200', N'Trần Thị Hằng', N'Nữ', CAST(N'1980-12-12' AS Date), N'K2', N'CN8', N'CV3')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV201', N'Trần Thị Mai', N'Nữ', CAST(N'1991-12-12' AS Date), N'K15', N'CN47', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV202', N'Nguyễn Văn Tài', N'Nam', CAST(N'1993-12-10' AS Date), N'K16', N'CN52', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV203', N'Nguyễn Mai Hoa', N'Nữ', CAST(N'1980-12-19' AS Date), N'K16', N'CN53', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV204', N'Nguyễn Văn Tùng', N'Nam', CAST(N'1986-08-08' AS Date), N'K16', N'CN54', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV205', N'Nguyễn Thị Vân Anh', N'Nữ', CAST(N'1994-08-09' AS Date), N'K16', N'CN55', N'CV3')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV206', N'Nguyễn Thị Mai Anh', N'Nữ', CAST(N'1993-12-12' AS Date), N'K1', N'CN1', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV207', N'Nguyễn Tú Uyên', N'Nữ', CAST(N'1980-11-12' AS Date), N'K1', N'CN2', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV208', N'Nguyễn Thị Kim Ngân', N'Nữ', CAST(N'1977-08-12' AS Date), N'K1', N'CN3', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV209', N'Trần Thị Ngọc Linh', N'Nữ', CAST(N'1978-12-12' AS Date), N'K1', N'CN1', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV210', N'Nguyễn Thị Ngọc Anh', N'Nữ', CAST(N'1991-12-12' AS Date), N'K1', N'CN2', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV211', N'Trần Thị Ngọc', N'Nữ', CAST(N'1985-12-24' AS Date), N'K1', N'CN3', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV212', N'Lý Nhã Văn', N'Nữ', CAST(N'1990-07-07' AS Date), N'K3', N'CN10', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV213', N'Phạm Thị Thúy Diễm', N'Nữ', CAST(N'1988-05-05' AS Date), N'K3', N'CN9', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV214', N'Nguyễn Mai Cẩm Ly', N'Nữ', CAST(N'1976-12-12' AS Date), N'K3', N'CN10', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV215', N'Trần Thị Xuân', N'Nữ', CAST(N'1979-12-31' AS Date), N'K3', N'CN9', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV216', N'Đinh Thị Hải My', N'Nữ', CAST(N'1980-12-12' AS Date), N'K3', N'CN10', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV217', N'Nguyễn Thị Như Ý', N'Nữ', CAST(N'1980-12-14' AS Date), N'K3', N'CN9', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV218', N'Tô Thị Tường Vy', N'Nữ', CAST(N'1989-07-12' AS Date), N'K3', N'CN10', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV219', N'Nguyễn Thị Tuyết Trâm', N'Nữ', CAST(N'1979-04-12' AS Date), N'K3', N'CN9', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV220', N'Đinh Thị Ngọc Anh', N'Nữ', CAST(N'1987-12-10' AS Date), N'K3', N'CN10', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV221', N'Phạm Giang Linh', N'Nữ', CAST(N'1980-03-01' AS Date), N'K16', N'CN49', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV222', N'Bùi Thị Khánh Linh', N'Nữ', CAST(N'1992-12-09' AS Date), N'K16', N'CN49', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV223', N'Phạm Hoài Thương', N'Nữ', CAST(N'1980-09-01' AS Date), N'K16', N'CN50', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV224', N'Lê Phương Thảo', N'Nữ', CAST(N'1980-12-23' AS Date), N'K16', N'CN50', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV225', N'Nguyễn Hà Khánh Vi', N'Nữ', CAST(N'1990-03-12' AS Date), N'K16', N'CN51', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV226', N'Tạ Thị Thanh Hương', N'Nữ', CAST(N'1989-12-12' AS Date), N'K16', N'CN51', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV227', N'Tạ Ngọc Kim Anh', N'Nữ', CAST(N'1980-12-02' AS Date), N'K16', N'CN52', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV228', N'Nguyễn Hải Yến Chi', N'Nữ', CAST(N'1980-02-12' AS Date), N'K16', N'CN52', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV229', N'Lê Thị Thanh Tâm', N'Nữ', CAST(N'1987-05-13' AS Date), N'K16', N'CN53', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV230', N'Vũ Lê Hà Trang', N'Nữ', CAST(N'1986-10-10' AS Date), N'K16', N'CN53', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV231', N'Phạm Ngọc Hà', N'Nữ', CAST(N'1983-11-02' AS Date), N'K16', N'CN54', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV232', N'Vũ Ngọc Hân', N'Nữ', CAST(N'1980-12-19' AS Date), N'K16', N'CN54', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV233', N'Nguyễn Thị Ngọc Lan', N'Nữ', CAST(N'1980-12-12' AS Date), N'K16', N'CN55', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV234', N'Đinh Thị Bích Ngọc', N'Nữ', CAST(N'1986-10-12' AS Date), N'K16', N'CN55', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV235', N'Lê Yến Vy', N'Nữ', CAST(N'1992-09-18' AS Date), N'K2', N'CN7', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV236', N'Phạm Hồng Hạnh', N'Nữ', CAST(N'1994-01-12' AS Date), N'K2', N'CN7', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV237', N'Vũ Mai Linh', N'Nữ', CAST(N'1989-04-12' AS Date), N'K2', N'CN8', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV238', N'Lê Bùi Bảo Ngọc', N'Nữ', CAST(N'1980-12-13' AS Date), N'K2', N'CN8', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV239', N'Nguyễn Thị Thùy Giang', N'Nữ', CAST(N'1993-07-12' AS Date), N'K2', N'CN8', N'CV4')
INSERT [dbo].[NhanVien] ([MaNV], [HoTenNV], [GioiTinh], [NgaySinh], [MaKhoa], [MaChuyenNganh], [MaChucVu]) VALUES (N'NV240', N'Nguyễn Thị Hồng Hạnh', N'Nữ', CAST(N'1981-11-11' AS Date), N'K2', N'CN8', N'CV4')
GO
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN001', CAST(N'2024-04-20T00:00:00.000' AS DateTime), NULL, N'P249', N'V046', N'NV051')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN002', CAST(N'2024-04-21T00:00:00.000' AS DateTime), NULL, N'P051', N'V011', N'NV067')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN004', CAST(N'2024-04-19T00:00:00.000' AS DateTime), NULL, N'P056', N'T144', N'NV084')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN025', CAST(N'2024-04-15T00:00:00.000' AS DateTime), NULL, N'P250', N'V047', N'NV074')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN039', CAST(N'2024-04-20T00:00:00.000' AS DateTime), NULL, N'P055', N'V015', N'NV079')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN041', CAST(N'2024-04-25T00:00:00.000' AS DateTime), NULL, N'P054', N'V014', N'NV111')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN049', CAST(N'2024-04-16T00:00:00.000' AS DateTime), NULL, N'P254', N'T764', N'NV098')
INSERT [dbo].[PhanGiuong] ([MaBN], [NgayNhan], [NgayTra], [MaPhong], [MaGiuong], [MaNVYeuCau]) VALUES (N'BN050', CAST(N'2024-04-15T00:00:00.000' AS DateTime), NULL, N'P254', N'T765', N'NV114')
GO
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV003', N'PT001', N'BN001', CAST(N'2024-04-20T00:00:00.000' AS DateTime), N'PK303.1', N'NV083')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV016', N'PT010', N'BN025', CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'PK1608', N'NV055')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV019', N'PT001', N'BN004', CAST(N'2024-04-19T00:00:00.000' AS DateTime), N'PK303.2', N'NV071')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV032', N'PT016', N'BN049', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'PK1608', N'NV092')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV049', N'PT010', N'BN050', CAST(N'2024-04-15T00:00:00.000' AS DateTime), N'PK1608', N'NV098')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV069', N'PT011', N'BN039', CAST(N'2024-04-20T00:00:00.000' AS DateTime), N'PK303.2', N'NV155')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV117', N'PT011', N'BN041', CAST(N'2024-04-25T00:00:00.000' AS DateTime), N'PK303.2', N'NV200')
INSERT [dbo].[PhauThuat] ([MaNV], [MaPT], [MaBN], [NgayPT], [MaPhongKham], [MaNVYeuCau]) VALUES (N'NV133', N'PT001', N'BN002', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'PK303.1', N'NV158')
GO
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB001', N'BN001', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB001.1', N'BN001', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB002', N'BN002', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB002.1', N'BN002', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB003', N'BN003', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB003.1', N'BN003', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB004', N'BN004', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB004.1', N'BN004', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB005', N'BN005', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB005.1', N'BN005', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB006', N'BN006', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB006.1', N'BN006', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB007', N'BN007', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB007.1', N'BN007', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB008', N'BN008', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB008.1', N'BN008', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB009', N'BN009', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB009.1', N'BN009', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB010', N'BN010', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB010.1', N'BN010', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB011', N'BN011', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB011.1', N'BN011', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB012', N'BN012', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB012.1', N'BN012', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB013', N'BN013', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB013.1', N'BN013', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB014', N'BN014', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB014.1', N'BN014', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB015', N'BN015', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB015.1', N'BN015', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB016', N'BN016', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB016.1', N'BN016', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB017', N'BN017', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB017.1', N'BN017', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB018', N'BN018', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB018.1', N'BN018', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB019', N'BN019', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB019.1', N'BN019', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB020', N'BN020', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB020.1', N'BN020', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB021', N'BN021', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB021.1', N'BN021', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB022', N'BN022', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB022.1', N'BN022', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB023', N'BN023', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB023.1', N'BN023', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB024', N'BN024', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB024.1', N'BN024', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB025', N'BN025', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB025.1', N'BN025', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB026', N'BN026', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB026.1', N'BN026', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB027', N'BN027', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB027.1', N'BN027', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB028', N'BN028', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB028.1', N'BN028', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB029', N'BN029', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB029.1', N'BN029', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB030', N'BN030', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB030.1', N'BN030', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB030.2', N'BN030', CAST(N'2024-05-02' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB031', N'BN031', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB032', N'BN032', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB033', N'BN033', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB034', N'BN034', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB035', N'BN035', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB036', N'BN036', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB037', N'BN037', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB038', N'BN038', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB039', N'BN039', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB040', N'BN040', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB041', N'BN041', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB042', N'BN042', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB043', N'BN043', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB044', N'BN044', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB045', N'BN045', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB046', N'BN046', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB047', N'BN047', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB048', N'BN048', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB049', N'BN049', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB050', N'BN050', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB051', N'BN051', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB052', N'BN052', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB053', N'BN053', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB054', N'BN054', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB055', N'BN055', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB056', N'BN056', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB057', N'BN057', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB058', N'BN058', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB059', N'BN059', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB060', N'BN060', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB061', N'BN061', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB062', N'BN062', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB063', N'BN063', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB064', N'BN064', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB065', N'BN065', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB066', N'BN066', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB067', N'BN067', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB068', N'BN068', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB069', N'BN069', CAST(N'2024-04-13' AS Date))
GO
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB070', N'BN070', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB071', N'BN071', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB072', N'BN072', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB073', N'BN073', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB074', N'BN074', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB075', N'BN075', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB076', N'BN076', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB077', N'BN077', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB078', N'BN078', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB079', N'BN079', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB080', N'BN080', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB081', N'BN081', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB082', N'BN082', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB083', N'BN083', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB084', N'BN084', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB085', N'BN085', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB086', N'BN086', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB087', N'BN087', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB088', N'BN088', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB089', N'BN089', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB090', N'BN090', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB091', N'BN091', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB092', N'BN092', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB093', N'BN093', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB094', N'BN094', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB095', N'BN095', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB096', N'BN096', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB097', N'BN097', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB098', N'BN098', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB099', N'BN099', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB100', N'BN100', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB101', N'BN101', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB102', N'BN102', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB103', N'BN103', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB104', N'BN104', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB105', N'BN105', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB106', N'BN106', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB107', N'BN107', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB108', N'BN108', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB109', N'BN109', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB110', N'BN110', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB111', N'BN111', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB112', N'BN112', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB113', N'BN113', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB114', N'BN114', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB115', N'BN115', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB116', N'BN116', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB117', N'BN117', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB118', N'BN118', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB119', N'BN119', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB120', N'BN120', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB121', N'BN121', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB122', N'BN122', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB123', N'BN123', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB124', N'BN124', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB125', N'BN125', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB126', N'BN126', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB127', N'BN127', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB128', N'BN128', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB129', N'BN129', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB130', N'BN130', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB131', N'BN131', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB132', N'BN132', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB133', N'BN133', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB134', N'BN134', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB135', N'BN135', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB136', N'BN136', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB137', N'BN137', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB138', N'BN138', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB139', N'BN139', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB140', N'BN140', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB141', N'BN141', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB142', N'BN142', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB143', N'BN143', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB144', N'BN144', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB145', N'BN145', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB146', N'BN146', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB147', N'BN147', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB148', N'BN148', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB149', N'BN149', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB150', N'BN150', CAST(N'2024-04-13' AS Date))
INSERT [dbo].[PhieuKhamBenh] ([MaPhieuKB], [MaBN], [NgayKham]) VALUES (N'PKB150.1', N'BN150', CAST(N'2024-05-13' AS Date))
GO
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P001', N'Phòng VIP HSTC 1 ', N'Phòng Vip 1 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P002', N'Phòng VIP HSTC 2', N'Phòng Vip 1 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P003', N'Phòng VIP HSTC 3', N'Phòng Vip 1 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P004', N'Phòng VIP HSTC 4', N'Phòng Vip 1 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P005', N'Phòng VIP HSTC 5', N'Phòng Vip 1 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P006', N'Phòng Thường HSTC 1.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P007', N'Phòng Thường HSTC 2.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P008', N'Phòng Thường HSTC 3.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P009', N'Phòng Thường HSTC 4.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P010', N'Phòng Thường HSTC 5.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P011', N'Phòng Thường HSTC 6.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P012', N'Phòng Thường HSTC 7.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P013', N'Phòng Thường HSTC 8.2', N'Phòng 2 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P014', N'Phòng Thường HSTC 1.3', N'Phòng 3 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P015', N'Phòng Thường HSTC 2.3', N'Phòng 3 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P016', N'Phòng Thường HSTC 3.3', N'Phòng 3 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P017', N'Phòng Thường HSTC 4.3', N'Phòng 3 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P018', N'Phòng Thường HSTC 5.3', N'Phòng 3 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P019', N'Phòng Thường HSTC 1.5', N'Phòng 5 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P020', N'Phòng Thường HSTC 2.5', N'Phòng 5 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P021', N'Phòng Thường HSTC 3.5', N'Phòng 5 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P022', N'Phòng Thường HSTC 4.5', N'Phòng 5 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P023', N'Phòng Thường HSTC 1.7', N'Phòng 7 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P024', N'Phòng Thường HSTC 2.7', N'Phòng 7 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P025', N'Phòng Thường HSTC 3.7', N'Phòng 7 Giường', N'K1')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P026', N'Phòng VIP N1 ', N'Phòng Vip 1 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P027', N'Phòng VIP N2', N'Phòng Vip 1 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P028', N'Phòng VIP N3', N'Phòng Vip 1 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P029', N'Phòng VIP N4', N'Phòng Vip 1 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P030', N'Phòng VIP N5', N'Phòng Vip 1 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P031', N'Phòng Thường Noi 1.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P032', N'Phòng Thường Noi 2.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P033', N'Phòng Thường Noi 3.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P034', N'Phòng Thường Noi 4.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P035', N'Phòng Thường Noi 5.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P036', N'Phòng Thường Noi 6.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P037', N'Phòng Thường Noi 7.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P038', N'Phòng Thường Noi 8.2', N'Phòng 2 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P039', N'Phòng Thường Noi 1.3', N'Phòng 3 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P040', N'Phòng Thường Noi 2.3', N'Phòng 3 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P041', N'Phòng Thường Noi 3.3', N'Phòng 3 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P042', N'Phòng Thường Noi 4.3', N'Phòng 3 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P043', N'Phòng Thường Noi 5.3', N'Phòng 3 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P044', N'Phòng Thường Noi 1.5', N'Phòng 5 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P045', N'Phòng Thường Noi 2.5', N'Phòng 5 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P046', N'Phòng Thường Noi 3.5', N'Phòng 5 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P047', N'Phòng Thường Noi 4.5', N'Phòng 5 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P048', N'Phòng Thường Noi 1.7', N'Phòng 7 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P049', N'Phòng Thường Noi 2.7', N'Phòng 7 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P050', N'Phòng Thường Noi 3.7', N'Phòng 7 Giường', N'K2')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P051', N'Phòng VIP Ngoai 1 ', N'Phòng Vip 1 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P052', N'Phòng VIP Ngoai 2', N'Phòng Vip 1 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P053', N'Phòng VIP Ngoai 3', N'Phòng Vip 1 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P054', N'Phòng VIP Ngoai 4', N'Phòng Vip 1 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P055', N'Phòng VIP Ngoai 5', N'Phòng Vip 1 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P056', N'Phòng Thường Ngoai 1.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P057', N'Phòng Thường Ngoai 2.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P058', N'Phòng Thường Ngoai 3.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P059', N'Phòng Thường Ngoai 4.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P060', N'Phòng Thường Ngoai 5.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P061', N'Phòng Thường Ngoai 6.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P062', N'Phòng Thường Ngoai 7.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P063', N'Phòng Thường Ngoai 8.2', N'Phòng 2 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P064', N'Phòng Thường Ngoai 1.3', N'Phòng 3 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P065', N'Phòng Thường Ngoai 2.3', N'Phòng 3 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P066', N'Phòng Thường Ngoai 3.3', N'Phòng 3 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P067', N'Phòng Thường Ngoai 4.3', N'Phòng 3 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P068', N'Phòng Thường Ngoai 5.3', N'Phòng 3 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P069', N'Phòng Thường Ngoai 1.5', N'Phòng 5 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P070', N'Phòng Thường Ngoai 2.5', N'Phòng 5 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P071', N'Phòng Thường Ngoai 3.5', N'Phòng 5 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P072', N'Phòng Thường Ngoai 4.5', N'Phòng 5 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P073', N'Phòng Thường Ngoai 1.7', N'Phòng 7 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P074', N'Phòng Thường Ngoai 2.7', N'Phòng 7 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P075', N'Phòng Thường Ngoai 3.7', N'Phòng 7 Giường', N'K3')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P076', N'Phòng VIP YHCD 1 ', N'Phòng Vip 1 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P077', N'Phòng VIP YHCD 2', N'Phòng Vip 1 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P078', N'Phòng Thường YHCD 1.2', N'Phòng 2 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P079', N'Phòng Thường YHCD 2.2', N'Phòng 2 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P080', N'Phòng Thường YHCD 3.2', N'Phòng 2 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P081', N'Phòng Thường YHCD 4.2', N'Phòng 2 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P082', N'Phòng Thường YHCD 1.3', N'Phòng 3 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P083', N'Phòng Thường YHCD 2.3', N'Phòng 3 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P084', N'Phòng Thường YHCD 3.3', N'Phòng 3 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P085', N'Phòng Thường YHCD 1.5', N'Phòng 5 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P086', N'Phòng Thường YHCD 2.5', N'Phòng 5 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P087', N'Phòng Thường YHCD 3.5', N'Phòng 5 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P088', N'Phòng Thường YHCD 1.7', N'Phòng 7 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P089', N'Phòng Thường YHCD 2.7', N'Phòng 7 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P090', N'Phòng Thường YHCD 3.7', N'Phòng 7 Giường', N'K4')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P091', N'Phòng VIP Nhi 1 ', N'Phòng Vip 1 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P092', N'Phòng VIP Nhi 2', N'Phòng Vip 1 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P093', N'Phòng VIP Nhi 3', N'Phòng Vip 1 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P094', N'Phòng VIP Nhi 4', N'Phòng Vip 1 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P095', N'Phòng VIP Nhi 5', N'Phòng Vip 1 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P096', N'Phòng Thường Nhi 1.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P097', N'Phòng Thường Nhi 2.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P098', N'Phòng Thường Nhi 3.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P099', N'Phòng Thường Nhi 4.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P100', N'Phòng Thường Nhi 5.2', N'Phòng 2 Giường', N'K5')
GO
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P101', N'Phòng Thường Nhi 6.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P102', N'Phòng Thường Nhi 7.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P103', N'Phòng Thường Nhi 8.2', N'Phòng 2 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P104', N'Phòng Thường Nhi 1.3', N'Phòng 3 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P105', N'Phòng Thường Nhi 2.3', N'Phòng 3 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P106', N'Phòng Thường Nhi 3.3', N'Phòng 3 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P107', N'Phòng Thường Nhi 4.3', N'Phòng 3 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P108', N'Phòng Thường Nhi 5.3', N'Phòng 3 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P109', N'Phòng Thường Nhi 1.5', N'Phòng 5 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P110', N'Phòng Thường Nhi 2.5', N'Phòng 5 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P111', N'Phòng Thường Nhi 3.5', N'Phòng 5 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P112', N'Phòng Thường Nhi 4.5', N'Phòng 5 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P113', N'Phòng Thường Nhi 1.7', N'Phòng 7 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P114', N'Phòng Thường Nhi 2.7', N'Phòng 7 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P115', N'Phòng Thường Nhi 3.7', N'Phòng 7 Giường', N'K5')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P116', N'Phòng VIP PHCN 1 ', N'Phòng Vip 1 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P117', N'Phòng VIP PHCN 2', N'Phòng Vip 1 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P118', N'Phòng VIP PHCN 3', N'Phòng Vip 1 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P119', N'Phòng VIP PHCN 4', N'Phòng Vip 1 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P120', N'Phòng VIP PHCN 5', N'Phòng Vip 1 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P121', N'Phòng Thường PHCN 1.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P122', N'Phòng Thường PHCN 2.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P123', N'Phòng Thường PHCN 3.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P124', N'Phòng Thường PHCN 4.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P125', N'Phòng Thường PHCN 5.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P126', N'Phòng Thường PHCN 6.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P127', N'Phòng Thường PHCN 7.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P128', N'Phòng Thường PHCN 8.2', N'Phòng 2 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P129', N'Phòng Thường PHCN 1.3', N'Phòng 3 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P130', N'Phòng Thường PHCN 2.3', N'Phòng 3 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P131', N'Phòng Thường PHCN 3.3', N'Phòng 3 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P132', N'Phòng Thường PHCN 4.3', N'Phòng 3 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P133', N'Phòng Thường PHCN 5.3', N'Phòng 3 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P134', N'Phòng Thường PHCN 1.5', N'Phòng 5 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P135', N'Phòng Thường PHCN 2.5', N'Phòng 5 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P136', N'Phòng Thường PHCN 3.5', N'Phòng 5 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P137', N'Phòng Thường PHCN 4.5', N'Phòng 5 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P138', N'Phòng Thường PHCN 1.7', N'Phòng 7 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P139', N'Phòng Thường PHCN 2.7', N'Phòng 7 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P140', N'Phòng Thường PHCN 3.7', N'Phòng 7 Giường', N'K6')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P141', N'Phòng VIP DL 1 ', N'Phòng Vip 1 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P142', N'Phòng VIP DL 2', N'Phòng Vip 1 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P143', N'Phòng Thường DL 1.2', N'Phòng 2 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P144', N'Phòng Thường DL 2.2', N'Phòng 2 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P145', N'Phòng Thường DL 3.2', N'Phòng 2 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P146', N'Phòng Thường DL 1.3', N'Phòng 3 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P147', N'Phòng Thường DL 2.3', N'Phòng 3 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P148', N'Phòng Thường DL 3.3', N'Phòng 3 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P149', N'Phòng Thường DL 1.5', N'Phòng 5 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P150', N'Phòng Thường DL 2.5', N'Phòng 5 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P151', N'Phòng Thường DL 1.7', N'Phòng 7 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P152', N'Phòng Thường DL 2.7', N'Phòng 7 Giường', N'K7')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P153', N'Phòng VIP YHTT 1 ', N'Phòng Vip 1 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P154', N'Phòng VIP YHTT 2', N'Phòng Vip 1 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P155', N'Phòng Thường YHTT 1.2', N'Phòng 2 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P156', N'Phòng Thường YHTT 2.2', N'Phòng 2 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P157', N'Phòng Thường YHTT 3.2', N'Phòng 2 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P158', N'Phòng Thường YHTT 1.3', N'Phòng 3 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P159', N'Phòng Thường YHTT 2.3', N'Phòng 3 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P160', N'Phòng Thường YHTT 3.3', N'Phòng 3 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P161', N'Phòng Thường YHTT 1.5', N'Phòng 5 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P162', N'Phòng Thường YHTT 2.5', N'Phòng 5 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P163', N'Phòng Thường YHTT 1.7', N'Phòng 7 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P164', N'Phòng Thường YHTT 2.7', N'Phòng 7 Giường', N'K8')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P165', N'Phòng VIP San 1 ', N'Phòng Vip 1 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P166', N'Phòng VIP San 2', N'Phòng Vip 1 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P167', N'Phòng Thường San 1.2', N'Phòng 2 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P168', N'Phòng Thường San 2.2', N'Phòng 2 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P169', N'Phòng Thường San 3.2', N'Phòng 2 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P170', N'Phòng Thường San 1.3', N'Phòng 3 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P171', N'Phòng Thường San 2.3', N'Phòng 3 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P172', N'Phòng Thường San 3.3', N'Phòng 3 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P173', N'Phòng Thường San 1.5', N'Phòng 5 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P174', N'Phòng Thường San 2.5', N'Phòng 5 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P175', N'Phòng Thường San 1.7', N'Phòng 7 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P176', N'Phòng Thường San 2.7', N'Phòng 7 Giường', N'K9')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P177', N'Phòng VIP TKH 1 ', N'Phòng Vip 1 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P178', N'Phòng VIP TKH 2', N'Phòng Vip 1 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P179', N'Phòng Thường TKH 1.2', N'Phòng 2 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P180', N'Phòng Thường TKH 2.2', N'Phòng 2 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P181', N'Phòng Thường TKH 3.2', N'Phòng 2 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P182', N'Phòng Thường TKH 1.3', N'Phòng 3 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P183', N'Phòng Thường TKH 2.3', N'Phòng 3 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P184', N'Phòng Thường TKH 3.3', N'Phòng 3 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P185', N'Phòng Thường TKH 1.5', N'Phòng 5 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P186', N'Phòng Thường TKH 2.5', N'Phòng 5 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P187', N'Phòng Thường TKH 1.7', N'Phòng 7 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P188', N'Phòng Thường TKH 2.7', N'Phòng 7 Giường', N'K10')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P189', N'Phòng VIP RHM 1 ', N'Phòng Vip 1 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P190', N'Phòng VIP RHM 2', N'Phòng Vip 1 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P191', N'Phòng Thường RHM 1.2', N'Phòng 2 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P192', N'Phòng Thường RHM 2.2', N'Phòng 2 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P193', N'Phòng Thường RHM 3.2', N'Phòng 2 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P194', N'Phòng Thường RHM 1.3', N'Phòng 3 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P195', N'Phòng Thường RHM 2.3', N'Phòng 3 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P196', N'Phòng Thường RHM 3.3', N'Phòng 3 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P197', N'Phòng Thường RHM 1.5', N'Phòng 5 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P198', N'Phòng Thường RHM 2.5', N'Phòng 5 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P199', N'Phòng Thường RHM 1.7', N'Phòng 7 Giường', N'K11')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P200', N'Phòng Thường RHM 2.7', N'Phòng 7 Giường', N'K11')
GO
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P201', N'Phòng VIP YHNT 1 ', N'Phòng Vip 1 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P202', N'Phòng VIP YHNT 2', N'Phòng Vip 1 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P203', N'Phòng Thường YHNT 1.2', N'Phòng 2 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P204', N'Phòng Thường YHNT 2.2', N'Phòng 2 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P205', N'Phòng Thường YHNT 3.2', N'Phòng 2 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P206', N'Phòng Thường YHNT 1.3', N'Phòng 3 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P207', N'Phòng Thường YHNT 2.3', N'Phòng 3 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P208', N'Phòng Thường YHNT 3.3', N'Phòng 3 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P209', N'Phòng Thường YHNT 1.5', N'Phòng 5 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P210', N'Phòng Thường YHNT 2.5', N'Phòng 5 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P211', N'Phòng Thường YHNT 1.7', N'Phòng 7 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P212', N'Phòng Thường YHNT 2.7', N'Phòng 7 Giường', N'K12')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P213', N'Phòng VIP UB 1 ', N'Phòng Vip 1 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P214', N'Phòng VIP UB 2', N'Phòng Vip 1 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P215', N'Phòng Thường UB 1.2', N'Phòng 2 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P216', N'Phòng Thường UB 2.2', N'Phòng 2 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P217', N'Phòng Thường UB 3.2', N'Phòng 2 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P218', N'Phòng Thường UB 1.3', N'Phòng 3 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P219', N'Phòng Thường UB 2.3', N'Phòng 3 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P220', N'Phòng Thường UB 3.3', N'Phòng 3 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P221', N'Phòng Thường UB 1.5', N'Phòng 5 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P222', N'Phòng Thường UB 2.5', N'Phòng 5 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P223', N'Phòng Thường UB 1.7', N'Phòng 7 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P224', N'Phòng Thường UB 2.7', N'Phòng 7 Giường', N'K13')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P225', N'Phòng VIP TM 1 ', N'Phòng Vip 1 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P226', N'Phòng VIP TM 2', N'Phòng Vip 1 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P227', N'Phòng Thường TM 1.2', N'Phòng 2 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P228', N'Phòng Thường TM 2.2', N'Phòng 2 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P229', N'Phòng Thường TM 3.2', N'Phòng 2 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P230', N'Phòng Thường TM 1.3', N'Phòng 3 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P231', N'Phòng Thường TM 2.3', N'Phòng 3 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P232', N'Phòng Thường TM 3.3', N'Phòng 3 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P233', N'Phòng Thường TM 1.5', N'Phòng 5 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P234', N'Phòng Thường TM 2.5', N'Phòng 5 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P235', N'Phòng Thường TM 1.7', N'Phòng 7 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P236', N'Phòng Thường TM 2.7', N'Phòng 7 Giường', N'K14')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P237', N'Phòng VIP NB 1 ', N'Phòng Vip 1 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P238', N'Phòng VIP NB 2', N'Phòng Vip 1 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P239', N'Phòng Thường NB 1.2', N'Phòng 2 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P240', N'Phòng Thường NB 2.2', N'Phòng 2 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P241', N'Phòng Thường NB 3.2', N'Phòng 2 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P242', N'Phòng Thường NB 1.3', N'Phòng 3 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P243', N'Phòng Thường NB 2.3', N'Phòng 3 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P244', N'Phòng Thường NB 3.3', N'Phòng 3 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P245', N'Phòng Thường NB 1.5', N'Phòng 5 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P246', N'Phòng Thường NB 2.5', N'Phòng 5 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P247', N'Phòng Thường NB 1.7', N'Phòng 7 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P248', N'Phòng Thường NB 2.7', N'Phòng 7 Giường', N'K15')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P249', N'Phòng VIP CTCH 1 ', N'Phòng Vip 1 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P250', N'Phòng VIP CTCH 2', N'Phòng Vip 1 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P251', N'Phòng VIP CTCH 3', N'Phòng Vip 1 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P252', N'Phòng VIP CTCH 4', N'Phòng Vip 1 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P253', N'Phòng VIP CTCH 5', N'Phòng Vip 1 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P254', N'Phòng Thường CTCH 1.2', N'Phòng 2 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P255', N'Phòng Thường CTCH 2.2', N'Phòng 2 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P256', N'Phòng Thường CTCH 3.2', N'Phòng 2 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P257', N'Phòng Thường CTCH 4.2', N'Phòng 2 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P258', N'Phòng Thường CTCH 5.2', N'Phòng 2 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P259', N'Phòng Thường CTCH 6.2', N'Phòng 2 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P260', N'Phòng Thường CTCH 1.3', N'Phòng 3 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P261', N'Phòng Thường CTCH 2.3', N'Phòng 3 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P262', N'Phòng Thường CTCH 3.3', N'Phòng 3 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P263', N'Phòng Thường CTCH 4.3', N'Phòng 3 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P264', N'Phòng Thường CTCH 1.5', N'Phòng 5 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P265', N'Phòng Thường CTCH 2.5', N'Phòng 5 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P266', N'Phòng Thường CTCH 3.5', N'Phòng 5 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P267', N'Phòng Thường CTCH 4.5', N'Phòng 5 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P268', N'Phòng Thường CTCH 1.7', N'Phòng 7 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P269', N'Phòng Thường CTCH 2.7', N'Phòng 7 Giường', N'K16')
INSERT [dbo].[PhongBenh] ([MaPhong], [TenPhong], [Loai], [MaKhoa]) VALUES (N'P270', N'Phòng Thường CTCH 3.7', N'Phòng 7 Giường', N'K16')
GO
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1001', N'Phòng Khám Thần kinh cận lâm sàng', N'K10', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1002', N'Phòng Khám Điều trị đau', N'K10', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1003', N'Phòng Khám Tổng hợp thần kinh', N'K10', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1004', N'Phòng Điện não đồ', N'K10', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1005', N'Phòng Chụp cộng hưởng từ', N'K10', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK101.1', N'Phòng Hồi sức và Chăm sóc cấp cứu 1', N'K1', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK101.2', N'Phòng Hồi sức và Chăm sóc cấp cứu 2', N'K1', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK102.1', N'Phòng Hồi sức tim mạch 1', N'K1', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK102.2', N'Phòng Hồi sức tim mạch 2', N'K1', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK103.1', N'Phòng Hồi sức nội tiết 1', N'K1', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK103.2', N'Phòng Hồi sức nội tiết 2', N'K1', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK104.1', N'Phòng Cấp cứu tim mạch 1', N'K1', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK104.2', N'Phòng Cấp cứu tim mạch 2', N'K1', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1101', N'Phòng Khám Nha khoa tổng quát', N'K11', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1102', N'Phòng Khám Răng hàm mặt Phẫu thuật', N'K11', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1201', N'Phòng Khám Hô hấp', N'K12', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1202', N'Phòng Khám Y học cấp cứu', N'K12', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1203', N'Phòng Khám Y học Hồi sức tích cực', N'K12', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1204', N'Phòng Xét nghiệm nội khoa', N'K12', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1301', N'Phòng Khám Ung thư Nội khoa', N'K13', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1302', N'Phòng Khám Ung thư Ngoại khoa', N'K13', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1303', N'Phòng Khám Ung thư Bức xạ', N'K13', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1304', N'Phòng Khám Hóa trị liệu', N'K13', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1305', N'Phòng Xét nghiệm ung bướu', N'K13', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1306', N'Phòng Hóa trị liệu', N'K13', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1401', N'Phòng Khám Tim mạch Nội khoa', N'K14', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1402', N'Phòng Khám Tim mạch Ngoại khoa', N'K14', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1403', N'Phòng Khám Tim mạch Nhi khoa', N'K14', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1404', N'Phòng Chụp tim mạch', N'K14', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1405', N'Phòng Cấp cứu tim mạch', N'K14', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1501', N'Phòng Khám Ngoại biên Tổng quát', N'K15', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1502', N'Phòng Khám Ngoại biên Phẫu thuât', N'K15', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1503', N'Phòng Phẫu thuật ngoại biên', N'K15', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1504', N'Phòng Xét nghiệm ngoại biên', N'K15', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1601', N'Phòng Khám Chấn thương chỉnh hình Tổng quát', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1602', N'Phòng Khám Phẫu thuật chỉnh hình', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1603', N'Phòng Khám Chấn thương cột sống', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1604', N'Phòng Khám Chấn thương thể thao', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1605', N'Phòng Khám Chấn thương gối và cẳng chân', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1606', N'Phòng Khám Chấn thương vai và cánh tay', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1607', N'Phòng Khám Chấn thương chân và cổ chân', N'K16', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1608', N'Phòng Phẫu thuật chấn thương chỉnh hình', N'K16', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK1609', N'Phòng Vật lý trị liệu chấn thương chỉnh hình', N'K16', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK201.1', N'Phòng Khám Nội tim mạch 1', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK201.2', N'Phòng Khám Nội tim mạch 2', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK202.1', N'Phòng Khám Nội tiêu hóa 1', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK202.2', N'Phòng Khám Nội tiêu hóa 2', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK203.1', N'Phòng Khám Nội huyết học 1', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK203.2', N'Phòng Khám Nội huyết học 2', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK204.1', N'Phòng Khám Nội tiết 1', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK204.2', N'Phòng Khám Nội tiết 2', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK205.1', N'Phòng Khám Nhi khoa 1', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK205.2', N'Phòng Khám Nhi khoa 2', N'K2', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK301.1', N'Phòng Khám Hồi sức 1', N'K3', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK301.2', N'Phòng Khám Hồi sức 2', N'K3', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK302.1', N'Phòng Khám Ngoại tiết niệu 1', N'K3', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK302.2', N'Phòng Khám Ngoại tiết niệu 2', N'K3', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK303.1', N'Phòng Phẫu thuật tổng quát 1', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK303.2', N'Phòng Phẫu thuật tổng quát 2', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK304.1', N'Phòng Phẫu thuật tim mạch 1', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK304.2', N'Phòng Phẫu thuật tim mạch 2', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK305.1', N'Phòng Phẫu thuật thần kinh 1', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK305.2', N'Phòng Phẫu thuật thần kinh 2', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK306', N'Phòng Chụp X-quang ', N'K3', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK401.1', N'Phòng Khám Y Tế Công Cộng 1', N'K4', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK401.2', N'Phòng Khám Y Tế Công Cộng 2', N'K4', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK402.1', N'Phòng Khám Y Học Địa Phương 1', N'K4', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK402.2', N'Phòng Khám Y Học Địa Phương 2', N'K4', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK403', N'Phòng Xét nghiệm máu', N'K4', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK404', N'Phòng Xét nghiệm nước tiểu', N'K4', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK405', N'Phòng Xét nghiệm vi sinh', N'K4', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK406', N'Phòng Xét nghiệm sinh hóa', N'K4', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK407', N'Phòng Xét nghiệm huyết học', N'K4', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK408', N'Phòng Xét nghiệm miễn dịch', N'K4', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK501', N'Phòng Khám Nhi Khoa nội tiết', N'K5', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK502', N'Phòng Khám Nhi Khoa hô hấp', N'K5', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK503', N'Phòng Khám Nhi Khoa tim mạch', N'K5', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK504', N'Phòng Khám Nhi Khoa tâm thần', N'K5', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK505', N'Phòng Cấp cứu nhi khoa', N'K5', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK601', N'Phòng Khám PHCN Thần Kinh', N'K6', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK602', N'Phòng Khám PHCN Vật Lý', N'K6', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK701', N'Phòng Khám Da liễu dị ứng', N'K7', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK702', N'Phòng Khám Da liễu nội tiết', N'K7', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK703', N'Phòng Khám Da liễu Laser', N'K7', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK704', N'Phòng Xét nghiệm da liễu', N'K7', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK705', N'Phòng Phẫu thuật da liễu', N'K7', N'Phòng Chức Năng')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK801', N'Phòng Khám Y học thể thao', N'K8', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK802', N'Phòng Khám Y học thể thao phẫu thuật', N'K8', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK803', N'Phòng Khám Y học thể thao nội tiết', N'K8', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK901', N'Phòng Khám Sản phụ khoa', N'K9', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK902', N'Phòng Khám Y học sinh sản', N'K9', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK903', N'Phòng Khám Ung thư phụ khoa', N'K9', N'Phòng Khám')
INSERT [dbo].[PhongKham] ([MaPhongKham], [TenPhongKham], [MaKhoa], [LoaiPhong]) VALUES (N'PK904', N'Phòng Sinh', N'K9', N'Phòng chức Năng')
GO
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA001', N'Tim đập nhanh, đau tim', N'Bệnh tim từ nhỏ', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim', N'BN001', N'NV051', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB001')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA001.1', N'Tim đập nhanh, đau tim', N'Bệnh tim từ nhỏ', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim', N'BN001', N'NV051', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB001.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA002', N'Khó thở', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN002', N'NV067', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB002')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA002.1', N'Khó thở', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN002', N'NV067', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB002.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA003', N'Khó thở, đau đầu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi nặng', N'BN003', N'NV083', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB003')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA003.1', N'Khó thở, đau đầu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi nặng', N'BN003', N'NV083', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB003.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA004', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau tim', N'BN004', N'NV084', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB004')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA004.1', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau tim', N'BN004', N'NV084', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB004.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA005', N'Đau bụng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm gan', N'BN005', N'NV100', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB005')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA005.1', N'Đau bụng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm gan', N'BN005', N'NV100', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB005.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA006', N'Mệt mỏi, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh bạch huyết', N'BN006', N'NV052', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB006')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA006.1', N'Mệt mỏi, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh bạch huyết', N'BN006', N'NV052', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB006.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA007', N'Đói, uống nước nhiều, mệt mỏi', N'Đã từng tiểu đường', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh tiểu đường', N'BN007', N'NV116', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB007')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA007.1', N'Đói, uống nước nhiều, mệt mỏi', N'Đã từng tiểu đường', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh tiểu đường', N'BN007', N'NV116', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB007.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA008', N'Đau họng, khó nuốt', N'Không', N'Nhịp tim 98/1p, huyết áp 85 mmHg', N'Viêm Họng', N'BN008', N'NV068', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB008')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA008.1', N'Đau họng, khó nuốt', N'Không', N'Nhịp tim 98/1p, huyết áp 85 mmHg', N'Viêm Họng', N'BN008', N'NV068', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB008.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA009', N'Mất khả năng nói chuyện, mất khả năng di chuyển một phần cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN009', N'NV069', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB009')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA009.1', N'Mất khả năng nói chuyện, mất khả năng di chuyển một phần cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN009', N'NV069', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB009.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA010', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận', N'BN010', N'NV053', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB010')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA010.1', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận', N'BN010', N'NV053', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB010.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA011', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận', N'BN011', N'NV053', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB011')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA011.1', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận', N'BN011', N'NV053', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB011.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA012', N'Co giựt, sốt', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt xuất huyết', N'BN012', N'NV054', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB012')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA012.1', N'Co giựt, sốt', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt xuất huyết', N'BN012', N'NV054', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB012.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA013', N'Đau bụng, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiêu chảy', N'BN013', N'NV070', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB013')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA013.1', N'Đau bụng, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiêu chảy', N'BN013', N'NV070', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB013.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA014', N'Cảm giác căng thẳng, giảm cân', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Tăng giáp', N'BN014', N'NV087', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB014')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA014.1', N'Cảm giác căng thẳng, giảm cân', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Tăng giáp', N'BN014', N'NV087', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB014.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA015', N'Khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Hen suyễn', N'BN015', N'NV103', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB015')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA015.1', N'Khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Hen suyễn', N'BN015', N'NV103', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB015.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA016', N'Khó thở, tim đập nhanh', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Suy tim', N'BN016', N'NV055', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB016')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA016.1', N'Khó thở, tim đập nhanh', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Suy tim', N'BN016', N'NV055', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB016.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA017', N'Không tập trung, khó kiểm soát hành động', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn tăng động giảm chú ý', N'BN017', N'NV072', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB017')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA017.1', N'Không tập trung, khó kiểm soát hành động', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn tăng động giảm chú ý', N'BN017', N'NV072', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB017.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA018', N'Đau, chuột rút ở một hoặc nhiều vùng cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh toàn thân', N'BN018', N'NV088', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB018')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA018.1', N'Đau, chuột rút ở một hoặc nhiều vùng cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh toàn thân', N'BN018', N'NV088', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB018.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA019', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng', N'BN019', N'NV071', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB019')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA019.1', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng', N'BN019', N'NV071', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB019.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA020', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng', N'BN020', N'NV071', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB020')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA020.1', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng', N'BN020', N'NV071', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB020.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA021', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis', N'BN021', N'NV089', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB021')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA021.1', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis', N'BN021', N'NV089', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB021.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA022', N'Đau ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau đầu', N'BN022', N'NV076', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB022')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA022.1', N'Đau ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau đầu', N'BN022', N'NV076', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB022.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA023', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm', N'BN023', N'NV057', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB023')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA023.1', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm', N'BN023', N'NV057', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB023.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA024', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương', N'BN024', N'NV058', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB024')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA024.1', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương', N'BN024', N'NV058', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB024.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA025', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối', N'BN025', N'NV074', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB025')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA025.1', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối', N'BN025', N'NV074', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB025.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA026', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', N'BN026', N'NV090', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB026')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA026.1', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', N'BN026', N'NV090', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB026.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA027', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt', N'BN027', N'NV059', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB027')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA027.1', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt', N'BN027', N'NV059', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB027.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA028', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung', N'BN028', N'NV075', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB028')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA028.1', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung', N'BN028', N'NV075', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB028.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA029', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung', N'BN029', N'NV091', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB029')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA029.1', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung', N'BN029', N'NV091', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB029.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA030', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh', N'BN030', N'NV060', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB030')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA030.1', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh', N'BN030', N'NV060', CAST(N'2024-05-02T00:00:00.000' AS DateTime), N'PKB030.1')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA031', N'Đau ở vùng trán, căng thẳng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Đau đầu', N'BN031', N'NV076', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB031')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA032', N'Run chân, chuột rút', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn chức năng thần kinh', N'BN032', N'NV092', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB032')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA033', N'Nhức răng, đau răng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sâu răng', N'BN033', N'NV061', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB033')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA034', N'Ngưng thở trong khi ngủ, rít', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Tắc nghẽn đường hô hấp khi ngủ', N'BN034', N'NV077', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB034')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA035', N'Răng sâu', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Loại bỏ răng sâu, trồng răng mới', N'BN035', N'NV093', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB035')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA036', N'Khó thở', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Hen suyễn', N'BN036', N'NV062', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB036')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA037', N'Đau ngực, khó thở, buồn nôn', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN037', N'NV078', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB037')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA038', N'Mất khả năng nghe, giao tiếp', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN038', N'NV094', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB038')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA039', N'Khó tiêu, tiêu chảy, ăn ít dễ no', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư dạ dày', N'BN039', N'NV079', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB039')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA040', N'Khối u, vùng da thay đổi màu sắc, kích thước', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư da', N'BN040', N'NV095', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB040')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA041', N'Ho dai dẳng có máu, khó thở', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư phổi', N'BN041', N'NV111', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB041')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA042', N'Đau đầu, buồn nôn và ói mửa', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư não', N'BN042', N'NV063', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB042')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA043', N'Đau áp lực trong ngực', N'Không', N'Nhịp tim 150/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN043', N'NV064', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB043')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA044', N'Đau ngực kéo dài, khó thở, và cảm giác mệt mỏi', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Động mạch vành', N'BN044', N'NV080', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB044')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA045', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Suy tim', N'BN045', N'NV097', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB045')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA046', N'Đau và căng cơ cổ, cứng cổ', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Thoái hóa đốt sống cổ', N'BN046', N'NV081', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB046')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA047', N'Đau, cứng cột sống, giảm độ linh hoạt, và đau lan ra từ cột sống xuống tay, cứng cổ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gai cột sống', N'BN047', N'NV096', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB047')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA048', N'Nhịp tim chậm', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bradycardia', N'BN048', N'NV168', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB048')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA049', N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương', N'BN049', N'NV098', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB049')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA050', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo cột sống', N'BN050', N'NV114', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB050')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA051', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo ngược cột sống', N'BN051', N'NV130', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB051')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA052', N'Đau, sưng vùng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rách cơ', N'BN052', N'NV049', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB052')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA053', N'Rách dây chằng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tổn thương dây chằng và gân', N'BN053', N'NV050', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB053')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA054', N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương ở cẳng tay', N'BN054', N'NV066', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB054')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA055', N'Đau, sưng, không di chuyển được', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Trẹo cổ chân', N'BN055', N'NV082', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB055')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA056', N'Tim đập không đều, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Nhồi máu cơ tim', N'BN056', N'NV099', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB056')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA057', N'Tim đập nhanh, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim', N'BN057', N'NV115', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB057')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA058', N'Đau quặn bụng', N'Không', N'Nhịp tim 120/1p, huyết áp 130 mmHg', N'Nhiễm trùng ruột', N'BN058', N'NV131', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB058')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA059', N'Nhịp tim chậm', N'Không', N'Nhịp tim 80/1p, huyết áp 130 mmHg', N'Bradycardia', N'BN059', N'NV168', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB059')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA060', N'Đau bụng, rối loạn tiêu hóa', N'Không', N'Nhịp tim 100/1p, huyết áp 130 mmHg', N'Viêm đại tràng', N'BN060', N'NV183', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB060')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA061', N'Huyết áp thấp, chóng mặt', N'Không', N'Nhịp tim 100/1p, huyết áp 70 mmHg', N'Huyết áp thấp', N'BN061', N'NV132', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB061')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA062', N'Mệt mỏi, sưng, ngứa, và biến đổi về chức năng tiểu tiện', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Suy thận', N'BN062', N'NV198', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB062')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA063', N'Ho, mệt mỏi', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sốt', N'BN063', N'NV152', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB063')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA064', N'Mất khả năng giao tiếp', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN064', N'NV117', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB064')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA065', N'Ho dai dẳng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi', N'BN065', N'NV169', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB065')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA066', N'Tiểu nhiều, tiểu đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm bàng quang', N'BN066', N'NV101', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB066')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA067', N'Sốt, run người', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt rét', N'BN067', N'NV086', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB067')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA068', N'Đói liên tục, tiểu nhiều, mệt mỏi, và giảm cân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiểu đường', N'BN068', N'NV102', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB068')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA069', N'Dậy thì sớm', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng prolactin', N'BN069', N'NV155', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB069')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA070', N'Ho dai dẳng, có máu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi', N'BN070', N'NV169', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB070')
GO
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA071', N'Tim đập nhanh, đau ở ngực', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy tim', N'BN071', N'NV135', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB071')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA072', N'Không ý thức được hành vi bản thân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn hành vi', N'BN072', N'NV110', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB072')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA073', N'Yếu đuối cơ bắp hoặc mất cảm giác', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy giảm chức năng thần kinh', N'BN073', N'NV136', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB073')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA074', N'Đau, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Căng cơ', N'BN074', N'NV120', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB074')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA075', N'Mệt mỏi, sưng, ngứa, và biến đổi về chức năng tiểu tiện', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy thận', N'BN075', N'NV198', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB075')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA076', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm', N'BN076', N'NV105', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB076')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA077', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis', N'BN077', N'NV121', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB077')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA078', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', N'BN078', N'NV138', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB078')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA079', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương', N'BN079', N'NV106', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB079')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA080', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối', N'BN080', N'NV122', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB080')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA081', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', N'BN081', N'NV138', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB081')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA082', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt', N'BN082', N'NV107', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB082')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA083', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung', N'BN083', N'NV123', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB083')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA084', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung', N'BN084', N'NV139', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB084')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA085', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh', N'BN085', N'NV108', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB085')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA086', N'Đau ở vùng trán, căng thẳng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Đau đầu', N'BN086', N'NV124', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB086')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA087', N'Run chân, chuột rút', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn chức năng thần kinh', N'BN087', N'NV140', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB087')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA088', N'Đau răng', N'Tiền sử sâu răng', N'Huyết áp 110/70 mmHg, Mạch 75 lần/phút, Nhiệt độ 37.5 độ C', N'Sâu răng', N'BN088', N'NV109', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB088')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA089', N'Ngưng thở trong khi ngủ, rít', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Tắc nghẽn đường hô hấp khi ngủ', N'BN089', N'NV125', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB089')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA090', N'Đau răng', N'Không', N'Huyết áp 120/80 mmHg, Mạch 70 lần/phút, Nhiệt độ 37 độ C', N'Sâu răng', N'BN090', N'NV109', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB090')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA091', N'Ho suyễn', N'Tiền sử hen suyễn', N'Huyết áp 110/70 mmHg, Mạch 90 lần/phút, Nhiệt độ 38 độ C', N'Viêm phổi', N'BN091', N'NV110', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB091')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA092', N'Đau ngực, khó thở, buồn nôn', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN092', N'NV126', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB092')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA093', N'Mất khả năng nghe, giao tiếp', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN093', N'NV142', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB093')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA094', N'Khó tiêu, tiêu chảy, ăn ít dễ no', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư dạ dày', N'BN094', N'NV143', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB094')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA095', N'Khối u, vùng da thay đổi màu sắc, kích thước', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư da', N'BN095', N'NV163', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB095')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA096', N'Ho dai dẳng có máu, khó thở', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư phổi', N'BN096', N'NV178', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB096')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA097', N'Đau đầu, buồn nôn và ói mửa', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư não', N'BN097', N'NV127', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB097')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA098', N'Đau áp lực trong ngực', N'Không', N'Nhịp tim 150/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN098', N'NV112', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB098')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA099', N'Đau ngực kéo dài, khó thở, và cảm giác mệt mỏi', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Động mạch vành', N'BN099', N'NV128', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB099')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA100', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Suy tim', N'BN100', N'NV145', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB100')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA101', N'Đau và căng cơ cổ, cứng cổ', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Thoái hóa đốt sống cổ', N'BN101', N'NV129', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB101')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA102', N'Đau, cứng cột sống, giảm độ linh hoạt, và đau lan ra từ cột sống xuống tay, cứng cổ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gai cột sống', N'BN102', N'NV144', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB102')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA103', N'Đau, cứng cột sống, giảm độ linh hoạt, và đau lan ra từ cột sống xuống tay, cứng cổ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gai cột sống', N'BN103', N'NV144', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB103')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA104', N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương', N'BN104', N'NV150', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB104')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA105', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo cột sống', N'BN105', N'NV197', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB105')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA106', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo ngược cột sống', N'BN106', N'NV146', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB106')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA107', N'Đau, sưng vùng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rách cơ', N'BN107', N'NV147', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB107')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA108', N'Rách dây chằng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tổn thương dây chằng và gân', N'BN108', N'NV148', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB108')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA109', N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương ở cẳng tay', N'BN109', N'NV149', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB109')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA110', N'Đau, sưng, không di chuyển được', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Trẹo cổ chân', N'BN110', N'NV151', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB110')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA111', N'Tim đập không đều, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Nhồi máu cơ tim', N'BN111', N'NV166', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB111')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA112', N'Tim đập nhanh, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim', N'BN112', N'NV182', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB112')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA113', N'Đau quặn bụng', N'Không', N'Nhịp tim 120/1p, huyết áp 130 mmHg', N'Nhiễm trùng ruột', N'BN113', N'NV084', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB113')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA114', N'Nhịp tim chậm', N'Không', N'Nhịp tim 80/1p, huyết áp 130 mmHg', N'Bradycardia', N'BN114', N'NV100', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB114')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA115', N'Đau bụng, rối loạn tiêu hóa', N'Không', N'Nhịp tim 100/1p, huyết áp 130 mmHg', N'Viêm đại tràng', N'BN115', N'NV199', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB115')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA116', N'Huyết áp thấp, chóng mặt', N'Không', N'Nhịp tim 100/1p, huyết áp 70 mmHg', N'Huyết áp thấp', N'BN116', N'NV116', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB116')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA117', N'Mệt mỏi, sưng, ngứa, và biến đổi về chức năng tiểu tiện', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Suy thận', N'BN117', N'NV200', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB117')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA118', N'Ho, mệt mỏi', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sốt', N'BN118', N'NV167', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB118')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA119', N'Mất khả năng giao tiếp', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN119', N'NV184', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB119')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA120', N'Đau bụng, rối loạn tiêu hóa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm đại tràng', N'BN120', N'NV199', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB120')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA121', N'Tiểu nhiều, tiểu đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm bàng quang', N'BN121', N'NV118', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB121')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA122', N'Sốt, run người', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt rét', N'BN122', N'NV134', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB122')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA123', N'Đói liên tục, tiểu nhiều, mệt mỏi, và giảm cân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiểu đường', N'BN123', N'NV087', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB123')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA124', N'Ho dai dẳng, có máu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi', N'BN124', N'NV103', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB124')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA125', N'Tim đập nhanh, đau ở ngực', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy tim', N'BN125', N'NV186', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB125')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA126', N'Không ý thức được hành vi bản thân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn hành vi', N'BN126', N'NV185', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB126')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA127', N'Yếu đuối cơ bắp hoặc mất cảm giác', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy giảm chức năng thần kinh', N'BN127', N'NV187', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB127')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA128', N'Đau, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Căng cơ', N'BN128', N'NV172', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB128')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA129', N'Đau, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Căng cơ', N'BN129', N'NV172', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB129')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA130', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm', N'BN130', N'NV157', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB130')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA131', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis', N'BN131', N'NV171', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB131')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA132', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', N'BN132', N'NV189', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB132')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA133', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương', N'BN133', N'NV158', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB133')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA134', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối', N'BN134', N'NV173', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB134')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA135', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', N'BN135', N'NV189', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB135')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA136', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt', N'BN136', N'NV159', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB136')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA137', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung', N'BN137', N'NV174', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB137')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA138', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung', N'BN138', N'NV190', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB138')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA139', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh', N'BN139', N'NV160', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB139')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA140', N'Đau ở vùng trán, căng thẳng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Đau đầu', N'BN140', N'NV175', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB140')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA141', N'Run chân, chuột rút', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn chức năng thần kinh', N'BN141', N'NV191', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB141')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA142', N'Đau răng', N'Tiền sử sâu răng', N'Huyết áp 110/70 mmHg, Mạch 75 lần/phút, Nhiệt độ 37.5 độ C', N'Sâu răng', N'BN142', N'NV161', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB142')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA143', N'Ngưng thở trong khi ngủ, rít', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Tắc nghẽn đường hô hấp khi ngủ', N'BN143', N'NV176', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB143')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA144', N'Đau răng', N'Không', N'Huyết áp 120/80 mmHg, Mạch 70 lần/phút, Nhiệt độ 37 độ C', N'Sâu răng', N'BN144', N'NV161', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB144')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA145', N'Ho suyễn', N'Tiền sử hen suyễn', N'Huyết áp 110/70 mmHg, Mạch 90 lần/phút, Nhiệt độ 38 độ C', N'Viêm phổi', N'BN145', N'NV162', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB145')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA146', N'Đau ngực, khó thở, buồn nôn', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN146', N'NV177', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB146')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA147', N'Mất khả năng nghe, giao tiếp', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Đột quỵ', N'BN147', N'NV193', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB147')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA148', N'Khó tiêu, tiêu chảy, ăn ít dễ no', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư dạ dày', N'BN148', N'NV079', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB148')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA149', N'Đau áp lực trong ngực', N'Không', N'Nhịp tim 150/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', N'BN149', N'NV164', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB149')
INSERT [dbo].[SoBenhAn] ([MaSoBenhAn], [TrieuChung], [TieuSuBenhLy], [ThongTinLamSang], [ChanDoan], [MaBN], [MaNV], [NgayLap], [MaPhieuKB]) VALUES (N'BA150', N'Đau và căng cơ cổ, cứng cổ', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Thoái hóa đốt sống cổ', N'BN150', N'NV180', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'PKB150')
GO
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'027681562030', N'BN031', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'031878612575', N'BN071', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'033210302016', N'BN081', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'033780462013', N'BN021', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'037961510198', N'BN091', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'038910631088', N'BN061', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'038974312030', N'BN101', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'039425480179', N'BN051', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'049679502030', N'BN041', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'084722310680', N'BN006', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'119993970871', N'BN032', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'123055092320', N'BN072', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'132764172409', N'BN052', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'133262901740', N'BN062', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'133677940250', N'BN022', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'134857910375', N'BN082', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'135687960025', N'BN011', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'137839210397', N'BN092', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'147244580784', N'BN042', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'184620301745', N'BN007', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'201773591830', N'BN073', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'225997300347', N'BN063', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'229495180935', N'BN093', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'229691830179', N'BN083', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'230933730089', N'BN053', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'235640773297', N'BN033', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'235819360303', N'BN023', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'236745832014', N'BN012', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'240700218049', N'BN043', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'241897611874', N'BN008', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'301818911494', N'BN064', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'308842720418', N'BN084', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'308847832475', N'BN054', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'309660180398', N'BN024', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'326952147803', N'BN013', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'328101321429', N'BN034', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'328889751692', N'BN044', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'329001727491', N'BN009', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'329009401493', N'BN074', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'339602841690', N'BN094', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'409756123874', N'BN010', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'429482302978', N'BN065', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'435502781407', N'BN025', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'438879832091', N'BN085', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'439238250481', N'BN045', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'439282332614', N'BN055', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'439661930515', N'BN075', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'440782038441', N'BN035', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'447528003270', N'BN095', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'447633218940', N'BN014', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'482822283077', N'BN001', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'501201931497', N'BN046', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'503216502735', N'BN086', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'508233309862', N'BN026', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'523477609892', N'BN036', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'525041781960', N'BN076', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'530217832570', N'BN096', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'534729581076', N'BN015', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'540561820051', N'BN066', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'541888422704', N'BN056', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'593916377411', N'BN002', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'602935780005', N'BN027', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'603666612304', N'BN047', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'609326450387', N'BN037', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'611884320569', N'BN016', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'613297510750', N'BN057', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'613846900830', N'BN077', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'619808941560', N'BN087', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'628943502015', N'BN097', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'639625960476', N'BN067', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'702491239094', N'BN017', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'708128910871', N'BN098', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'720372390605', N'BN058', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'720585860840', N'BN048', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'721018430980', N'BN068', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'733008270405', N'BN038', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'733165932003', N'BN088', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'739270380560', N'BN078', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'739277280305', N'BN028', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'764202450063', N'BN003', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'805918441850', N'BN029', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'818799960526', N'BN039', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'823968701523', N'BN079', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'825098480761', N'BN089', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'830194951795', N'BN049', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'832695103754', N'BN018', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'837114601393', N'BN099', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'837626192840', N'BN069', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'839666870472', N'BN059', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'865249073890', N'BN004', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'920738061780', N'BN060', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'921010240871', N'BN100', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'924310301498', N'BN070', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'924332220890', N'BN090', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'927013220375', N'BN050', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'927348130590', N'BN005', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'929366240985', N'BN019', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'931538861307', N'BN080', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'933722241890', N'BN030', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
INSERT [dbo].[TheBHYT] ([MaBHYT], [MaBN], [NgayCap], [NgayHetHan]) VALUES (N'935380530620', N'BN040', CAST(N'2024-04-11' AS Date), CAST(N'2025-04-11' AS Date))
GO
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN001', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'50kg', N'90mmHg', N'20/p', N'Cơ thể ổn định nhưng vẫn cần theo dõi thêm', N'NV212')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN002', CAST(N'2024-04-22T00:00:00.000' AS DateTime), N'45kg', N'120mmHg', N'30/p', N'Cần theo dõi thêm', N'NV213')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN004', CAST(N'2024-04-20T00:00:00.000' AS DateTime), N'43kg', N'80mmHg', N'25/p', N'Cần theo dõi thêm', N'NV214')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN025', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'55kg', N'90mmHg', N'21/p', N'Cần theo dõi thêm', N'NV221')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN039', CAST(N'2024-04-21T00:00:00.000' AS DateTime), N'50kg', N'100mmHg', N'20/p', N'Cần theo dõi thêm', N'NV215')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN041', CAST(N'2024-04-26T00:00:00.000' AS DateTime), N'52kg', N'105mmHg', N'20/p', N'Cần theo dõi thêm', N'NV216')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN049', CAST(N'2024-04-17T00:00:00.000' AS DateTime), N'55kg', N'100mmHg', N'25/p', N'Cần theo dõi thêm', N'NV224')
INSERT [dbo].[TheoDoiDieuTri] ([MaBN], [NgayTheoDoi], [ChiSoCanNang], [ChiSoHuyetAp], [ChiSoNhipTho], [YLenh], [MaNV]) VALUES (N'BN050', CAST(N'2024-04-16T00:00:00.000' AS DateTime), N'55kg', N'90mmHg', N'21/p', N'Cần theo dõi thêm', N'NV224')
GO
INSERT [dbo].[ThucHienXNCC] ([MaNV], [MaPhieu], [MaPhongKham]) VALUES (N'NV003', N'XN025', N'PK306')
GO
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH001', N'Paracetamol', N'mg', N'Việt Nam', 5000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH002', N'Amoxicillin', N'mg', N'Mỹ', 10000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH003', N'Ibuprofen', N'mg', N'Anh', 8000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH004', N'Omeprazole', N'mg', N'Đức', 15000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH005', N'Lisinopril', N'mg', N'Pháp', 12000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH006', N'Metformin', N'mg', N'Nhật Bản', 13000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH007', N'Atorvastatin', N'mg', N'Hàn Quốc', 11000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH008', N'Simvastatin', N'mg', N'Úc', 10000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH009', N'Losartan', N'mg', N'Canada', 14000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH010', N'Amlodipine', N'mg', N'Tây Ban Nha', 16000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH011', N'Hydrochlorothiazide', N'mg', N'Đức', 17000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH012', N'Metoprolol', N'mg', N'Mỹ', 18000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH013', N'Prednisone', N'mg', N'Úc', 19000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH014', N'Levothyroxine', N'mg', N'Nhật Bản', 20000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH015', N'Azithromycin', N'mg', N'Pháp', 21000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH016', N'Citalopram', N'mg', N'Anh', 22000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH017', N'Furosemide', N'mg', N'Việt Nam', 23000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH018', N'Ciprofloxacin', N'mg', N'Hàn Quốc', 24000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH019', N'Metronidazole', N'mg', N'Mỹ', 25000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH020', N'Warfarin', N'mg', N'Đức', 26000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH021', N'Clopidogrel', N'mg', N'Canada', 27000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH022', N'Fluoxetine', N'mg', N'Tây Ban Nha', 28000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH023', N'Alprazolam', N'mg', N'Anh', 29000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH024', N'Digoxin', N'mg', N'Pháp', 30000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH025', N'Terbinafine', N'mg', N'Mỹ', 31000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH026', N'Prednisolone', N'mg', N'Úc', 32000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH027', N'Kanamycin', N'mg', N'Nhật Bản', 33000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH028', N'Sertraline', N'mg', N'Hàn Quốc', 34000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH029', N'Cetirizine', N'mg', N'Việt Nam', 35000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH030', N'Atenolol', N'mg', N'Đức', 36000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH031', N'Ramipril', N'mg', N'Mỹ', 37000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH032', N'Tamsulosin', N'mg', N'Canada', 38000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH033', N'Amitriptyline', N'mg', N'Tây Ban Nha', 39000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH034', N'Tramadol', N'mg', N'Anh', 40000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH035', N'Allopurinol', N'mg', N'Pháp', 41000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH036', N'Leuprolide ', N'mg', N'Nhật Bản', 42000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH037', N'Carvedilol', N'mg', N'Hàn Quốc', 43000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH038', N'Isoniazid', N'mg', N'Việt Nam', 44000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH039', N'Cisplatin', N'mg', N'Đức', 45000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH040', N'Colchicine', N'mg', N'Mỹ', 46000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH041', N'VitaminB3', N'mg', N'Úc', 47000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH042', N'ARBs', N'mg', N'Tây Ban Nha', 48000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH043', N'Carboplatin', N'mg', N'Canada', 49000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH044', N'Neomycin', N'mg', N'Anh', 50000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH045', N'Prednisolon', N'mg', N'Pháp', 51000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH046', N'Trastuzumab', N'mg', N'Nhật Bản', 52000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH047', N'Caspofungin', N'mg', N'Hàn Quốc', 53000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH048', N'Norfloxacin', N'mg', N'Việt Nam', 54000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH049', N'Bavencio', N'mg', N'Đức', 55000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH050', N'Prolia', N'mg', N'Mỹ', 56000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH051', N'Chlorpromazin', N'mg', N'Úc', 57000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH052', N'Escitalopram', N'mg', N'Tây Ban Nha', 58000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH053', N'Gilotrif', N'mg', N'Canada', 59000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH054', N'Lupron', N'mg', N'Anh', 60000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH055', N'Lynparza', N'mg', N'Pháp', 61000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH056', N'Beta blockers', N'mg', N'Nhật Bản', 62000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH057', N'Dexamethason', N'mg', N'Hàn Quốc', 63000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH058', N'Herceptin', N'mg', N'Việt Nam', 64000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH059', N'Micafungin', N'mg', N'Đức', 65000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH060', N'VitaminB5', N'mg', N'Mỹ', 66000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH061', N'VitaminA', N'mg', N'Úc', 67000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH062', N'Rifampin', N'mg', N'Tây Ban Nha', 68000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH063', N'Paraplatin', N'mg', N'Canada', 69000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH064', N'Cyclophosphamide', N'mg', N'Anh', 70000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH065', N'Methylprednisolon', N'mg', N'Pháp', 71000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH066', N'Herceptin', N'mg', N'Nhật Bản', 72000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH067', N'Anidulafungin', N'mg', N'Hàn Quốc', 73000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH068', N'Erythromycin', N'mg', N'Việt Nam', 74000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH069', N'Atezolizumab', N'mg', N'Đức', 75000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH070', N'Estrogen', N'mg', N'Mỹ', 76000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH071', N'Haloperidol', N'mg', N'Úc', 77000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH072', N'Aflibercept', N'mg', N'Tây Ban Nha', 78000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH073', N'Tamoxifen', N'mg', N'Canada', 79000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH074', N'Degarelix', N'mg', N'Anh', 80000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH075', N'Rucaparib', N'mg', N'Pháp', 81000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH076', N'Calcium channel blockers', N'mg', N'Nhật Bản', 82000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH077', N'Cyclosporin', N'mg', N'Hàn Quốc', 83000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH078', N'Imatinib', N'mg', N'Việt Nam', 84000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH079', N'Acyclovir', N'mg', N'Đức', 85000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH080', N'VitaminB6', N'mg', N'Mỹ', 86000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH081', N'VitaminC', N'mg', N'Úc', 87000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH082', N'Pyrazinamide', N'mg', N'Tây Ban Nha', 88000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH083', N'Gemcitabine', N'mg', N'Canada', 89000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH084', N'Cytoxan', N'mg', N'Anh', 90000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH085', N'Tacrolimus', N'mg', N'Pháp', 91000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH086', N'Gleevec', N'mg', N'Nhật Bản', 92000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH087', N'Valacyclovir ', N'mg', N'Hàn Quốc', 93000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH088', N'Clarithromycin', N'mg', N'Việt Nam', 94000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH089', N'Tecentriq', N'mg', N'Đức', 95000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH090', N'Testosterone', N'mg', N'Mỹ', 96000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH091', N'Quetiapine', N'mg', N'Úc', 97000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH092', N'Zaltrap', N'mg', N'Tây Ban Nha', 98000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH093', N'Nolvadex', N'mg', N'Canada', 99000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH094', N'Firmagon', N'mg', N'Anh', 100000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH095', N'Rubraca', N'mg', N'Pháp', 101000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH096', N'Statins', N'mg', N'Nhật Bản', 102000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH097', N'Sulfonylureas', N'mg', N'Hàn Quốc', 103000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH098', N'Rituximab', N'mg', N'Việt Nam', 104000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH099', N'Oseltamivir', N'mg', N'Đức', 105000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH100', N'VitaminB7', N'mg', N'Mỹ', 106000)
GO
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH101', N'VitaminD', N'mg', N'Úc', 107000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH102', N'Ethambutol', N'mg', N'Tây Ban Nha', 108000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH103', N'Gemzar', N'mg', N'Canada', 109000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH104', N'Taxol', N'mg', N'Anh', 110000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH105', N'Coumadin', N'mg', N'Pháp', 111000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH106', N'Rituxan', N'mg', N'Nhật Bản', 112000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH107', N'Zovirax', N'mg', N'Hàn Quốc', 113000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH108', N'Anastrozole', N'mg', N'Việt Nam', 114000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH109', N'Durvalumab', N'mg', N'Đức', 115000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH110', N'Thiazolidinediones', N'mg', N'Mỹ', 116000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH111', N'Amitriptylin', N'mg', N'Úc', 117000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH112', N'Erlotinib', N'mg', N'Tây Ban Nha', 118000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH113', N'Arimidex', N'mg', N'Canada', 119000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH114', N'Abiraterone', N'mg', N'Anh', 120000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH115', N'Niraparib ', N'mg', N'Pháp', 121000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH116', N'Ezetimibe', N'mg', N'Nhật Bản', 122000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH117', N'Heparin', N'mg', N'Hàn Quốc', 123000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH118', N'Pembrolizumab', N'mg', N'Việt Nam', 124000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH119', N'Valtrex', N'mg', N'Đức', 125000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH120', N'VitaminB9', N'mg', N'Mỹ', 126000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH121', N'VitaminE', N'mg', N'Úc', 127000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH122', N'Streptomycin', N'mg', N'Tây Ban Nha', 128000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH123', N'Vinblastine', N'mg', N'Canada', 129000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH124', N'Docetaxel', N'mg', N'Anh', 130000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH125', N'Aspirin', N'mg', N'Pháp', 131000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH126', N'Keytruda', N'mg', N'Nhật Bản', 132000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH127', N'Tamiflu', N'mg', N'Hàn Quốc', 133000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH128', N'Ketoconazole', N'mg', N'Việt Nam', 134000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH129', N'Imfinzi', N'mg', N'Đức', 135000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH130', N'Inhibitors of DPP-4', N'mg', N'Mỹ', 136000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH131', N'Imipramine', N'mg', N'Úc', 137000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH132', N'Tarceva', N'mg', N'Tây Ban Nha', 138000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH133', N'Letrozole', N'mg', N'Canada', 139000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH134', N'Zytiga', N'mg', N'Anh', 140000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH135', N'Zejula', N'mg', N'Pháp', 141000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH136', N'Zetia', N'mg', N'Nhật Bản', 142000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH137', N'Ibuprofen', N'mg', N'Hàn Quốc', 143000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH138', N'Nivolumab', N'mg', N'Việt Nam', 144000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH139', N'Ribavirin', N'mg', N'Đức', 145000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH140', N'Vitamin12', N'mg', N'Mỹ', 146000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH141', N'VitaminK', N'mg', N'Úc', 147000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH142', N'Paracetamol', N'mg', N'Tây Ban Nha', 148000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH143', N'Velban', N'mg', N'Canada', 149000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH144', N'Platinol', N'mg', N'Anh', 150000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH145', N'Diclofenac', N'mg', N'Pháp', 151000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH146', N'Opdivo', N'mg', N'Nhật Bản', 152000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH147', N'Interferon', N'mg', N'Hàn Quốc', 153000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH148', N'Itraconazole', N'mg', N'Việt Nam', 154000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH149', N'Bevacizumab', N'mg', N'Đức', 155000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH150', N'dipeptidyl peptidase-4', N'mg', N'Mỹ', 156000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH151', N'Lopressor', N'mg', N'Úc', 157000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH152', N'Gefitinib', N'mg', N'Tây Ban Nha', 158000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH153', N'Femara', N'mg', N'Canada', 159000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH154', N'Abiraterone', N'mg', N'Anh', 160000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH155', N'Insulin', N'mg', N'Pháp', 161000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH156', N'Bisphosphonates', N'mg', N'Nhật Bản', 162000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH157', N'Paracetamol', N'mg', N'Hàn Quốc', 163000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH158', N'Atezolizumab', N'mg', N'Việt Nam', 164000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH159', N'Remdesivir', N'mg', N'Đức', 165000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH160', N'Fluconazole', N'mg', N'Mỹ', 166000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH161', N'VitaminB1', N'mg', N'Úc', 167000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH162', N'Amphotericin B', N'mg', N'Tây Ban Nha', 168000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH163', N'Vincristine', N'mg', N'Canada', 169000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH164', N'Docetaxel', N'mg', N'Anh', 170000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH165', N'Codein', N'mg', N'Pháp', 171000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH166', N'Tecentriq', N'mg', N'Nhật Bản', 172000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH167', N'Dilaudid', N'mg', N'Hàn Quốc', 173000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH168', N'Miconazole', N'mg', N'Việt Nam', 174000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH169', N'Avastin', N'mg', N'Đức', 175000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH170', N'Levothyroxine', N'mg', N'Mỹ', 176000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH171', N'Metoprolol', N'mg', N'Úc', 177000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH172', N'Iressa', N'mg', N'Tây Ban Nha', 178000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH173', N'Fulvestrant', N'mg', N'Canada', 179000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH174', N'Zytiga', N'mg', N'Anh', 180000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH175', N'Metformin', N'mg', N'Pháp', 181000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH176', N'Denosumab', N'mg', N'Nhật Bản', 182000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH177', N'Diazepam', N'mg', N'Hàn Quốc', 183000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH178', N'Durvalumab', N'mg', N'Việt Nam', 184000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH179', N'Chloramphenicol', N'mg', N'Đức', 185000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH180', N'Itraconazole', N'mg', N'Mỹ', 186000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH181', N'VitaminB2', N'mg', N'Úc', 187000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH182', N'Voriconazole', N'mg', N'Tây Ban Nha', 188000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH183', N'Oncovin', N'mg', N'Canada', 189000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH184', N'Taxotere', N'mg', N'Anh', 190000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH185', N'Lorazepam', N'mg', N'Pháp', 191000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH186', N'Imfinzi', N'mg', N'Nhật Bản', 192000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH187', N'Tetracycline', N'mg', N'Hàn Quốc', 193000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH188', N'Miconazole', N'mg', N'Việt Nam', 194000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH189', N'Ramucirumab', N'mg', N'Đức', 195000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH190', N'Synthroid', N'mg', N'Mỹ', 196000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH191', N'Paroxetine', N'mg', N'Úc', 197000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH192', N'Afatinib ', N'mg', N'Tây Ban Nha', 198000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH193', N'Faslodex', N'mg', N'Canada', 199000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH194', N'Olaparib', N'mg', N'Anh', 200000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH195', N'Inhibitors of ACE', N'mg', N'Pháp', 201000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH196', N'Prolia', N'mg', N'Nhật Bản', 202000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH197', N'Metoprolol', N'mg', N'Hàn Quốc', 203000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH198', N'Midazolam', N'mg', N'Việt Nam', 204000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH199', N'Gentamicin', N'mg', N'Đức', 205000)
INSERT [dbo].[Thuoc] ([MaThuoc], [TenThuoc], [DonViTinh], [XuatXu], [DonGiaThuoc]) VALUES (N'TH200', N'Aspirin', N'mg', N'Pháp', 206000)
GO
INSERT [dbo].[XN_CC] ([MaPhieu], [MaDV], [NgayThucHien], [KetQua], [MaBN], [MaNVYeuCau]) VALUES (N'XN025', N'DV003', CAST(N'2024-04-13T00:00:00.000' AS DateTime), N'Chấn thương ở gối', N'BN025', N'NV074')
GO
ALTER TABLE [dbo].[BenhNhan_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_BenhNhan_DichVu] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[BenhNhan_DichVu] CHECK CONSTRAINT [FK_BenhNhan_BenhNhan_DichVu]
GO
ALTER TABLE [dbo].[BenhNhan_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_BenhNhan_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[BenhNhan_DichVu] CHECK CONSTRAINT [FK_DichVu_BenhNhan_DichVu]
GO
ALTER TABLE [dbo].[BenhNhan_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienYeuCau_BenhNhan_DichVu] FOREIGN KEY([MaNVYeuCau])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BenhNhan_DichVu] CHECK CONSTRAINT [FK_NhanVienYeuCau_BenhNhan_DichVu]
GO
ALTER TABLE [dbo].[BenhNhan_DichVu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKhamBenh_BenhNhan_DichVu] FOREIGN KEY([MaPhieuKB])
REFERENCES [dbo].[PhieuKhamBenh] ([MaPhieuKB])
GO
ALTER TABLE [dbo].[BenhNhan_DichVu] CHECK CONSTRAINT [FK_PhieuKhamBenh_BenhNhan_DichVu]
GO
ALTER TABLE [dbo].[ChiTietDonThuoc]  WITH CHECK ADD  CONSTRAINT [FK_DonThuoc_ChiTietDonThuoc] FOREIGN KEY([MaDonThuoc])
REFERENCES [dbo].[DonThuoc] ([MaDonThuoc])
GO
ALTER TABLE [dbo].[ChiTietDonThuoc] CHECK CONSTRAINT [FK_DonThuoc_ChiTietDonThuoc]
GO
ALTER TABLE [dbo].[ChiTietDonThuoc]  WITH CHECK ADD  CONSTRAINT [FK_Thuoc_ChiTietDonThuoc] FOREIGN KEY([MaThuoc])
REFERENCES [dbo].[Thuoc] ([MaThuoc])
GO
ALTER TABLE [dbo].[ChiTietDonThuoc] CHECK CONSTRAINT [FK_Thuoc_ChiTietDonThuoc]
GO
ALTER TABLE [dbo].[ChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_Khoa_ChuyenNganh] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[ChuyenNganh] CHECK CONSTRAINT [FK_Khoa_ChuyenNganh]
GO
ALTER TABLE [dbo].[DonThuoc]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_DonThuoc] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[DonThuoc] CHECK CONSTRAINT [FK_BenhNhan_DonThuoc]
GO
ALTER TABLE [dbo].[DonThuoc]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DonThuoc] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonThuoc] CHECK CONSTRAINT [FK_NhanVien_DonThuoc]
GO
ALTER TABLE [dbo].[GiuongBenh]  WITH CHECK ADD  CONSTRAINT [FK_PhongBenh_GiuongBenh] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongBenh] ([MaPhong])
GO
ALTER TABLE [dbo].[GiuongBenh] CHECK CONSTRAINT [FK_PhongBenh_GiuongBenh]
GO
ALTER TABLE [dbo].[KhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_KhamBenh] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[KhamBenh] CHECK CONSTRAINT [FK_BenhNhan_KhamBenh]
GO
ALTER TABLE [dbo].[KhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_KhamBenh] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhamBenh] CHECK CONSTRAINT [FK_NhanVien_KhamBenh]
GO
ALTER TABLE [dbo].[KhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKhamBenh_KhamBenh] FOREIGN KEY([MaPhieuKB])
REFERENCES [dbo].[PhieuKhamBenh] ([MaPhieuKB])
GO
ALTER TABLE [dbo].[KhamBenh] CHECK CONSTRAINT [FK_PhieuKhamBenh_KhamBenh]
GO
ALTER TABLE [dbo].[KhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_PhongKham_KhamBenh] FOREIGN KEY([MaPhongKham])
REFERENCES [dbo].[PhongKham] ([MaPhongKham])
GO
ALTER TABLE [dbo].[KhamBenh] CHECK CONSTRAINT [FK_PhongKham_KhamBenh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ChucVu_NhanVien] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_ChucVu_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenNganh_NhanVien] FOREIGN KEY([MaChuyenNganh])
REFERENCES [dbo].[ChuyenNganh] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_ChuyenNganh_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_Khoa_NhanVien] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_Khoa_NhanVien]
GO
ALTER TABLE [dbo].[PhanGiuong]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_PhanGiuong] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[PhanGiuong] CHECK CONSTRAINT [FK_BenhNhan_PhanGiuong]
GO
ALTER TABLE [dbo].[PhanGiuong]  WITH CHECK ADD  CONSTRAINT [FK_GiuongBenh_PhanGiuong] FOREIGN KEY([MaGiuong])
REFERENCES [dbo].[GiuongBenh] ([MaGiuong])
GO
ALTER TABLE [dbo].[PhanGiuong] CHECK CONSTRAINT [FK_GiuongBenh_PhanGiuong]
GO
ALTER TABLE [dbo].[PhanGiuong]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienYeuCau_PhanGiuong] FOREIGN KEY([MaNVYeuCau])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanGiuong] CHECK CONSTRAINT [FK_NhanVienYeuCau_PhanGiuong]
GO
ALTER TABLE [dbo].[PhanGiuong]  WITH CHECK ADD  CONSTRAINT [FK_PhongBenh_PhanGiuong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongBenh] ([MaPhong])
GO
ALTER TABLE [dbo].[PhanGiuong] CHECK CONSTRAINT [FK_PhongBenh_PhanGiuong]
GO
ALTER TABLE [dbo].[PhauThuat]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_PhauThuat] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[PhauThuat] CHECK CONSTRAINT [FK_BenhNhan_PhauThuat]
GO
ALTER TABLE [dbo].[PhauThuat]  WITH CHECK ADD  CONSTRAINT [FK_LoaiPhauThuat_PhauThuat] FOREIGN KEY([MaPT])
REFERENCES [dbo].[LoaiPhauThuat] ([MaPT])
GO
ALTER TABLE [dbo].[PhauThuat] CHECK CONSTRAINT [FK_LoaiPhauThuat_PhauThuat]
GO
ALTER TABLE [dbo].[PhauThuat]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhauThuat] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhauThuat] CHECK CONSTRAINT [FK_NhanVien_PhauThuat]
GO
ALTER TABLE [dbo].[PhauThuat]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienYeuCau_PhauThuat] FOREIGN KEY([MaNVYeuCau])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhauThuat] CHECK CONSTRAINT [FK_NhanVienYeuCau_PhauThuat]
GO
ALTER TABLE [dbo].[PhauThuat]  WITH CHECK ADD  CONSTRAINT [FK_PhongKham_PhauThuat] FOREIGN KEY([MaPhongKham])
REFERENCES [dbo].[PhongKham] ([MaPhongKham])
GO
ALTER TABLE [dbo].[PhauThuat] CHECK CONSTRAINT [FK_PhongKham_PhauThuat]
GO
ALTER TABLE [dbo].[PhieuKhamBenh]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_PhieuKhamBenh] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[PhieuKhamBenh] CHECK CONSTRAINT [FK_BenhNhan_PhieuKhamBenh]
GO
ALTER TABLE [dbo].[PhongBenh]  WITH CHECK ADD  CONSTRAINT [FK_Khoa_PhongBenh] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[PhongBenh] CHECK CONSTRAINT [FK_Khoa_PhongBenh]
GO
ALTER TABLE [dbo].[PhongKham]  WITH CHECK ADD  CONSTRAINT [FK_Khoa_PhongKham] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[PhongKham] CHECK CONSTRAINT [FK_Khoa_PhongKham]
GO
ALTER TABLE [dbo].[SoBenhAn]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_SoBenhAn] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[SoBenhAn] CHECK CONSTRAINT [FK_BenhNhan_SoBenhAn]
GO
ALTER TABLE [dbo].[SoBenhAn]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_SoBenhAn] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[SoBenhAn] CHECK CONSTRAINT [FK_NhanVien_SoBenhAn]
GO
ALTER TABLE [dbo].[SoBenhAn]  WITH CHECK ADD  CONSTRAINT [FK_PhieuKhamBenh_SoBenhAn] FOREIGN KEY([MaPhieuKB])
REFERENCES [dbo].[PhieuKhamBenh] ([MaPhieuKB])
GO
ALTER TABLE [dbo].[SoBenhAn] CHECK CONSTRAINT [FK_PhieuKhamBenh_SoBenhAn]
GO
ALTER TABLE [dbo].[TheBHYT]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_TheBHYT] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[TheBHYT] CHECK CONSTRAINT [FK_BenhNhan_TheBHYT]
GO
ALTER TABLE [dbo].[TheoDoiDieuTri]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_TheoDoiDieuTri] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[TheoDoiDieuTri] CHECK CONSTRAINT [FK_BenhNhan_TheoDoiDieuTri]
GO
ALTER TABLE [dbo].[TheoDoiDieuTri]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TheoDoiDieuTri] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TheoDoiDieuTri] CHECK CONSTRAINT [FK_NhanVien_TheoDoiDieuTri]
GO
ALTER TABLE [dbo].[ThucHienXNCC]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ThucHienXNCC] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThucHienXNCC] CHECK CONSTRAINT [FK_NhanVien_ThucHienXNCC]
GO
ALTER TABLE [dbo].[ThucHienXNCC]  WITH CHECK ADD  CONSTRAINT [FK_PhongKham_ThucHienXNCC] FOREIGN KEY([MaPhongKham])
REFERENCES [dbo].[PhongKham] ([MaPhongKham])
GO
ALTER TABLE [dbo].[ThucHienXNCC] CHECK CONSTRAINT [FK_PhongKham_ThucHienXNCC]
GO
ALTER TABLE [dbo].[ThucHienXNCC]  WITH CHECK ADD  CONSTRAINT [FK_XNCC_ThucHienXNCC] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[XN_CC] ([MaPhieu])
GO
ALTER TABLE [dbo].[ThucHienXNCC] CHECK CONSTRAINT [FK_XNCC_ThucHienXNCC]
GO
ALTER TABLE [dbo].[XN_CC]  WITH CHECK ADD  CONSTRAINT [FK_BenhNhan_XN_CC] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BenhNhan] ([MaBN])
GO
ALTER TABLE [dbo].[XN_CC] CHECK CONSTRAINT [FK_BenhNhan_XN_CC]
GO
ALTER TABLE [dbo].[XN_CC]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_XN_CC] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[XN_CC] CHECK CONSTRAINT [FK_DichVu_XN_CC]
GO
ALTER TABLE [dbo].[XN_CC]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienYeuCau_XN_CC] FOREIGN KEY([MaNVYeuCau])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[XN_CC] CHECK CONSTRAINT [FK_NhanVienYeuCau_XN_CC]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThu]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BaoCaoDoanhThu](@NgayBD DATETIME, @NgayKT DATETIME)
AS
BEGIN
    SELECT
        'Thuoc' AS Loai,
        SUM(ChiTietDonThuoc.TongTien) AS TongTien,
        NULL AS TenDV,
        NULL AS TongTienCuaDichVu,
        NULL AS TongTienTatCaCacDichVu
    FROM
        DonThuoc
    JOIN
        ChiTietDonThuoc ON DonThuoc.MaDonThuoc = ChiTietDonThuoc.MaDonThuoc
    WHERE
        DonThuoc.NgayGioKeDon BETWEEN @NgayBD AND @NgayKT

    UNION ALL

    SELECT
        'DichVu' AS Loai,
        NULL AS TongTien,
        DichVu.TenDV,
        SUM(DichVu.DonGiaDichVu) AS TongTienCuaDichVu,
        (
            SELECT SUM(DichVu.DonGiaDichVu)
            FROM BenhNhan_DichVu
            JOIN DichVu ON BenhNhan_DichVu.MaDV = DichVu.MaDV
            JOIN PhieuKhamBenh ON BenhNhan_DichVu.MaPhieuKB = PhieuKhamBenh.MaPhieuKB
            WHERE PhieuKhamBenh.NgayKham BETWEEN @NgayBD AND @NgayKT
        ) AS TongTienTatCaCacDichVu
    FROM
        BenhNhan_DichVu
    JOIN
        DichVu ON BenhNhan_DichVu.MaDV = DichVu.MaDV
    JOIN
        PhieuKhamBenh ON BenhNhan_DichVu.MaPhieuKB = PhieuKhamBenh.MaPhieuKB
    WHERE
        PhieuKhamBenh.NgayKham BETWEEN @NgayBD AND @NgayKT
    GROUP BY
        DichVu.TenDV, DichVu.DonGiaDichVu;
END
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoKhamBenh]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- Danh sách bệnh nhân khám bệnh tại bệnh viện
create proc [dbo].[BaoCaoKhamBenh](@NgayBatDau DATETIME, @NgayKetThuc DATETIME)
AS
BEGIN
    SELECT DISTINCT BN.MaBN, BN.HoTenBN, BN.GioiTinh, BN.NgaySinh, BN.NgheNghiep, BN.DiaChi, BN.SoDT, BN.SoDTNN, PK.TenPhongKham, DT.ChanDoan, K.TenKhoa
    FROM BenhNhan BN
    INNER JOIN PhieuKhamBenh PKB ON BN.MaBN = PKB.MaBN
    INNER JOIN KhamBenh KB ON PKB.MaPhieuKB = KB.MaPhieuKB
	INNER JOIN DonThuoc DT ON BN.MaBN = DT.MaBN
	INNER JOIN PhongKham PK ON KB.MaPhongKham = PK.MaPhongKham
	INNER JOIN Khoa K ON PK.MaKhoa = K.MaKhoa
	Where DT.NgayGioKeDon BETWEEN @NgayBatDau AND @NgayKetThuc
END;

GO
/****** Object:  StoredProcedure [dbo].[BaoCaoKhamBenhTheoKhoa]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Danh sách bệnh nhân khám bệnh tại bệnh viện theo Khoa
create proc [dbo].[BaoCaoKhamBenhTheoKhoa](@NgayBatDau DATETIME, @NgayKetThuc DATETIME, @MaKhoa NVARCHAR(12))
AS
BEGIN
    SELECT DISTINCT BN.MaBN, BN.HoTenBN, BN.GioiTinh, BN.NgaySinh, BN.NgheNghiep, BN.DiaChi, BN.SoDT, BN.SoDTNN, PK.TenPhongKham, DT.ChanDoan, K.TenKhoa
    FROM BenhNhan BN
    INNER JOIN PhieuKhamBenh PKB ON BN.MaBN = PKB.MaBN
    INNER JOIN KhamBenh KB ON PKB.MaPhieuKB = KB.MaPhieuKB
	INNER JOIN DonThuoc DT ON BN.MaBN = DT.MaBN
	INNER JOIN PhongKham PK ON KB.MaPhongKham = PK.MaPhongKham
	INNER JOIN Khoa K ON PK.MaKhoa = K.MaKhoa
	Where DT.NgayGioKeDon BETWEEN @NgayBatDau AND @NgayKetThuc 
		  AND K.MaKhoa = @MaKhoa
END;

GO
/****** Object:  StoredProcedure [dbo].[capNhatChiTietDT]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Cập nhật chi tiết đơn thuốc và tổng tiền của đơn thuốc
create proc [dbo].[capNhatChiTietDT](@MaDonThuoc nvarchar(12), @MaThuoc nvarchar(12), @SoLuong int, @CachDung nvarchar(500))
as
begin
begin TRANSACTION;

    -- Cập nhật lại thông tin
    UPDATE ChiTietDonThuoc 
    SET SoLuong = @SoLuong, CachDung = @CachDung
    WHERE MaDonThuoc = @MaDonThuoc AND MaThuoc = @MaThuoc;


-- Cập nhật lại tổng tiền của đơn thuốc
EXEC tinhTienThuoc @MaThuoc;
EXEC tinhTongTien @MaDonThuoc;

COMMIT;
end;



GO
/****** Object:  StoredProcedure [dbo].[DanhSachBenhNhanDieuTri]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- Danh sách bệnh nhân đang được điều trị tại bệnh viện
create proc [dbo].[DanhSachBenhNhanDieuTri](@NgayBatDau DATETIME, @NgayKetThuc DATETIME)
AS
BEGIN
    SELECT BenhNhan.MaBN, BenhNhan.HoTenBN, BenhNhan.GioiTinh, BenhNhan.NgaySinh, BenhNhan.DiaChi, BenhNhan.SoDT,
	BenhNhan.SoDTNN, PhongBenh.TenPhong, GiuongBenh.MaGiuong, Khoa.TenKhoa
    FROM BenhNhan
	JOIN TheoDoiDieuTri on BenhNhan.MaBN = TheoDoiDieuTri.MaBN
	JOIN PhanGiuong on BenhNhan.MaBN = PhanGiuong.MaBN
	JOIN PhongBenh on PhanGiuong.MaPhong = PhongBenh.MaPhong
	JOIN Khoa on PhongBenh.MaKhoa = Khoa.MaKhoa
	JOIN GiuongBenh on PhanGiuong.MaGiuong = GiuongBenh.MaGiuong

    WHERE
        TheoDoiDieuTri.NgayTheoDoi BETWEEN @NgayBatDau AND @NgayKetThuc
END;


GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachBenhNhanTheoKhoa]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Danh sách bệnh nhân theo khoa 
create proc [dbo].[LayDanhSachBenhNhanTheoKhoa](@MaKhoa nvarchar(12))
as
Begin
Select DISTINCT BenhNhan.MaBN, BenhNhan.HoTenBN, BenhNhan.GioiTinh, BenhNhan.NgaySinh, BenhNhan.NgheNghiep, 
BenhNhan.DiaChi, BenhNhan.SoDT, BenhNhan.SoDTNN, Khoa.TenKhoa
FROM BenhNhan
JOIN KhamBenh on BenhNhan.MaBN = KhamBenh.MaBN
JOIN PhongKham on KhamBenh.MaPhongKham = PhongKham.MaPhongKham
JOIN Khoa on PhongKham.MaKhoa = Khoa.MaKhoa
WHERE PhongKham.MaKhoa = @MaKhoa

End

GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachNhanVienTheoKhoa]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----- lấy danh sách nhân viên theo khoa
create proc [dbo].[LayDanhSachNhanVienTheoKhoa](@MaKhoa nvarchar(12))
as
Begin
Select NhanVien.MaNV, NhanVien.HoTenNV, NhanVien.GioiTinh, NhanVien.NgaySinh, ChucVu.TenChucVu, ChuyenNganh.TenChuyenNganh, Khoa.TenKhoa
From NhanVien
JOIN Khoa on NhanVien.MaKhoa = Khoa.MaKhoa
JOIN ChuyenNganh on NhanVien.MaChuyenNganh = ChuyenNganh.MaChuyenNganh
JOIN ChucVu on NhanVien.MaChucVu = ChucVu.MaChucVu
Where NhanVien.MaKhoa = @MaKhoa
End


GO
/****** Object:  StoredProcedure [dbo].[LaySoBenhAnCuaBenhNhan]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---- lấy thông tin sổ bệnh án
create proc [dbo].[LaySoBenhAnCuaBenhNhan](@MaSBA nvarchar(12))
as
Begin
Select SoBenhAn.MaSoBenhAn, SoBenhAn.TrieuChung, SoBenhAn.TieuSuBenhLy, SoBenhAn.ThongTinLamSang, SoBenhAn.ChanDoan,
SoBenhAn.NgayLap, BenhNhan.HoTenBN, BenhNhan.NgaySinh, BenhNhan.GioiTinh, BenhNhan.DiaChi, BenhNhan.SoDT, NhanVien.HoTenNV, TheBHYT.MaBHYT
From SoBenhAn 
JOIN BenhNhan on SoBenhAn.MaBN = BenhNhan.MaBN
Join TheBHYT on SoBenhAn.MaBN = TheBHYT.MaBN
JOIN NhanVien on SoBenhAn.MaNV = NhanVien.MaNV
Where SoBenhAn.MaSoBenhAn = @MaSBA
End


GO
/****** Object:  StoredProcedure [dbo].[SuDungDichVu]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Sử dụng dịch vụ
create proc [dbo].[SuDungDichVu](@MaBN nvarchar(12), @MaPhieuKham nvarchar(12))
as
BEGIN
    DECLARE @TongTien float;
    DECLARE @GiamGia float;

    -- Tính tổng tiền cho các dịch vụ đã sử dụng bởi bệnh nhân trong phiếu khám
    SELECT @TongTien = SUM(DichVu.DonGiaDichVu)
    FROM BenhNhan_DichVu
    JOIN DichVu ON BenhNhan_DichVu.MaDV = DichVu.MaDV
    WHERE BenhNhan_DichVu.MaBN = @MaBN AND BenhNhan_DichVu.MaPhieuKB = @MaPhieuKham;

    -- Kiểm tra nếu bệnh nhân có thẻ BHYT để áp dụng giảm giá
    IF EXISTS (SELECT * FROM TheBHYT WHERE MaBN = @MaBN)
    BEGIN
        -- Giảm giá 20% nếu có thẻ BHYT
        SET @GiamGia = @TongTien * 0.2;
    END
    ELSE
    BEGIN
        SET @GiamGia = 0;
    END

    -- Tính tổng tiền cần thanh toán sau khi áp dụng giảm giá
    DECLARE @TongTienThanhToan float;
    SET @TongTienThanhToan = @TongTien - @GiamGia;

    -- Trả về thông tin bệnh nhân, tổng tiền, và tổng tiền cần thanh toán
    SELECT BenhNhan.HoTenBN, BenhNhan.NgaySinh, BenhNhan.GioiTinh, TheBHYT.MaBHYT, @TongTien AS TongTien,
           @GiamGia AS GiamGia, @TongTienThanhToan AS TongTienThanhToan, DichVu.TenDV, DichVu.DonGiaDichVu, BenhNhan_DichVu.MaPhieuKB
    FROM BenhNhan
    LEFT JOIN TheBHYT ON BenhNhan.MaBN = TheBHYT.MaBN
	JOIN BenhNhan_DichVu on BenhNhan.MaBN = BenhNhan_DichVu.MaBN
	JOIN DichVu on BenhNhan_DichVu.MaDV = DichVu.MaDV
    WHERE BenhNhan.MaBN = @MaBN AND BenhNhan_DichVu.MaPhieuKB = @MaPhieuKham;
END;

GO
/****** Object:  StoredProcedure [dbo].[themChiTietDT]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thêm chi tiết đơn thuốc
create proc [dbo].[themChiTietDT](@MaDonThuoc nvarchar(12), @MaThuoc nvarchar(12), @SoLuong int, @CachDung nvarchar(500))
as
begin
begin TRANSACTION;

Insert into ChiTietDonThuoc(MaDonThuoc, MaThuoc, SoLuong, CachDung)
values (@MaDonThuoc, @MaThuoc, @SoLuong, @CachDung)
exec tinhTienThuoc @MaThuoc
exec tinhTongTien @MaDonThuoc

COMMIT;
end;

GO
/****** Object:  StoredProcedure [dbo].[ThemDonThuoc]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Thêm đơn thuốc
create proc [dbo].[ThemDonThuoc](
    @MaDonThuoc NVARCHAR(12),
    @NgayGioKeDon DATETIME,
    @MaNV NVARCHAR(12),
    @MaBN NVARCHAR(12),
	@ChanDoan NVARCHAR(100))
AS
BEGIN
    BEGIN TRANSACTION;

    -- Thêm dữ liệu vào bảng DonThuoc
    INSERT INTO DonThuoc (MaDonThuoc, NgayGioKeDon, MaNV, MaBN, ChanDoan)
    VALUES (@MaDonThuoc, @NgayGioKeDon, @MaNV, @MaBN, @ChanDoan);

    COMMIT;
END;


GO
/****** Object:  StoredProcedure [dbo].[ThongTinDonThuoc]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Thông tin đơn thuốc của bệnh nhân
create proc [dbo].[ThongTinDonThuoc](@MaDonThuoc nvarchar(12))
as
Begin
-- Lấy thông tin tổng tiền trước và sau khi giảm nếu có BHYT
    SELECT BenhNhan.HoTenBN, BenhNhan.NgaySinh, BenhNhan.DiaChi, BenhNhan.GioiTinh, NhanVien.HoTenNV, 
           DonThuoc.MaDonThuoc, DonThuoc.NgayGioKeDon, DonThuoc.ChanDoan, 
           DonThuoc.TongTienThuoc AS TongTienTruocGiam,
           CASE 
                WHEN EXISTS (SELECT 1 FROM TheBHYT WHERE TheBHYT.MaBN = DonThuoc.MaBN) THEN DonThuoc.TongTienThuoc * 0.2 -- Giảm 80% nếu có BHYT
                ELSE DonThuoc.TongTienThuoc 
           END AS TongTienSauGiam,
           Thuoc.TenThuoc, ChiTietDonThuoc.SoLuong, ChiTietDonThuoc.CachDung, TheBHYT.MaBHYT 
    FROM DonThuoc 
    JOIN ChiTietDonThuoc ON DonThuoc.MaDonThuoc = ChiTietDonThuoc.MaDonThuoc
    JOIN Thuoc ON ChiTietDonThuoc.MaThuoc = Thuoc.MaThuoc
    JOIN BenhNhan ON DonThuoc.MaBN = BenhNhan.MaBN
    JOIN NhanVien ON DonThuoc.MaNV = NhanVien.MaNV
    JOIN TheBHYT ON BenhNhan.MaBN = TheBHYT.MaBN
    WHERE DonThuoc.MaDonThuoc = @MaDonThuoc

End

GO
/****** Object:  StoredProcedure [dbo].[tinhTienThuoc]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- STORE
-- Tính tiền thuốc của ChiTietDonThuoc
create proc [dbo].[tinhTienThuoc](@MaThuoc nvarchar(12))
as
begin
UPDATE ChiTietDonThuoc
SET [TongTien] =  SoLuong * (SELECT DonGiaThuoc from Thuoc WHERE Thuoc.MaThuoc = @MaThuoc)
end

GO
/****** Object:  StoredProcedure [dbo].[tinhTongTien]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Tính tổng tiền thuốc của đơn thuốc
create proc [dbo].[tinhTongTien](@MaDonThuoc nvarchar(12))
as
begin
UPDATE DonThuoc
SET [TongTienThuoc] = (SELECT SUM(TongTien) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaDonThuoc = @MaDonThuoc);
end

GO
/****** Object:  StoredProcedure [dbo].[xoaChiTietDT]    Script Date: 5/13/2024 11:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Xóa chi tiết đơn thuốc và cập nhật tổng tiền của đơn thuốc
create proc [dbo].[xoaChiTietDT](@MaDonThuoc nvarchar(12), @MaThuoc nvarchar(12))
as
begin
begin TRANSACTION;

-- Xóa chi tiết đơn thuốc
DELETE FROM ChiTietDonThuoc WHERE MaDonThuoc = @MaDonThuoc AND MaThuoc = @MaThuoc;

-- Cập nhật tổng tiền của đơn thuốc
exec tinhTongTien @MaDonThuoc;

COMMIT;
end;

GO
USE [master]
GO
ALTER DATABASE [QLBV] SET  READ_WRITE 
GO

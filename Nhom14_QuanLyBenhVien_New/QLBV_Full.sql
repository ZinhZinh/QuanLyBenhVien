CREATE DATABASE QLBV
go
USE QLBV
go
CREATE TABLE BenhNhan (
    [MaBN] nvarchar(12) not null,
    [HoTenBN] nvarchar(60) not null,
    [GioiTinh] nvarchar(3),
    [NgaySinh] date,
    [DanToc] nvarchar(50),
    [NgheNghiep] nvarchar(50),
    [DiaChi] nvarchar(500),
    [SoDT] nvarchar(10),
    [SoDTNN] nvarchar(10),	
);

CREATE TABLE NhanVien (
    [MaNV] nvarchar(12) not null,
    [HoTenNV] nvarchar(50),
    [GioiTinh] nvarchar(3),
    [NgaySinh] date,
    [MaKhoa] nvarchar(12) not null,
    [MaChuyenNganh] nvarchar(12) not null,
    [MaChucVu] nvarchar(12) not null
);

CREATE TABLE PhieuKhamBenh(
	[MaPhieuKB] nvarchar(12) not null,
	[MaBN] nvarchar(12) not null,
	[NgayKham] date
)

CREATE TABLE ChucVu (
    [MaChucVu] nvarchar(12) not null,
    [TenChucVu] nvarchar(100)
);

CREATE TABLE Khoa (
    [MaKhoa] nvarchar(12) not null,
    [TenKhoa] nvarchar(50)
);

CREATE TABLE ChuyenNganh (
    [MaChuyenNganh] nvarchar(12) not null,
    [TenChuyenNganh] nvarchar(50),
    [MaKhoa] nvarchar(12) not null 
);

CREATE TABLE DichVu (
    [MaDV] nvarchar(12) not null,
    [TenDV] nvarchar(50),
    [DonGiaDichVu] float
);

CREATE TABLE BenhNhan_DichVu (
    [MaBN] nvarchar(12) not null,
    [MaDV] nvarchar(12) not null,
	[MaPhieuKB] nvarchar(12) not null,
	[MaNVYeuCau] nvarchar(12) not null
);

CREATE TABLE PhongBenh (
    [MaPhong] nvarchar(12) not null,
    [TenPhong] nvarchar(50),
    [Loai] nvarchar(20),
    [MaKhoa] nvarchar(12) not null
);

CREATE TABLE GiuongBenh (
    [MaGiuong] nvarchar(12) not null,
    [SoGiuong] nvarchar(10),
    [MaPhong] nvarchar(12) not null
);

CREATE TABLE PhanGiuong (
    [MaBN] nvarchar(12) not null,
    [NgayNhan] datetime,
    [NgayTra] datetime,
    [MaPhong] nvarchar(12) not null,
    [MaGiuong] nvarchar(12) not null,
	[MaNVYeuCau] nvarchar(12) not null
);

CREATE TABLE TheoDoiDieuTri (
    [MaBN] nvarchar(12) not null,
    [NgayTheoDoi] datetime,
    [ChiSoCanNang] nvarchar(10),
    [ChiSoHuyetAp] nvarchar(10),
    [ChiSoNhipTho] nvarchar(10),
    [YLenh] nvarchar(500),
    [MaNV] nvarchar(12) not null
);

CREATE TABLE PhongKham (
    [MaPhongKham] nvarchar(12) not null,
    [TenPhongKham] nvarchar(50),
    [MaKhoa] nvarchar(12) not null,
    [LoaiPhong] nvarchar(50)
);

CREATE TABLE KhamBenh (	
    [MaBN] nvarchar(12) not null,
    [MaPhongKham] nvarchar(12) not null,
    [MaNV] nvarchar(12) not null,
	[MaPhieuKB] nvarchar(12) not null
);

CREATE TABLE LoaiPhauThuat (
    [MaPT] nvarchar(12) not null,
    [TenPT] nvarchar(40),
    [MucDo] nvarchar(20)
);

CREATE TABLE PhauThuat (
    [MaNV] nvarchar(12) not null,
    [MaPT] nvarchar(12) not null,
    [MaBN] nvarchar(12) not null,
    [NgayPT] datetime,
    [MaPhongKham] nvarchar(12) not null,
	[MaNVYeuCau] nvarchar(12) not null
);

CREATE TABLE XN_CC (
    [MaPhieu] nvarchar(12) not null,
    [MaDV] nvarchar(12) not null,
    [NgayThucHien] datetime,
    [KetQua] nvarchar(100),
	[MaBN] nvarchar(12) not null,
	[MaNVYeuCau] nvarchar(12) not null
);

CREATE TABLE ThucHienXNCC (
    [MaNV] nvarchar(12) not null,
    [MaPhieu] nvarchar(12) not null,
	[MaPhongKham] nvarchar(12) not null
);



CREATE TABLE Thuoc (
    [MaThuoc] nvarchar(12) not null,
    [TenThuoc] nvarchar(30),
    [DonViTinh] nvarchar(10),
    [XuatXu] nvarchar(20),
    [DonGiaThuoc] float
);

CREATE TABLE DonThuoc (
    [MaDonThuoc] nvarchar(12) not null,
    [NgayGioKeDon] datetime,
    [TongTienThuoc] float,
    [MaNV] nvarchar(12) not null,
    [MaBN] nvarchar(12) not null,
	[ChanDoan] nvarchar(100)
);

CREATE TABLE ChiTietDonThuoc (
    [MaDonThuoc] nvarchar(12) not null,
    [MaThuoc] nvarchar(12) not null,
    [SoLuong] int,
    [CachDung] nvarchar(500),
    [TongTien] float
);

CREATE TABLE TheBHYT
(
	[MaBHYT] nvarchar(12) not null
   ,[MaBN] nvarchar(12) not null
   ,[NgayCap] date
   ,[NgayHetHan] date
)

CREATE TABLE SoBenhAn
(
	[MaSoBenhAn] nvarchar(12) not null
   ,[TrieuChung] nvarchar(100)
   ,[TieuSuBenhLy] nvarchar(100)
   ,[ThongTinLamSang] nvarchar(100)
   ,[ChanDoan] nvarchar(100)
   ,[MaBN] nvarchar(12) not null
   ,[MaNV] nvarchar(12) not null
   ,[NgayLap] datetime
   ,[MaPhieuKB] nvarchar(12) not null
   
)


go


-------Khoa Chinh
ALTER TABLE BenhNhan
ADD CONSTRAINT PK_BenhNhan PRIMARY KEY ([MaBN])

ALTER TABLE NhanVien
ADD CONSTRAINT PK_NhanVien PRIMARY KEY ([MaNV])

ALTER TABLE PhieuKhamBenh
ADD CONSTRAINT PK_PhieuKhamBenh PRIMARY KEY ([MaPhieuKB])

ALTER TABLE ChucVu
ADD CONSTRAINT PK_ChucVu PRIMARY KEY ([MaChucVu])

ALTER TABLE Khoa
ADD CONSTRAINT PK_Khoa PRIMARY KEY ([MaKhoa])

ALTER TABLE ChuyenNganh
ADD CONSTRAINT PK_ChuyenNganh PRIMARY KEY ([MaChuyenNganh])

ALTER TABLE Thuoc
ADD CONSTRAINT PK_Thuoc PRIMARY KEY ([MaThuoc])

ALTER TABLE DonThuoc
ADD CONSTRAINT PK_DonThuoc PRIMARY KEY ([MaDonThuoc])

ALTER TABLE ChiTietDonThuoc
ADD CONSTRAINT PK_ChiTietDonThuoc PRIMARY KEY ([MaDonThuoc],[MaThuoc])

ALTER TABLE DichVu
ADD CONSTRAINT PK_DichVu PRIMARY KEY ([MaDV])

ALTER TABLE BenhNhan_DichVu
ADD CONSTRAINT PK_BenhNhan_DichVu PRIMARY KEY ([MaBN],[MaDV],[MaPhieuKB],[MaNVYeuCau])

ALTER TABLE GiuongBenh
ADD CONSTRAINT PK_GiuongBenh PRIMARY KEY ([MaGiuong])

ALTER TABLE PhongBenh
ADD CONSTRAINT PK_PhongBenh PRIMARY KEY ([MaPhong])

ALTER TABLE PhanGiuong
ADD CONSTRAINT PK_PhanGiuong PRIMARY KEY ([MaBN],[MaGiuong],[MaPhong],[MaNVYeuCau])

ALTER TABLE TheoDoiDieuTri
ADD CONSTRAINT PK_TheoDoiDieuTri PRIMARY KEY ([MaBN], [MaNV])

ALTER TABLE PhongKham
ADD CONSTRAINT PK_PhongKham PRIMARY KEY ([MaPhongKham])

ALTER TABLE KhamBenh
ADD CONSTRAINT PK_KhamBenh PRIMARY KEY ([MaPhieuKB],[MaPhongKham],[MaNV],[MaBN])

ALTER TABLE LoaiPhauThuat
ADD CONSTRAINT PK_LoaiPhauThuat PRIMARY KEY ([MaPT])

ALTER TABLE PhauThuat
ADD CONSTRAINT PK_PhauThuat PRIMARY KEY ([MaNV],[MaPT],[MaBN],[MaNVYeuCau])

ALTER TABLE XN_CC
ADD CONSTRAINT PK_XN_CC PRIMARY KEY ([MaPhieu])

ALTER TABLE ThucHienXNCC
ADD CONSTRAINT PK_ThucHienXNCC PRIMARY KEY ([MaNV],[MaPhieu],[MaPhongKham])

ALTER TABLE TheBHYT
ADD CONSTRAINT PK_TheBHYT PRIMARY KEY ([MaBHYT])

ALTER TABLE SoBenhAn
ADD CONSTRAINT PK_SoBenhAn PRIMARY KEY ([MaSoBenhAn])

go

------Khoa Ngoai
ALTER TABLE NhanVien
ADD CONSTRAINT FK_Khoa_NhanVien FOREIGN KEY ([MaKhoa])
REFERENCES Khoa([MaKhoa])

ALTER TABLE NhanVien
ADD CONSTRAINT FK_ChuyenNganh_NhanVien FOREIGN KEY ([MaChuyenNganh])
REFERENCES ChuyenNganh([MaChuyenNganh])

ALTER TABLE NhanVien
ADD CONSTRAINT FK_ChucVu_NhanVien FOREIGN KEY ([MaChucVu])
REFERENCES ChucVu([MaChucVu])

ALTER TABLE PhieuKhamBenh
ADD CONSTRAINT FK_BenhNhan_PhieuKhamBenh FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE ChuyenNganh
ADD CONSTRAINT FK_Khoa_ChuyenNganh FOREIGN KEY ([MaKhoa])
REFERENCES Khoa([MaKhoa])

ALTER TABLE DonThuoc
ADD CONSTRAINT FK_NhanVien_DonThuoc FOREIGN KEY ([MaNV])
REFERENCES NhanVien([MaNV])

ALTER TABLE DonThuoc
ADD CONSTRAINT FK_BenhNhan_DonThuoc FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE ChiTietDonThuoc
ADD CONSTRAINT FK_Thuoc_ChiTietDonThuoc FOREIGN KEY ([MaThuoc])
REFERENCES Thuoc([MaThuoc])

ALTER TABLE ChiTietDonThuoc
ADD CONSTRAINT FK_DonThuoc_ChiTietDonThuoc FOREIGN KEY ([MaDonThuoc])
REFERENCES DonThuoc([MaDonThuoc])

ALTER TABLE BenhNhan_DichVu
ADD CONSTRAINT FK_DichVu_BenhNhan_DichVu FOREIGN KEY ([MaDV])
REFERENCES DichVu([MaDV])

ALTER TABLE BenhNhan_DichVu
ADD CONSTRAINT FK_BenhNhan_BenhNhan_DichVu FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE BenhNhan_DichVu
ADD CONSTRAINT FK_PhieuKhamBenh_BenhNhan_DichVu FOREIGN KEY ([MaPhieuKB])
REFERENCES PhieuKhamBenh([MaPhieuKB])

ALTER TABLE BenhNhan_DichVu
ADD CONSTRAINT FK_NhanVienYeuCau_BenhNhan_DichVu FOREIGN KEY ([MaNVYeuCau])
REFERENCES NhanVien([MaNV])

ALTER TABLE PhongBenh
ADD CONSTRAINT FK_Khoa_PhongBenh FOREIGN KEY ([MaKhoa])
REFERENCES Khoa([MaKhoa])

ALTER TABLE GiuongBenh
ADD CONSTRAINT FK_PhongBenh_GiuongBenh FOREIGN KEY ([MaPhong])
REFERENCES PhongBenh([MaPhong])

ALTER TABLE PhanGiuong
ADD CONSTRAINT FK_BenhNhan_PhanGiuong FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE PhanGiuong
ADD CONSTRAINT FK_GiuongBenh_PhanGiuong FOREIGN KEY ([MaGiuong])
REFERENCES GiuongBenh([MaGiuong])

ALTER TABLE PhanGiuong
ADD CONSTRAINT FK_PhongBenh_PhanGiuong FOREIGN KEY ([MaPhong])
REFERENCES PhongBenh([MaPhong])

ALTER TABLE PhanGiuong
ADD CONSTRAINT FK_NhanVienYeuCau_PhanGiuong FOREIGN KEY ([MaNVYeuCau])
REFERENCES NhanVien([MaNV])

ALTER TABLE TheoDoiDieuTri
ADD CONSTRAINT FK_BenhNhan_TheoDoiDieuTri FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE TheoDoiDieuTri
ADD CONSTRAINT FK_NhanVien_TheoDoiDieuTri FOREIGN KEY ([MaNV])
REFERENCES NhanVien([MaNV])

ALTER TABLE PhongKham
ADD CONSTRAINT FK_Khoa_PhongKham FOREIGN KEY ([MaKhoa])
REFERENCES Khoa([MaKhoa])

ALTER TABLE KhamBenh
ADD CONSTRAINT FK_BenhNhan_KhamBenh FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE KhamBenh
ADD CONSTRAINT FK_PhongKham_KhamBenh FOREIGN KEY ([MaPhongKham])
REFERENCES PhongKham([MaPhongKham])

ALTER TABLE KhamBenh
ADD CONSTRAINT FK_NhanVien_KhamBenh FOREIGN KEY ([MaNV])
REFERENCES NhanVien([MaNV])

ALTER TABLE KhamBenh
ADD CONSTRAINT FK_PhieuKhamBenh_KhamBenh FOREIGN KEY ([MaPhieuKB])
REFERENCES PhieuKhamBenh([MaPhieuKB])

ALTER TABLE PhauThuat
ADD CONSTRAINT FK_NhanVien_PhauThuat FOREIGN KEY ([MaNV])
REFERENCES NhanVien([MaNV])

ALTER TABLE PhauThuat
ADD CONSTRAINT FK_NhanVienYeuCau_PhauThuat FOREIGN KEY ([MaNVYeuCau])
REFERENCES NhanVien([MaNV])

ALTER TABLE PhauThuat
ADD CONSTRAINT FK_LoaiPhauThuat_PhauThuat FOREIGN KEY ([MaPT])
REFERENCES LoaiPhauThuat([MaPT])

ALTER TABLE PhauThuat
ADD CONSTRAINT FK_PhongKham_PhauThuat FOREIGN KEY ([MaPhongKham])
REFERENCES PhongKham([MaPhongKham])

ALTER TABLE PhauThuat
ADD CONSTRAINT FK_BenhNhan_PhauThuat FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE ThucHienXNCC
ADD CONSTRAINT FK_NhanVien_ThucHienXNCC FOREIGN KEY ([MaNV])
REFERENCES NhanVien([MaNV])

ALTER TABLE ThucHienXNCC
ADD CONSTRAINT FK_XNCC_ThucHienXNCC FOREIGN KEY ([MaPhieu])
REFERENCES XN_CC([MaPhieu])

ALTER TABLE XN_CC
ADD CONSTRAINT FK_BenhNhan_XN_CC FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE XN_CC
ADD CONSTRAINT FK_DichVu_XN_CC FOREIGN KEY ([MaDV])
REFERENCES DichVu([MaDV])

ALTER TABLE XN_CC
ADD CONSTRAINT FK_NhanVienYeuCau_XN_CC FOREIGN KEY ([MaNVYeuCau])
REFERENCES NhanVien([MaNV])

ALTER TABLE ThucHienXNCC
ADD CONSTRAINT FK_PhongKham_ThucHienXNCC FOREIGN KEY ([MaPhongKham])
REFERENCES PhongKham([MaPhongKham])

ALTER TABLE TheBHYT
ADD CONSTRAINT FK_BenhNhan_TheBHYT FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE SoBenhAn
ADD CONSTRAINT FK_BenhNhan_SoBenhAn FOREIGN KEY ([MaBN])
REFERENCES BenhNhan([MaBN])

ALTER TABLE SoBenhAn
ADD CONSTRAINT FK_NhanVien_SoBenhAn FOREIGN KEY ([MaNV])
REFERENCES NhanVien([MaNV])

ALTER TABLE SoBenhAn
ADD CONSTRAINT FK_PhieuKhamBenh_SoBenhAn FOREIGN KEY ([MaPhieuKB])
REFERENCES PhieuKhamBenh([MaPhieuKB])

----------Chèn Dữ Liệu 
go
----Chèn DL cho Khoa
INSERT INTO Khoa(MaKhoa, TenKhoa)
VALUES
	 ('K1', N'Khoa Hồi sức tích cực')
	,('K2', N'Khoa Nội')
	,('K3', N'Khoa Ngoại')
	,('K4', N'Khoa Y Học Cộng đồng')
	,('K5', N'Khoa Nhi')
	,('K6', N'Khoa Phục hồi chức năng')
	,('K7', N'Khoa Da liễu')
	,('K8', N'Khoa Y học Thể thao')
	,('K9', N'Khoa Sản')
	,('K10', N'Khoa Thần kinh học')
	,('K11', N'Khoa Răng hàm mặt')
	,('K12', N'Khoa Y học nội trú')
	,('K13', N'Khoa Ung bướu')
	,('K14', N'Khoa Tim mạch')
	,('K15', N'Khoa Ngoại biên')
	,('K16', N'Khoa Chấn thương chỉnh hình')

-----Chèn DL cho ChuyenNganh
go
Insert into ChuyenNganh(MaChuyenNganh, TenChuyenNganh, MaKhoa)
Values
    ('CN1', N'Chuyên khoa Hồi sức và Chăm sóc cấp cứu', 'K1')
   ,('CN2', N'Chuyên khoa Hồi sức Tim mạch', 'K1')
   ,('CN3', N'Chuyên khoa Hồi sức Nội tiết ', 'K1')
   ,('CN4', N'Chuyên khoa Tim mạch', 'K2')
   ,('CN5', N'Chuyên khoa Tiêu hóa', 'K2')
   ,('CN6', N'Chuyên khoa Nội tiết', 'K2')
   ,('CN7', N'Chuyên khoa Huyết học', 'K2')
   ,('CN8', N'Chuyên khoa Nhi khoa', 'K2')
   ,('CN9', N'Chuyên khoa Ngoại tiết niệu', 'K3')
   ,('CN10', N'Chuyên khoa Hồi sức', 'K3')
   ,('CN12', N'Chuyên khoa Y tế Công cộng', 'K4')
   ,('CN13', N'Chuyên khoa Y học Địa phương', 'K4')
   ,('CN14', N'Chuyên khoa Nhi khoa Nội tiết', 'K5')
   ,('CN15', N'Chuyên khoa Nhi khoa Hô hấp ', 'K5')
   ,('CN16', N'Chuyên khoa Nhi khoa Tim mạch', 'K5')
   ,('CN17', N'Chuyên khoa  Nhi khoa Tâm thần', 'K5')
   ,('CN18', N'Chuyên khoa Phục hồi chức năng Thần kinh', 'K6')
   ,('CN19', N'Chuyên khoa Phục hồi chức năng Vật lý', 'K6')
   ,('CN21', N'Chuyên khoa Da liễu Dị ứng', 'K7')
   ,('CN22', N'Chuyên khoa Da liễu Nội tiết', 'K7')
   ,('CN23', N'Chuyên khoa Da liễu Laser', 'K7')
   ,('CN24', N'Chuyên khoa Y học Thể thao', 'K8')
   ,('CN25', N'Chuyên khoa Y học Thể thao Phẫu thuật', 'K8')
   ,('CN26', N'Chuyên khoa Y học Thể thao Nội tiết', 'K8')
   ,('CN27', N'Chuyên khoa Sản phụ khoa', 'K9')
   ,('CN28', N'Chuyên khoa Y học Sinh sản', 'K9')
   ,('CN29', N'Chuyên khoa Ung thư Phụ khoa', 'K9')
   ,('CN30', N'Chuyên khoa Thần kinh cận lâm sàng', 'K10')
   ,('CN31', N'Chuyên khoa Điều trị Đau', 'K10')
   ,('CN32', N'Chuyên khoa Học Tổng hợp Thần kinh', 'K10')
   ,('CN33', N'Chuyên khoa Nha khoa Tổng quát', 'K11')
   ,('CN34', N'Chuyên khoa Răng hàm mặt Phẫu thuật', 'K11')
   ,('CN36', N'Chuyên khoa Hô hấp', 'K12')
   ,('CN37', N'Chuyên khoa Y học cấp cứu', 'K12')
   ,('CN38', N'Chuyên khoa Y học Hồi sức tích cực', 'K12')
   ,('CN39', N'Chuyên khoa Ung thư Nội khoa', 'K13')
   ,('CN40', N'Chuyên khoa Ung thư Ngoại khoa', 'K13')
   ,('CN41', N'Chuyên khoa Ung thư Bức xạ', 'K13')
   ,('CN42', N'Chuyên khoa Hóa trị liệu', 'K13')
   ,('CN43', N'Chuyên khoa Tim mạch Nội khoa', 'K14')
   ,('CN44', N'Chuyên khoa Tim mạch Ngoại khoa', 'K14')
   ,('CN45', N'Chuyên khoa Tim mạch Nhi khoa', 'K14')
   ,('CN46', N'Chuyên khoa Ngoại biên Tổng quát', 'K15')
   ,('CN47', N'Chuyên khoa Ngoại biên Phẫu thuât', 'K15')
   ,('CN49', N'Chuyên khoa Chấn thương chỉnh hình Tổng quát', 'K16')
   ,('CN50', N'Chuyên khoa Phẫu thuật chỉnh hình', 'K16')
   ,('CN51', N'Chuyên khoa Chấn thương cột sống', 'K16')
   ,('CN52', N'Chuyên khoa Chấn thương thể thao', 'K16')
   ,('CN53', N'Chuyên khoa Chấn thương gối và cẳng chân', 'K16')
   ,('CN54', N'Chuyên khoa Chấn thương vai và cánh tay', 'K16')
   ,('CN55', N'Chuyên khoa Chấn thương chân và cổ chân', 'K16')

----Chen DL cho bang BenhNhan 
go
INSERT INTO BenhNhan(MaBN, HoTenBN, GioiTinh, NgaySinh, DanToc, NgheNghiep, DiaChi, SoDT, SoDTNN)
VALUES
	 ('BN001',N'Nguyễn Ngọc Trâm Anh',N'Nữ','2004-3-5','Kinh',N'Học sinh',N'Phường Phúc Xá, Quận Ba Đình, Hà Nội','0987654321','0938428491')
	,('BN002',N'Phạm Việt Anh',N'Nam','2000-7-1','Kinh',N'Công Nhân',N'Phường Phú Thượng, Quận Tây Hồ, Hà Nội','0987690876','0987639834')
	,('BN003',N'Nguyễn Ngọc Trâm Thư',N'Nữ','2006-8-23','Kinh',N'Học sinh',N'Xã Thân Cửu Nghĩa, Huyện Châu Thành, Tiền Giang','0926487210','0337725477')
	,('BN004',N'Đỗ Tuấn Phong',N'Nam','1992-7-7','Kinh',N'Viên Chức',N'Phường Đông Thanh, Thành phố Đông Hà, Quảng Trị','0966658611','0985345884')
	,('BN005',N'Nguyễn Thị Tuyết Nhi',N'Nữ','1990-10-3','Kinh',N'Nhân Viên Văn Phòng',N'Xã Liên Thủy, Huyện Lệ Thủy, Quảng Bình','0989934211','0337681919')
	,('BN006',N'Đỗ Minh Quân',N'Nam','2001-6-9','Kinh',N'Sinh Viên',N'Xã Gia Khánh, Huyện Gia Lộc, Hải Dương','0387554311','0993436165')
	,('BN007',N'Dương Thị Thuận',N'Nữ','2009-1-2','Kinh',N'Học sinh',N'Phường Tân Định, Quận 1, Thành phố Hồ Chí Minh','0877654110','0336782467')
	,('BN008',N'Nguyễn Bình Khiêm',N'Nam','2010-1-8','Kinh',N'Học sinh',N'Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh','0381004321','0985970772')
	,('BN009',N'Nguyễn Phạm Khánh Huyền',N'Nữ','1999-5-18','Kinh',N'Giáo Viên',N'Phường Việt Hưng, Quận Long Biên, Hà Nội','0839739669','0985970652')
	,('BN010',N'Trần Đình Hoàng',N'Nam','1999-11-18','Kinh',N'Công Nhân',N'Xã Luân Giới, Huyện Điện Biên Đông, Điện Biên','0377923732','0982877723')
	,('BN011',N'Nguyễn Thanh Vân',N'Nữ','1989-1-18','Kinh',N'Thương Nhân',N'Phường Quyết Thắng, Thành phố Lai Châu, Lai Châu','0947500903','0985970772')
	,('BN012',N'Phạm Hải Nam',N'Nam','2012-4-7','Kinh',N'Học sinh',N'Phường Quyết Thắng, Thành phố Sơn La, Sơn La','0364837378','0338825642')
	,('BN013',N'Trần Hà Phương Nghi',N'Nữ','1997-12-11','Kinh',N'Nội Trợ',N'Phường Yên Ninh, Thành phố Yên Bái, Yên Bái','0364949513','0932447854')
	,('BN014',N'Vương Đình Hào',N'Nam','2011-2-16','Kinh',N'Học sinh',N'Xã Quang Tiến, Thành phố Hòa Bình, Hoà Bình','0329407707','0372856890')
	,('BN015',N'Nguyễn Phương Anh',N'Nữ','2012-8-30','Kinh',N'Học sinh',N'Phường Thịnh Đán, Thành phố Thái Nguyên, Thái Nguyên','0389787665','0365446879')
	,('BN016',N'Phạm Ngọc Quỳnh Chi',N'Nữ','2012-10-20','Kinh',N'Học sinh',N'Phường 02, Quận Bình Thạnh, Thành phố Hồ Chí Minh','0942529659','0985764446')
	,('BN017',N'Hoàng Lan Phương',N'Nữ','2016-9-9','Kinh',N'Học sinh',N'Phường 12, Quận Tân Bình, Thành phố Hồ Chí Minh','0378722739','0978867554')
	,('BN018',N'Đào Hà My',N'Nữ','1985-2-15','Kinh',N'Kế Toán',N'Phường 04, Quận Phú Nhuận, Thành phố Hồ Chí Minh','0348832806','0998678665')
	,('BN019',N'Nguyễn Thục Hân',N'Nữ','2003-12-10','Kinh',N'Sinh Viên',N'Phường Linh Xuân, Thành phố Thủ Đức, Thành phố Hồ Chí Minh','0332313369','0326887543')
	,('BN020',N'Nguyễn Minh Nghĩa',N'Nam','2001-6-15','Kinh',N'Sinh Viên',N'Phường Linh Xuân, Thành phố Thủ Đức, Thành phố Hồ Chí Minh','0332319872','0387678654')
	,('BN021',N'Nguyễn Tiến Huy Hoàng',N'Nam','2003-3-12','Kinh',N'Sinh Viên',N'Phường Đồng Nhân, Quận Hai Bà Trưng, Hà Nội','0382916032','0989876778')
	,('BN022',N'Trần Diệu Linh',N'Nữ','2000-12-10','Kinh',N'Nhân Viên Văn Phòng',N'Phường Phố Huế, Quận Hai Bà Trưng, Hà Nội','0334980790','0336775675')
	,('BN023',N'Lê Tuấn Kiệt',N'Nam','2001-4-13','Kinh',N'Marketing',N'Thị trấn Long Điền, Huyện Long Điền, Bà Rịa - Vũng Tàu','0385217220','0336775334')
	,('BN024',N'Lê Cao Thắng',N'Nam','1993-12-11','Kinh',N'Quản Trị Nhân Lực',N'Phường Tân Chánh Hiệp, Quận 12, Thành phố Hồ Chí Minh','0397718400','0336775837')
	,('BN025',N'Ngô Khánh Diệp',N'Nữ','2002-1-10','Kinh',N'Kinh Doanh',N'Xã Tân Hải, Huyện Phú Tân, Cà Mau','0937394493','0336724675')
	,('BN026',N'Vũ Duy Hưng',N'Nam','1997-10-6','Kinh',N'Môi Giới',N'Xã Phong Lộc, Huyện Hậu Lộc, Thanh Hóa','0914257399','0336772935')
	,('BN027',N'Phạm Phương Hà',N'Nữ','2000-2-2','Kinh',N'Sinh viên',N'Xã Lý Thường Kiệt, Huyện Yên Mỹ, Hưng Yên','0975129492','0343475675')
	,('BN028',N'Hoàng Hương Ly',N'Nữ','1990-12-9','Kinh',N'Luật Sư',N'Xã Xuân Đám, Huyện Cát Hải, Hải Phòng','0987913483','0336775112')
	,('BN029',N'Phạm Thị Hằng Nga',N'Nữ','2000-1-10','Kinh',N'Thợ Làm Tóc',N'Xã Hưng Long, Huyện Ninh Giang, Hải Dương','0377350534','0336123675')
	,('BN030',N'Trần Xuân Toản',N'Nam','1998-12-1','Kinh',N'Nhân Viên Ngân Hàng',N'Xã Vạn Ninh, Huyện Gia Bình, Bắc Ninh','0379379300','0336773455')
	,('BN031',N'Bùi Hải Lâm',N'Nam','2000-4-21','Kinh',N'Bảo Vệ',N'Xã Bàu Lâm, Huyện Xuyên Mộc, Bà Rịa - Vũng Tàu','0967500903','0336652675')
	,('BN032',N'Nguyễn Phúc Lộc',N'Nam','1980-7-28','Kinh',N'Nghệ Sĩ',N'Phường 17, Quận Gò Vấp, Thành phố Hồ Chí Minh','0338087827','0336778825')
	,('BN033',N'Nguyễn Thị Khánh Linh',N'Nữ','1985-9-25','Kinh',N'Thu Ngân',N'Xã Vân Xuân, Huyện Vĩnh Tường, Vĩnh Phúc','0389448792','0336823675')
	,('BN034',N'Nguyễn Hải Đăng Khoa',N'Nam','1992-10-20','Kinh',N'Xây Dựng',N'Xã Mỹ Thuận, Huyện Tân Sơn, Phú Thọ','0987159117','0336775675')
	,('BN035',N'Nguyễn Minh Nghĩa',N'Nam','1979-6-9','Kinh',N'Nông Dân',N'Xã Hoàng Lương, Huyện Hiệp Hòa, Bắc Giang','0394728598','0982778237')
	,('BN036',N'Nguyễn Thủy Tiên',N'Nữ','1999-11-9','Kinh',N'Kiểm Toán',N'Xã Hiệp Hòa, Thị xã Quảng Yên, Quảng Ninh','0333915393','0336482375')
	,('BN037',N'Tạ Thị Như Ý',N'Nữ','2009-8-2','Kinh',N'Học sinh',N'Xã Khánh Xuân, Huyện Lộc Bình, Lạng Sơn','0363210215','0335765675')
	,('BN038',N'Nguyễn Thị Hồng Ngọc',N'Nữ','1984-12-30','Kinh',N'Lập Trình Viên',N'Xã Bảo Lý, Huyện Phú Bình, Thái Nguyên','0964575125','0336890675')
	,('BN039',N'Phạm Lê Tấn Phát',N'Nam','1987-4-26','Kinh',N'Kỹ Sư Phần Mềm',N'Xã Bảo Hiệu, Huyện Yên Thủy, Hoà Bình','0984445689','0336776575')
	,('BN040',N'Phan Như Nguyện',N'Nữ','1977-9-9','Kinh',N'Phụ Bếp',N'Thị trấn Vinh Quang, Huyện Hoàng Su Phì, Hà Giang','0932121619','0336890275')
	,('BN041',N'Phạm Đoàn Hạnh San',N'Nữ','2002-1-6','Kinh',N'Công Nhân',N'Xã Chân Sơn, Huyện Yên Sơn, Tuyên Quang','0982536087','0336775765')
	,('BN042',N'Phạm Minh Nhân',N'Nam','1981-10-10','Kinh',N'Thư Ký',N'Phường Bình Minh, Thành phố Lào Cai, Lào Cai','0989702608','0336777765')
	,('BN043',N'Đỗ Quốc Thịnh',N'Nam','1990-8-2','Kinh',N'Giám Đốc',N'Phường Hàng Bồ, Quận Hoàn Kiếm, Hà Nội','0938462665','0336545475')
	,('BN044',N'Lê Tấn Phát',N'Nam','2006-7-2','Kinh',N'Học sinh',N'Xã Ô Lâm, Huyện Tri Tôn, An Giang','0374799679','0336775002')
	,('BN045',N'Nguyễn Ngọc Khánh Thy',N'Nữ','2010-12-15','Kinh',N'Học sinh',N'Xã Hòa Điền, Huyện Kiên Lương, Kiên Giang','0369068104','0336732475')
	,('BN046',N'Thạch Ngọc Thiên',N'Nam','2004-6-12','Kinh',N'Bán Hàng',N'Phường An Khánh, Quận Ninh Kiều, Cần Thơ','0354730520','0339087675')
	,('BN047',N'Nguyễn Ngọc Như Thảo',N'Nữ','2003-11-14','Kinh',N'Nhân Viên',N'Xã Hoả Tiến, Thành phố Vị Thanh, Hậu Giang','0386097194','0331234675')
	,('BN048',N'Trần Minh Thư',N'Nữ','1995-9-2','Kinh',N'Thợ May',N'Xã Kế Thành, Huyện Kế Sách, Sóc Trăng','0378203155','0336774345')
	,('BN049',N'Trần Minh Anh',N'Nữ','1998-3-26','Kinh',N'Nhà Văn',N'Xã Vĩnh Lộc, Huyện Hồng Dân, Bạc Liêu','0339508877','0336012675')
	,('BN050',N'Nguyễn Võ Kim Tuyền',N'Nữ','2000-10-12','Kinh',N'Sinh Viên',N'Xã Khánh Lâm, Huyện U Minh, Cà Mau','0964617739','0336232375')
	,('BN051',N'Tạ Minh Khang',N'Nam','2002-4-12','Kinh',N'Thợ Xăm',N'Phường Cầu Kho, Quận 1, Thành phố Hồ Chí Minh','0339127846','0336554675')
	,('BN052',N'Nguyễn Minh Huy',N'Nam','1994-5-29','Kinh',N'Thợ Làm Tóc',N'Phường 03, Quận Gò Vấp, Thành phố Hồ Chí Minh','0964244749','0336241275')
	,('BN053',N'Lê Phúc Lập',N'Nam','1991-6-1','Kinh',N'Thợ Hàn',N'Phường 5, Thành phố Tân An, Long An','0373058545','0336721545')
	,('BN054',N'Hồ Hoàng Thiên Ngân',N'Nữ','1992-2-12','Kinh',N'Bác Sĩ Thú Y',N'Xã Tân Thuận Tây, Thành phố Cao Lãnh, Đồng Tháp','0918623281','0333327675')
	,('BN055',N'Phạm Ánh Ngọc',N'Nữ','1999-11-10','Kinh',N'Bồi Bàn',N'Phường 8, Thành phố Mỹ Tho, Tiền Giang','0345552324','0334223675')
	,('BN056',N'Nguyễn Thiện Nhân',N'Nữ','2007-8-22','Kinh',N'Học sinh',N'Xã Phước Tuy, Huyện Cần Đước, Long An','0907861770','0336434375')
	,('BN057',N'Nguyễn Diễm Phương',N'Nữ','2005-6-27','Kinh',N'Sinh Viên',N'Phường Tân Dân, Thành phố Việt Trì, Phú Thọ','0979227047','0334435675')
	,('BN058',N'Trần Thị Huỳnh Trân',N'Nữ','1996-10-23','Kinh',N'Marketing',N'Xã Minh Quang, Huyện Bình Xuyên, Vĩnh Phúc','0949918855','0336766575')
	,('BN059',N'Nguyễn Nhựt Trường',N'Nam','2001-2-19','Kinh',N'Bảo Vệ',N'Xã Thống Nhất, Huyện Hạ Lang, Cao Bằng','0333546401','0336452675')
	,('BN060',N'Nguyễn Phương Nghi',N'Nữ','2009-1-19','Kinh',N'Học sinh',N'Xã Đồng Yên, Huyện Bắc Quang, Hà Giang','0397005371','0336775675')
	,('BN061',N'Nguyễn Ngọc Bích Trâm',N'Nữ','2000-8-6','Kinh',N'Thu Ngân',N'Phường Kim Mã, Quận Ba Đình, Hà Nội','0332695510','0336371675')
	,('BN062',N'Phan Thị Mỹ Dung',N'Nữ','1999-12-30','Kinh',N'Công Nhân',N'Phường Hàng Bột, Quận Đống Đa, Hà Nội','0347676566','0336372675')
	,('BN063',N'Lương Phước Tài',N'Nam','2012-8-5','Kinh',N'Học sinh',N'Xã Đồng Phong, Huyện Nho Quan, Ninh Bình','0377153518','0336284675')
	,('BN064',N'Nguyễn Phúc Khang',N'Nam','1998-5-24','Kinh',N'Trưởng Phòng',N'Thị trấn Tân Phú, Huyện Tân Phú, Đồng Nai','0335942063','0332345675')
	,('BN065',N'Nguyễn Phạm Thanh Liêm',N'Nam','1980-8-15','Kinh',N'Lập Trình Viên',N'Xã Cam Hiệp Nam, Huyện Cam Lâm, Khánh Hòa','0343684803','0336992675')
	,('BN066',N'Nguyễn Thị Phương Thảo',N'Nữ','1992-10-10','Kinh',N'Chuyên Viên Tư Vấn',N'Xã Xích Thổ, Huyện Nho Quan, Ninh Bình','0339383034','0931100700')
	,('BN067',N'Triệu Duy Khanh',N'Nam','2000-12-10','Kinh',N'Công Nhân',N'Xã Phước Tân, Huyện Bác Ái, Ninh Thuận','0949983779','0389863996')
	,('BN068',N'Đào Quang Hiếu',N'Nam','1997-5-4','Kinh',N'Nghệ Sĩ',N'Xã Phú Lạc, Huyện Tuy Phong, Bình Thuận','0932734610','0966446148')
	,('BN069',N'Danh Thanh Sang',N'Nam','2013-12-11','Kinh',N'Học sinh',N'Xã Đắk Man, Huyện Đắk Glei, Kon Tum','0326912379','0336525984')
	,('BN070',N'Nguyễn Huỳnh Nhật An',N'Nữ','2016-2-10','Kinh',N'Học sinh',N'Xã Chư Á, Thành phố Pleiku, Gia Lai','0852877355','0377589150')
	,('BN071',N'Lương Minh Hiếu',N'Nam','2011-6-5','Kinh',N'Học sinh',N'Xã Phước Trung, Huyện Bác Ái, Ninh Thuận','0389553583','0367082276')
	,('BN072',N'Lê Trọng Khang',N'Nam','2017-2-20','Kinh',N'Học sinh',N'Xã Đắk Plao, Huyện Đăk Glong, Đắk Nông','0326959455','0795594406')
	,('BN073',N'Nguyễn Phạm Thùy Linh',N'Nữ','1984-9-12','Kinh',N'Thợ May',N'Xã Trạm Hành, Thành phố Đà Lạt, Lâm Đồng','0374551208','0368036523')
	,('BN074',N'Nguyễn Nhật Huy',N'Nam','1998-9-21','Kinh',N'Thợ Hồ',N'Xã Thanh Phú, Thị xã Bình Long, Bình Phước','0974419626','0702535812')
	,('BN075',N'Võ Trọng Nhân',N'Nam','1997-10-22','Kinh',N'Nhân Viên Ngân Hàng',N'Xã Tân Lập, Huyện Tân Biên, Tây Ninh','0389156265','0358974968')
	,('BN076',N'Nguyễn Thảo Như',N'Nữ','1994-1-20','Kinh',N'Kinh Doanh',N'Phường Suối Tre, Thành phố Long Khánh, Đồng Nai','0356500019','0979190626')
	,('BN077',N'Nguyễn Duy Phúc',N'Nam','2008-5-1','Kinh',N'Học sinh',N'Phường Rạch Dừa, Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu','0977537287','0987717624')
	,('BN078',N'Đoàn Văn Quí',N'Nam','1994-2-26','Kinh',N'Công Nhân',N'Phường Tân Thới Nhất, Quận 12, Thành phố Hồ Chí Minh','0919089415','0374433219')
	,('BN079',N'Tạ Thị Khánh Vy',N'Nữ','1982-9-28','Kinh',N'Giám Đốc',N'Xã Công Hải, Huyện Thuận Bắc, Ninh Thuận','0932839089','0357779457')
	,('BN080',N'Võ Thị Ánh Dương',N'Nữ','2000-12-15','Kinh',N'Nhân Viên Văn Phòng',N'Xã Vĩnh An, Huyện Tây Sơn, Bình Định','0854665522','0357402276')
	,('BN081',N'Nguyễn Văn Khang',N'Nam','2001-5-26','Kinh',N'Marketing',N'Xã Ba Vinh, Huyện Ba Tơ, Quảng Ngãi','0355370573','0333093135')
	,('BN082',N'Nguyễn Thị Ngọc Ngân',N'Nữ','1995-12-1','Kinh',N'Kiểm Toán',N'Xã Tam Anh Bắc, Huyện Núi Thành, Quảng Nam','0975584055','0357364731')
	,('BN083',N'Lê Ngọc Anh',N'Nữ','1986-5-2','Kinh',N'Doanh Nhân',N'Phường Mân Thái, Quận Sơn Trà, Đà Nẵng','0971028039','0333744526')
	,('BN084',N'Nguyễn Xuân Mai',N'Nữ','1989-8-9','Kinh',N'Trưởng Phòng',N'Xã Vinh Hưng, Huyện Phú Lộc, Thừa Thiên Huế','0977224549','0906414917')
	,('BN085',N'Nguyễn Trần Bảo Thoa',N'Nữ','1989-4-19','Kinh',N'Thợ Làm Tóc',N'Xã Triệu Tài, Huyện Triệu Phong, Quảng Trị','0979146078','0348494969')
	,('BN086',N'Nguyễn Minh Thái',N'Nam','1975-8-10','Kinh',N'Kỹ Sư Xây Dựng',N'Xã Tân Long, Huyện Hướng Hóa, Quảng Trị','0395525637','0337441077')
	,('BN087',N'Nguyễn Thanh Tuyền',N'Nữ','2003-12-10','Kinh',N'Sinh Viên',N'Xã Gia Ninh, Huyện Quảng Ninh, Quảng Bình','0969615672','0932561208')
	,('BN088',N'Nguyễn Bảo Yến',N'Nữ','1979-10-16','Kinh',N'Kinh Doanh',N'Xã Kỳ Sơn, Huyện Kỳ Anh, Hà Tĩnh','0335651758','0707252275')
	,('BN089',N'Đỗ Quốc Thịnh',N'Nam','1988-9-10','Kinh',N'Thợ Chụp Ảnh',N'Xã Xuân Lam, Huyện Hưng Nguyên, Nghệ An','0333309600','0987659112')
	,('BN090',N'Nguyễn Trung Trực',N'Nam','2015-10-2','Kinh',N'Học sinh',N'Xã Gia Sinh, Huyện Gia Viễn, Ninh Bình','0336018378','0379974185')
	,('BN091',N'Bùi Xuân Vy',N'Nữ','1999-2-20','Kinh',N'Bảo Vệ',N'Xã Hải Bắc, Huyện Hải Hậu, Nam Định','0989908539','0378913247')
	,('BN092',N'Nguyễn Ngọc Quỳnh Quyên',N'Nữ','1979-6-20','Kinh',N'Đầu Bếp',N'Xã Nhân Bình, Huyện Lý Nhân, Hà Nam','0988510594','0352342424')
	,('BN093',N'Võ Thiên Phụng',N'Nữ','1995-9-22','Kinh',N'Thợ May',N'Thị trấn Đông Hưng, Huyện Đông Hưng, Thái Bình','0347307435','0375805042')
	,('BN094',N'Nguyễn Ngọc Duy',N'Nam','2004-12-19','Kinh',N'Sinh Viên',N'Xã An Viên, Huyện Tiên Lữ, Hưng Yên','0349889064','0347305014')
	,('BN095',N'Tạ Văn Minh Đạt',N'Nam','1970-10-1','Kinh',N'Xây Dựng',N'Thị trấn Cát Bà, Huyện Cát Hải, Hải Phòng','0987271509','0347120642')
	,('BN096',N'Nguyễn Văn Hưng',N'Nam','1993-11-27','Kinh',N'Thợ Làm Tóc',N'Xã Vĩnh Hòa, Huyện Ninh Giang, Hải Dương','0353323692','0981932419')
	,('BN097',N'Huỳnh Nhật Thanh',N'Nam','1992-9-26','Kinh',N'Thư Ký',N'Xã Cao Đức, Huyện Gia Bình, Bắc Ninh','0386957221','0335796056')
	,('BN098',N'Nguyễn Bảo Châu',N'Nữ','1986-4-3','Kinh',N'Thông Dịch Viên',N'Xã Vũ Di, Huyện Vĩnh Tường, Vĩnh Phúc','0342017781','0932525138')
	,('BN099',N'Huỳnh Thị Vân Anh',N'Nữ','1984-10-29','Kinh',N'Nhân Viên Ngân Hàng',N'Xã Đào Xá, Huyện Thanh Thuỷ, Phú Thọ','0333344753','0977141602')
	,('BN100',N'Huỳnh Tuấn Khanh',N'Nam','2016-1-11','Kinh',N'Học sinh',N'Xã Đại Thành, Huyện Hiệp Hòa, Bắc Giang','0363999756','0392936726')	
    ,('BN101', N'Nguyễn Thị Mai', N'Nữ', '1995-10-15', N'Kinh', N'Bác sĩ', N'Phường Bình Hưng Hòa, Quận Bình Tân, Thành phố Hồ Chí Minh', '0901234567','0925232811')
    ,('BN102', N'Trần Thị Lan', N'Nữ', '1980-05-20', N'Kinh', N'Giáo viên', N'Xã Xuân Thới Đông, Huyện Hóc Môn, Thành phố Hồ Chí Minh', '0987654321','0379180921')
    ,('BN103', N'Hoàng Thị Hương', N'Nữ', '1976-03-12', N'Kinh', N'Nhân viên văn phòng', N'Phường 5, Thành phố Tân An, Tỉnh Long An', '0976543210','0367885447')
    ,('BN104', N'Lê Thị Thanh Hằng', N'Nữ', '1988-08-08', N'Kinh', N'Kỹ sư', N'Xã Hướng Thọ Phú, Thành phố Tân An, Tỉnh Long An', '0987654321','0362641597')
    ,('BN105', N'Phạm Thị Ngọc Anh', N'Nữ', '1999-09-25', N'Kinh', N'Sinh viên', N'Phường Khánh Hậu, Thành phố Tân An, Tỉnh Long An', '0909876543','0768479949')
    ,('BN106', N'Nguyễn Văn Long', N'Nam', '1975-11-30', N'Kinh', N'Chủ doanh nghiệp', N'Xã Tuyên Thạnh, Thị xã Kiến Tường, Tỉnh Long An', '0912345678','0974797278')
    ,('BN107', N'Đặng Văn Hùng', N'Nam', '1985-07-05', N'Kinh', N'Tiến sĩ', N'Phường 4, Thành phố Mỹ Tho, Tỉnh Tiền Giang', '0987654321','0364025864')
    ,('BN108', N'Lê Thị Thu', N'Nữ', '1992-12-20', N'Kinh', N'Kỹ thuật viên', N'Phường Tân Long, Thành phố Mỹ Tho, Tỉnh Tiền Giang', '0912345678','0971896307')
    ,('BN109', N'Phan Văn Dũng', N'Nam', '1982-04-08', N'Kinh', N'Tài xế', N'Xã Mỹ Phong, Thành phố Mỹ Tho, Tỉnh Tiền Giang', '0987654321','0365849607')
    ,('BN110', N'Trần Thị Kim Ngân', N'Nữ', '1989-11-15', N'Kinh', N'Quản lý', N'Xã Long Hưng, Thị xã Gò Công, Tỉnh Tiền Giang', '0901234567','0987299149')
    ,('BN111', N'Vũ Văn Phúc', N'Nam', '1996-02-25', N'Kinh', N'Sinh viên', N'Xã Bình Đông, Thị xã Gò Công, Tỉnh Tiền Giang', '0976543210','0384554480')
    ,('BN112', N'Nguyễn Thị Trinh', N'Nữ', '1979-08-30', N'Kinh', N'Chuyên viên', N'Xã Mỹ Phước Tây, Thị xã Cai Lậy, Tỉnh Tiền Giang', '0987654321','0348730107')
    ,('BN113', N'Phạm Văn Đức', N'Nam', '1987-06-10', N'Kinh', N'Kỹ sư', N'Xã Tân Hòa Đông, Huyện Tân Phước, Tỉnh Tiền Giang', '0901234567','0969274165')
    ,('BN114', N'Lê Thị Hà', N'Nữ', '1993-03-01', N'Kinh', N'Bác sĩ', N'Xã Tân Hòa Thành, Huyện Tân Phước, Tỉnh Tiền Giang', '0976543210','0397389615')
    ,('BN115', N'Nguyễn Văn Tú', N'Nam', '1983-09-18', N'Kinh', N'Nhân viên bán hàng', N'Xã Hậu Mỹ Bắc A, Huyện Cái Bè, Tỉnh Tiền Giang', '0987654321','0983189246')
    ,('BN116', N'Trần Thị Thanh', N'Nữ', '1998-07-20', N'Kinh', N'Sinh viên', N'Xã Hậu Thành, Huyện Cái Bè, Tỉnh Tiền Giang', '0901234567','0969094343')
    ,('BN117', N'Phan Văn Hưng', N'Nam', '2018-05-05', N'Kinh', N'Học sinh', N'Xã Phú Cường, Huyện Cai Lậy, Tỉnh Tiền Giang', '0976543210','0869311403')
    ,('BN118', N'Vũ Thị Lan', N'Nữ', '1990-10-10', N'Kinh', N'Trưởng phòng', N'Xã Tân Hương, Huyện Châu Thành, Tỉnh Tiền Giang', '0987654321','0986710492')
    ,('BN119', N'Nguyễn Văn An', N'Nam', '1986-01-02', N'Kinh', N'Tiến sĩ', N'Xã Điềm Hy, Huyện Châu Thành, Tỉnh Tiền Giang', '0901234567','0343674596')
    ,('BN120', N'Trần Thị Minh', N'Nữ', '1997-12-05', N'Kinh', N'Sinh viên', N'Xã Nhị Bình, Huyện Châu Thành, Tỉnh Tiền Giang', '0976543210','0396524770')
    ,('BN121', N'Đinh Văn Quân', N'Nam', '1984-08-08', N'Kinh', N'Tài xế', N'Xã Bình Trưng, Huyện Châu Thành, Tỉnh Tiền Giang', '0987654321','0394581635')
    ,('BN122', N'Lê Thị Diệu Hằng', N'Nữ', '1991-11-25', N'Kinh', N'Quản lý', N'Phường 4, Thành phố Bến Tre, Tỉnh Bến Tre', '0901234567','0386468192')
    ,('BN123', N'Nguyễn Văn Tuấn', N'Nam', '2017-10-30', N'Kinh', N'Học sinh', N'Xã Sơn Đông, Thành phố Bến Tre, Tỉnh Bến Tre', '0976543210','0983610728')
    ,('BN124', N'Phạm Thị Hồng', N'Nữ', '2014-05-15', N'Kinh', N'Học sinh', N'Xã Nhơn Thạnh, Thành phố Bến Tre, Tỉnh Bến Tre', '0987654321','0862116043')
    ,('BN125', N'Trần Văn Hải', N'Nam', '2015-02-18', N'Kinh', N'Học sinh', N'Xã Phú An Hòa, Huyện Châu Thành, Tỉnh Bến Tre', '0901234567','0966634792')
    ,('BN126', N'Lê Thị Hương', N'Nữ', '2015-01-01', N'Kinh', N'Học sinh', N'Xã Đại Phúc, Huyện Càng Long, Tỉnh Trà Vinh', '0976543210','0868604087')
    ,('BN127', N'Phan Văn Hùng', N'Nam', '1982-09-05', N'Kinh', N'Kỹ sư', N'Xã Đức Mỹ, Huyện Càng Long, Tỉnh Trà Vinh', '0987654321','0385351290')
    ,('BN128', N'Vũ Thị Hải', N'Nữ', '1987-06-20', N'Kinh', N'Sinh viên', N'Xã Nguyệt Hóa, Huyện Châu Thành, Tỉnh Trà Vinh', '0901234567','0393569639')
    ,('BN129', N'Nguyễn Văn Khánh', N'Nam', '1999-04-25', N'Kinh', N'Nhân viên bán hàng', N'Phường Tân Ngãi, Thành phố Vĩnh Long, Tỉnh Vĩnh Long', '0976543210','0866171469')
    ,('BN130', N'Trần Thị Thúy', N'Nữ', '1993-03-10', N'Kinh', N'Tài xế', N'Phường Tân Hội, Thành phố Vĩnh Long, Tỉnh Vĩnh Long', '0987654321','0862296846')
    ,('BN131', N'Lê Văn Hải', N'Nam', '1988-08-05', N'Kinh', N'Tiến sĩ', N'Xã An Bình, Huyện Long Hồ, Tỉnh Vĩnh Long', '0901234567','0362270451')
    ,('BN132', N'Nguyễn Thị Nhung', N'Nữ', '1989-12-20', N'Kinh', N'Quản lý', N'Xã Tân Thuận Tây, Thành phố Cao Lãnh, Tỉnh Đồng Tháp', '0976543210','0397935052')
    ,('BN133', N'Phạm Văn Đức', N'Nam', '1991-07-10', N'Kinh', N'Trưởng phòng', N'Xã Tân Thuận Đông, Thành phố Cao Lãnh, Tỉnh Đồng Tháp', '0987654321','0352218547')
    ,('BN134', N'Lê Thị Tú', N'Nữ', '1984-04-01', N'Kinh', N'Chuyên viên', N'Phường 4, Thành phố Sa Đéc, Tỉnh Đồng Tháp', '0901234567','0392937476')
    ,('BN135', N'Nguyễn Văn Tuấn', N'Nam', '1976-11-15', N'Kinh', N'Kỹ sư', N'Xã Bình Thạnh, Thành phố Hồng Ngự, Tỉnh Đồng Tháp', '0976543210','0356466385')
    ,('BN136', N'Vũ Thị Ngọc', N'Nữ', '1990-08-30', N'Kinh', N'Sinh viên', N'Thị trấn Sa Rài, Huyện Tân Hồng, Tỉnh Đồng Tháp', '0987654321','0354525782')
    ,('BN137', N'Trần Lê Minh Thư', N'Nữ', '1983-03-20', N'Kinh', N'Nhân viên văn phòng', N'Phường Đông Xuyên, Thành phố Long Xuyên, Tỉnh An Giang', '0901234567','0962370132')
    ,('BN138', N'Nguyễn Thị Hương', N'Nữ', '1997-02-05', N'Kinh', N'Bác sĩ', N'Xã Vĩnh Tế, Thành phố Châu Đốc, Tỉnh An Giang', '0976543210','0326661705')
    ,('BN139', N'Phan Văn Dũng', N'Nam', '1980-01-10', N'Kinh', N'Tiến sĩ', N'Xã Hiệp Xương, Huyện Phú Tân, Tỉnh An Giang', '0987654321','0935376012')
    ,('BN140', N'Lê Thị Thảo', N'Nữ', '1989-07-25', N'Kinh', N'Kỹ thuật viên', N'Xã Mỹ Lâm, Huyện Hòn Đất, Tỉnh Kiên Giang', '0901234567','0333641746')
    ,('BN141', N'Nguyễn Văn Tuấn', N'Nam', '1995-06-20', N'Kinh', N'Quản lý', N'Xã Tân Hoà, Huyện Tân Hiệp, Tỉnh Kiên Giang', '0976543210','0335896839')
    ,('BN142', N'Phạm Thị Hồng', N'Nữ', '1992-12-15', N'Kinh', N'Sinh viên', N'Phường Lê Bình, Quận Cái Răng, Thành phố Cần Thơ', '0987654321','0963494307')
    ,('BN143', N'Trần Văn Đức', N'Nam', '1987-11-30', N'Kinh', N'Tiến sĩ', N'Phường Phú Thứ, Quận Cái Răng, Thành phố Cần Thơ', '0901234567','0787696239')
    ,('BN144', N'Nguyễn Thị Lan', N'Nữ', '1998-05-20', N'Kinh', N'Chuyên viên', N'Xã Thới Hưng, Huyện Cờ Đỏ, Thành phố Cần Thơ', '0976543210','0977093747')
    ,('BN145', N'Vũ Văn Tuấn', N'Nam', '1983-08-18', N'Kinh', N'Kỹ sư', N'Thị trấn Mái Dầm, Huyện Châu Thành, Tỉnh Hậu Giang', '0987654321','0902171050')
    ,('BN146', N'Lê Thị Mai', N'Nữ', '1980-04-10', N'Kinh', N'Bác sĩ', N'Xã Phương Bình, Huyện Phụng Hiệp, Tỉnh Hậu Giang', '0901234567','0981536443')
    ,('BN147', N'Nguyễn Văn Thanh', N'Nam', '1991-09-05', N'Kinh', N'Nhân viên bán hàng', N'Xã Nhơn Mỹ, Huyện Kế Sách, Tỉnh Sóc Trăng', '0976543210','0796501176')
    ,('BN148', N'Phạm Thị Thu Hương', N'Nữ', '1984-03-01', N'Kinh', N'Tài xế', N'Xã Vĩnh Trạch, Thành phố Bạc Liêu, Tỉnh Bạc Liêu', '0987654321','0355544663')
    ,('BN149',N'Trần Văn Long',N'Nam','1990-10-15',N'Kinh',N'Trưởng phòng',N'Thị trấn U Minh, Huyện U Minh, Tỉnh Cà Mau','0901234567','0327600655')
    ,('BN150',N'Nguyễn Thị Thùy Dung',N'Nữ','1993-07-20',N'Kinh',N'Sinh viên',N'Xã Trí Phải, Huyện Thới Bình, Tỉnh Cà Mau','0976543210','0586500510');

---PhieuKhamBenh
go
INSERT INTO PhieuKhamBenh(MaPhieuKB, MaBN, NgayKham)
VALUES
	 ('PKB001','BN001','2024-04-13')
	,('PKB001.1','BN001','2024-05-02')
	,('PKB002','BN002','2024-04-13')
	,('PKB002.1','BN002','2024-05-02')
	,('PKB003','BN003','2024-04-13')
	,('PKB003.1','BN003','2024-05-02')
	,('PKB004','BN004','2024-04-13')
	,('PKB004.1','BN004','2024-05-02')
	,('PKB005','BN005','2024-04-13')
	,('PKB005.1','BN005','2024-05-02')
	,('PKB006','BN006','2024-04-13')
	,('PKB006.1','BN006','2024-05-02')
	,('PKB007','BN007','2024-04-13')
	,('PKB007.1','BN007','2024-05-02')
	,('PKB008','BN008','2024-04-13')
	,('PKB008.1','BN008','2024-05-02')
	,('PKB009','BN009','2024-04-13')
	,('PKB009.1','BN009','2024-05-02')
	,('PKB010','BN010','2024-04-13')
	,('PKB010.1','BN010','2024-05-02')
	,('PKB011','BN011','2024-04-13')
	,('PKB011.1','BN011','2024-05-02')
	,('PKB012','BN012','2024-04-13')
	,('PKB012.1','BN012','2024-05-02')
	,('PKB013','BN013','2024-04-13')
	,('PKB013.1','BN013','2024-05-02')
	,('PKB014','BN014','2024-04-13')
	,('PKB014.1','BN014','2024-05-02')
	,('PKB015','BN015','2024-04-13')
	,('PKB015.1','BN015','2024-05-02')
	,('PKB016','BN016','2024-04-13')
	,('PKB016.1','BN016','2024-05-02')
	,('PKB017','BN017','2024-04-13')
	,('PKB017.1','BN017','2024-05-02')
	,('PKB018','BN018','2024-04-13')
	,('PKB018.1','BN018','2024-05-02')
	,('PKB019','BN019','2024-04-13')
	,('PKB019.1','BN019','2024-05-02')
	,('PKB020','BN020','2024-04-13')
	,('PKB020.1','BN020','2024-05-02')
	,('PKB021','BN021','2024-04-13')
	,('PKB021.1','BN021','2024-05-02')
	,('PKB022','BN022','2024-04-13')
	,('PKB022.1','BN022','2024-05-02')
	,('PKB023','BN023','2024-04-13')
	,('PKB023.1','BN023','2024-05-02')
	,('PKB024','BN024','2024-04-13')
	,('PKB024.1','BN024','2024-05-02')
	,('PKB025','BN025','2024-04-13')
	,('PKB025.1','BN025','2024-05-02')
	,('PKB026','BN026','2024-04-13')
	,('PKB026.1','BN026','2024-05-02')
	,('PKB027','BN027','2024-04-13')
	,('PKB027.1','BN027','2024-05-02')
	,('PKB028','BN028','2024-04-13')
	,('PKB028.1','BN028','2024-05-02')
	,('PKB029','BN029','2024-04-13')
	,('PKB029.1','BN029','2024-05-02')
	,('PKB030','BN030','2024-04-13')
	,('PKB030.1','BN030','2024-05-02')
	,('PKB031','BN031','2024-04-13')
	,('PKB032','BN032','2024-04-13')
	,('PKB033','BN033','2024-04-13')
	,('PKB034', 'BN034','2024-04-13')
	,('PKB035', 'BN035','2024-04-13')
	,('PKB036', 'BN036','2024-04-13')
	,('PKB037', 'BN037','2024-04-13')
	,('PKB038', 'BN038','2024-04-13')
	,('PKB039', 'BN039','2024-04-13')
	,('PKB040', 'BN040','2024-04-13')
	,('PKB041', 'BN041','2024-04-13')
	,('PKB042', 'BN042','2024-04-13')
	,('PKB043', 'BN043','2024-04-13')
	,('PKB044', 'BN044','2024-04-13')
	,('PKB045', 'BN045','2024-04-13')
	,('PKB046', 'BN046','2024-04-13')
	,('PKB047', 'BN047','2024-04-13')
	,('PKB048', 'BN048','2024-04-13')
	,('PKB049', 'BN049','2024-04-13')
	,('PKB050', 'BN050','2024-04-13')
	,('PKB051', 'BN051','2024-04-13')
	,('PKB052', 'BN052','2024-04-13')
	,('PKB053', 'BN053','2024-04-13')
	,('PKB054', 'BN054','2024-04-13')
	,('PKB055', 'BN055','2024-04-13')
	,('PKB056', 'BN056','2024-04-13')
	,('PKB057', 'BN057','2024-04-13')
	,('PKB058', 'BN058','2024-04-13')
	,('PKB059', 'BN059','2024-04-13')
	,('PKB060', 'BN060','2024-04-13')
	,('PKB061', 'BN061','2024-04-13')
	,('PKB062', 'BN062','2024-04-13')
	,('PKB063', 'BN063','2024-04-13')
	,('PKB064', 'BN064','2024-04-13')
	,('PKB065', 'BN065','2024-04-13')
	,('PKB066', 'BN066','2024-04-13')
	,('PKB067', 'BN067','2024-04-13')
	,('PKB068', 'BN068','2024-04-13')
	,('PKB069', 'BN069','2024-04-13')
	,('PKB070', 'BN070','2024-04-13')
	,('PKB071', 'BN071','2024-04-13')
	,('PKB072', 'BN072','2024-04-13')
	,('PKB073', 'BN073','2024-04-13')
	,('PKB074', 'BN074','2024-04-13')
	,('PKB075', 'BN075','2024-04-13')
	,('PKB076', 'BN076','2024-04-13')
	,('PKB077', 'BN077','2024-04-13')
	,('PKB078', 'BN078','2024-04-13')
	,('PKB079', 'BN079','2024-04-13')
	,('PKB080', 'BN080','2024-04-13')
	,('PKB081', 'BN081','2024-04-13')
	,('PKB082', 'BN082','2024-04-13')
	,('PKB083', 'BN083','2024-04-13')
	,('PKB084', 'BN084','2024-04-13')
	,('PKB085', 'BN085','2024-04-13')
	,('PKB086', 'BN086','2024-04-13')
	,('PKB087', 'BN087','2024-04-13')
	,('PKB088', 'BN088','2024-04-13')
	,('PKB089', 'BN089','2024-04-13')
	,('PKB090', 'BN090','2024-04-13')
	,('PKB091', 'BN091','2024-04-13')
	,('PKB092', 'BN092','2024-04-13')
	,('PKB093', 'BN093','2024-04-13')
	,('PKB094', 'BN094','2024-04-13')
	,('PKB095', 'BN095','2024-04-13')
	,('PKB096', 'BN096','2024-04-13')
	,('PKB097', 'BN097','2024-04-13')
	,('PKB098', 'BN098','2024-04-13')
	,('PKB099', 'BN099','2024-04-13')
	,('PKB100', 'BN100','2024-04-13')
	,('PKB101', 'BN101','2024-04-13')
	,('PKB102', 'BN102','2024-04-13')
	,('PKB103', 'BN103','2024-04-13')
	,('PKB104', 'BN104','2024-04-13')
	,('PKB105', 'BN105','2024-04-13')
	,('PKB106', 'BN106','2024-04-13')
	,('PKB107', 'BN107','2024-04-13')
	,('PKB108', 'BN108','2024-04-13')
	,('PKB109', 'BN109','2024-04-13')
	,('PKB110', 'BN110','2024-04-13')
	,('PKB111', 'BN111','2024-04-13')
	,('PKB112', 'BN112','2024-04-13')
	,('PKB113', 'BN113','2024-04-13')
	,('PKB114', 'BN114','2024-04-13')
	,('PKB115', 'BN115','2024-04-13')
	,('PKB116', 'BN116','2024-04-13')
	,('PKB117', 'BN117','2024-04-13')
	,('PKB118', 'BN118','2024-04-13')
	,('PKB119', 'BN119','2024-04-13')
	,('PKB120', 'BN120','2024-04-13')
	,('PKB121', 'BN121','2024-04-13')
	,('PKB122', 'BN122','2024-04-13')
	,('PKB123', 'BN123','2024-04-13')
	,('PKB124', 'BN124','2024-04-13')
	,('PKB125', 'BN125','2024-04-13')
	,('PKB126', 'BN126','2024-04-13')
	,('PKB127', 'BN127','2024-04-13')
	,('PKB128', 'BN128','2024-04-13')
	,('PKB129', 'BN129','2024-04-13')
	,('PKB130', 'BN130','2024-04-13')
	,('PKB131', 'BN131','2024-04-13')
	,('PKB132', 'BN132','2024-04-13')
	,('PKB133', 'BN133','2024-04-13')
	,('PKB134', 'BN134','2024-04-13')
	,('PKB135', 'BN135','2024-04-13')
	,('PKB136', 'BN136','2024-04-13')
	,('PKB137', 'BN137','2024-04-13')
	,('PKB138', 'BN138','2024-04-13')
	,('PKB139', 'BN139','2024-04-13')
	,('PKB140', 'BN140','2024-04-13')
	,('PKB141', 'BN141','2024-04-13')
	,('PKB142', 'BN142','2024-04-13')
	,('PKB143', 'BN143','2024-04-13')
	,('PKB144', 'BN144','2024-04-13')
	,('PKB145', 'BN145','2024-04-13')
	,('PKB146', 'BN146','2024-04-13')
	,('PKB147', 'BN147','2024-04-13')
	,('PKB148', 'BN148','2024-04-13')
	,('PKB149', 'BN149','2024-04-13')
	,('PKB150', 'BN150','2024-04-13')

----Thẻ BHYT
go
INSERT INTO TheBHYT (MaBHYT, MaBN, NgayCap, NgayHetHan)
VALUES
    ('482822283077', 'BN001', '2024-04-11', '2025-04-11'),
    ('593916377411', 'BN002', '2024-04-11', '2025-04-11'),
    ('764202450063', 'BN003', '2024-04-11', '2025-04-11'),
    ('865249073890', 'BN004', '2024-04-11', '2025-04-11'),
    ('927348130590', 'BN005', '2024-04-11', '2025-04-11'),
    ('084722310680', 'BN006', '2024-04-11', '2025-04-11'),
    ('184620301745', 'BN007', '2024-04-11', '2025-04-11'),
    ('241897611874', 'BN008', '2024-04-11', '2025-04-11'),
    ('329001727491', 'BN009', '2024-04-11', '2025-04-11'),
    ('409756123874', 'BN010', '2024-04-11', '2025-04-11'),
    ('135687960025', 'BN011', '2024-04-11', '2025-04-11'),
    ('236745832014', 'BN012', '2024-04-11', '2025-04-11'),
    ('326952147803', 'BN013', '2024-04-11', '2025-04-11'),
    ('447633218940', 'BN014', '2024-04-11', '2025-04-11'),
    ('534729581076', 'BN015', '2024-04-11', '2025-04-11'),
    ('611884320569', 'BN016', '2024-04-11', '2025-04-11'),
    ('702491239094', 'BN017', '2024-04-11', '2025-04-11'),
    ('832695103754', 'BN018', '2024-04-11', '2025-04-11'),
    ('929366240985', 'BN019', '2024-04-11', '2025-04-11'),
    ('033780462013', 'BN021', '2024-04-11', '2025-04-11'),
    ('133677940250', 'BN022', '2024-04-11', '2025-04-11'),
    ('235819360303', 'BN023', '2024-04-11', '2025-04-11'),
    ('309660180398', 'BN024', '2024-04-11', '2025-04-11'),
    ('435502781407', 'BN025', '2024-04-11', '2025-04-11'),
    ('508233309862', 'BN026', '2024-04-11', '2025-04-11'),
    ('602935780005', 'BN027', '2024-04-11', '2025-04-11'),
    ('739277280305', 'BN028', '2024-04-11', '2025-04-11'),
    ('805918441850', 'BN029', '2024-04-11', '2025-04-11'),
    ('933722241890', 'BN030', '2024-04-11', '2025-04-11'),
    ('027681562030', 'BN031', '2024-04-11', '2025-04-11'),
    ('119993970871', 'BN032', '2024-04-11', '2025-04-11'),
    ('235640773297', 'BN033', '2024-04-11', '2025-04-11'),
    ('328101321429', 'BN034', '2024-04-11', '2025-04-11'),
    ('440782038441', 'BN035', '2024-04-11', '2025-04-11'),
    ('523477609892', 'BN036', '2024-04-11', '2025-04-11'),
    ('609326450387', 'BN037', '2024-04-11', '2025-04-11'),
    ('733008270405', 'BN038', '2024-04-11', '2025-04-11'),
    ('818799960526', 'BN039', '2024-04-11', '2025-04-11'),
    ('935380530620', 'BN040', '2024-04-11', '2025-04-11'),
    ('049679502030', 'BN041', '2024-04-11', '2025-04-11'),
    ('147244580784', 'BN042', '2024-04-11', '2025-04-11'),
    ('240700218049', 'BN043', '2024-04-11', '2025-04-11'),
    ('328889751692', 'BN044', '2024-04-11', '2025-04-11'),
    ('439238250481', 'BN045', '2024-04-11', '2025-04-11'),
	('501201931497', 'BN046', '2024-04-11', '2025-04-11'),
    ('603666612304', 'BN047', '2024-04-11', '2025-04-11'),
    ('720585860840', 'BN048', '2024-04-11', '2025-04-11'),
    ('830194951795', 'BN049', '2024-04-11', '2025-04-11'),
    ('927013220375', 'BN050', '2024-04-11', '2025-04-11'),
    ('039425480179', 'BN051', '2024-04-11', '2025-04-11'),
    ('132764172409', 'BN052', '2024-04-11', '2025-04-11'),
    ('230933730089', 'BN053', '2024-04-11', '2025-04-11'),
    ('308847832475', 'BN054', '2024-04-11', '2025-04-11'),
    ('439282332614', 'BN055', '2024-04-11', '2025-04-11'),
    ('541888422704', 'BN056', '2024-04-11', '2025-04-11'),
    ('613297510750', 'BN057', '2024-04-11', '2025-04-11'),
    ('720372390605', 'BN058', '2024-04-11', '2025-04-11'),
    ('839666870472', 'BN059', '2024-04-11', '2025-04-11'),
    ('920738061780', 'BN060', '2024-04-11', '2025-04-11'),
    ('038910631088', 'BN061', '2024-04-11', '2025-04-11'),
    ('133262901740', 'BN062', '2024-04-11', '2025-04-11'),
    ('225997300347', 'BN063', '2024-04-11', '2025-04-11'),
    ('301818911494', 'BN064', '2024-04-11', '2025-04-11'),
    ('429482302978', 'BN065', '2024-04-11', '2025-04-11'),
    ('540561820051', 'BN066', '2024-04-11', '2025-04-11'),
    ('639625960476', 'BN067', '2024-04-11', '2025-04-11'),
    ('721018430980', 'BN068', '2024-04-11', '2025-04-11'),
    ('837626192840', 'BN069', '2024-04-11', '2025-04-11'),
    ('924310301498', 'BN070', '2024-04-11', '2025-04-11'),
    ('031878612575', 'BN071', '2024-04-11', '2025-04-11'),
    ('123055092320', 'BN072', '2024-04-11', '2025-04-11'),
    ('201773591830', 'BN073', '2024-04-11', '2025-04-11'),
    ('329009401493', 'BN074', '2024-04-11', '2025-04-11'),
    ('439661930515', 'BN075', '2024-04-11', '2025-04-11'),
    ('525041781960', 'BN076', '2024-04-11', '2025-04-11'),
    ('613846900830', 'BN077', '2024-04-11', '2025-04-11'),
    ('739270380560', 'BN078', '2024-04-11', '2025-04-11'),
    ('823968701523', 'BN079', '2024-04-11', '2025-04-11'),
    ('931538861307', 'BN080', '2024-04-11', '2025-04-11'),
    ('033210302016', 'BN081', '2024-04-11', '2025-04-11'),
    ('134857910375', 'BN082', '2024-04-11', '2025-04-11'),
    ('229691830179', 'BN083', '2024-04-11', '2025-04-11'),
    ('308842720418', 'BN084', '2024-04-11', '2025-04-11'),
    ('438879832091', 'BN085', '2024-04-11', '2025-04-11'),
    ('503216502735', 'BN086', '2024-04-11', '2025-04-11'),
    ('619808941560', 'BN087', '2024-04-11', '2025-04-11'),
    ('733165932003', 'BN088', '2024-04-11', '2025-04-11'),
    ('825098480761', 'BN089', '2024-04-11', '2025-04-11'),
    ('924332220890', 'BN090', '2024-04-11', '2025-04-11'),
    ('037961510198', 'BN091', '2024-04-11', '2025-04-11'),
    ('137839210397', 'BN092', '2024-04-11', '2025-04-11'),
    ('229495180935', 'BN093', '2024-04-11', '2025-04-11'),
    ('339602841690', 'BN094', '2024-04-11', '2025-04-11'),
    ('447528003270', 'BN095', '2024-04-11', '2025-04-11'),
    ('530217832570', 'BN096', '2024-04-11', '2025-04-11'),
    ('628943502015', 'BN097', '2024-04-11', '2025-04-11'),
    ('708128910871', 'BN098', '2024-04-11', '2025-04-11'),
    ('837114601393', 'BN099', '2024-04-11', '2025-04-11'),
    ('921010240871', 'BN100', '2024-04-11', '2025-04-11'),
    ('038974312030', 'BN101', '2024-04-11', '2025-04-11');

---Chức vụ
go
INSERT INTO ChucVu(MaChucVu, TenChucVu)
VALUES
	 ('CV1',N'Trưởng Khoa')
	,('CV2',N'Phó Khoa')
	,('CV3',N'Bác Sĩ')
	,('CV4',N'Y Tá')

--Chen bang Nhan Vien
go
INSERT INTO NhanVien(MaNV, HoTenNV, GioiTinh, NgaySinh, MaKhoa, MaChuyenNganh, MaChucVu)
VALUES
	('NV001', N'Nguyễn Tấn Điền', N'Nam', '1980-12-12','K1', 'CN1', 'CV1')
   ,('NV002', N'Trần Thị Thu Trang', N'Nữ', '1989-12-10', 'K2', 'CN4', 'CV1')
   ,('NV003', N'Phạm Đình Văn Nam', N'Nam', '1988-12-23', 'K3', 'CN9', 'CV1')
   ,('NV004', N'Lê Thị Bảo Ngọc', N'Nữ', '1987-11-30', 'K4', 'CN13', 'CV1')
   ,('NV005', N'Nguyễn Văn Ngân', N'Nam', '1980-12-11', 'K5', 'CN14', 'CV1')
   ,('NV006', N'Trần Xuân Thịnh', N'Nam', '1980-12-09', 'K6', 'CN18', 'CV1')
   ,('NV007', N'Hà Thị Thu', N'Nữ', '1980-03-01', 'K7', 'CN21', 'CV1')
   ,('NV008', N'Nguyễn Văn Đức', N'Nam', '1989-10-02', 'K8', 'CN24', 'CV1')
   ,('NV009', N'Nguyễn Thị Hồng Nhung', N'Nữ', '1981-11-11', 'K9', 'CN27', 'CV1')
   ,('NV010', N'Lê Bảo An', N'Nam', '1989-12-10', 'K10', 'CN30', 'CV1')
   ,('NV011', N'Hoàng Thị Thu Thủy', N'Nữ', '1989-10-12', 'K11', 'CN33', 'CV1')
   ,('NV012', N'Đỗ Trọng Thắng', N'Nam', '1988-02-05', 'K12', 'CN36', 'CV1')
   ,('NV013', N'Mai Thị Hải', N'Nữ', '1990-12-09', 'K13', 'CN39', 'CV1')
   ,('NV014', N'Vũ Thị Tuyết Ly', N'Nữ', '1982-10-12', 'K14', 'CN43', 'CV1')
   ,('NV015', N'Nguyễn Văn Thanh', N'Nam', '1991-12-09', 'K15', 'CN46', 'CV1')
   ,('NV016', N'Nguyễn Thị Lan Anh', N'Nữ', '1981-10-12', 'K16', 'CN49', 'CV1')

   ,('NV017', N'Nguyễn Văn Tùng', N'Nam', '1981-02-09', 'K1', 'CN2', 'CV2')
   ,('NV018', N'Huỳnh Thị Kim Thy', N'Nữ', '1980-05-12', 'K2', 'CN5', 'CV2')
   ,('NV019', N'Đỗ Trọng Hiếu', N'Nam', '1990-12-02', 'K3', 'CN10', 'CV2')
   ,('NV020', N'Đặng Thị Mai Thúy', N'Nữ', '1980-12-12', 'K4', 'CN12', 'CV2')
   ,('NV021', N'Nguyễn Văn Hậu', N'Nam', '1988-10-12', 'K5', 'CN15', 'CV2')
   ,('NV022', N'Đỗ Thị Hà', N'Nữ', '1990-12-02', 'K6', 'CN19', 'CV2')
   ,('NV023', N'Lê Văn Phúc', N'Nam', '1988-07-13', 'K7', 'CN22', 'CV2')
   ,('NV024', N'Hồ Thị Thanh', N'Nữ', '1979-12-12', 'K8', 'CN25', 'CV2')
   ,('NV025', N'Đinh Văn Đại', N'Nam', '1977-01-12', 'K9', 'CN28', 'CV2')
   ,('NV026', N'Vũ Thị Hoa', N'Nữ', '1980-12-09', 'K10', 'CN31', 'CV2')
   ,('NV027', N'Trần Văn Linh', N'Nữ', '1988-12-27', 'K11', 'CN34', 'CV2')
   ,('NV028', N'Nguyễn Thị Thùy', N'Nữ', '1993-12-24', 'K12', 'CN37', 'CV2')
   ,('NV029', N'Lê Văn Hòa', N'Nam', '1980-07-06', 'K13', 'CN40', 'CV2')
   ,('NV030', N'Phạm Thị Mai', N'Nữ', '1989-03-12', 'K14', 'CN44', 'CV2')
   ,('NV031', N'Bùi Văn Đức', N'Nam', '1980-04-12', 'K15', 'CN9', 'CV2')
   ,('NV032', N'Đinh Thị Tuyết Anh', N'Nữ', '1980-05-12', 'K16', 'CN50', 'CV2')
   ,('NV033', N'Lê Văn Long', N'Nam', '1994-08-15', 'K1', 'CN3', 'CV2')
   ,('NV034', N'Nguyễn Thị Hường', N'Nữ', '1981-11-12', 'K2', 'CN6', 'CV2')
   ,('NV035', N'Nguyễn Quang Hải', N'Nam', '1979-06-22', 'K3', 'CN10', 'CV2')
   ,('NV036', N'Nguyễn Thị Loan', N'Nữ', '1990-08-12', 'K4', 'CN13', 'CV2')
   ,('NV037', N'Nguyễn Lê Bảo Ngọc', N'Nữ', '1980-11-08', 'K5', 'CN16', 'CV2')
   ,('NV038', N'Đinh Văn Tuấn', N'Nam', '1987-10-12', 'K6', 'CN18', 'CV2')
   ,('NV039', N'Đỗ Thị Thu Thùy', N'Nữ', '1989-11-12', 'K7', 'CN23', 'CV2')
   ,('NV040', N'Nguyễn Minh Quân', N'Nam', '1988-12-08', 'K8', 'CN26', 'CV2')
   ,('NV041', N'Bùi Thị Ngọc Ly', N'Nữ', '1980-09-09', 'K9', 'CN29', 'CV2')
   ,('NV042', N'Lý Văn Nghĩa', N'Nam', '1987-12-12', 'K10', 'CN32', 'CV2')
   ,('NV043', N'Trần Thị Nga', N'Nữ', '1990-12-12', 'K11', 'CN33', 'CV2')
   ,('NV044', N'Phạm Văn Đức', N'Nam', '1991-09-19', 'K16', 'CN51', 'CV2')
   ,('NV045', N'Nguyễn Thị Thanh An', N'Nữ', '1981-10-07', 'K13', 'CN41', 'CV2')
   ,('NV046', N'Đặng Văn Khánh', N'Nam', '1980-10-09', 'K15', 'CN47', 'CV2')
   ,('NV047', N'Nguyễn Thị Linh', N'Nữ', '1989-12-12', 'K12', 'CN38', 'CV2')
   ,('NV048', N'Lê Đức Trung', N'Nam', '1980-10-12', 'K14', 'CN45', 'CV2')

   ,('NV049', N'Lê Thị Thu', N'Nữ', '1980-10-01', 'K16', 'CN52', 'CV3')
   ,('NV050', N'Nguyễn Thị Mai Lan', N'Nữ', '1981-01-01', 'K16', 'CN53', 'CV3')
   ,('NV051', N'Nguyễn Tấn Lực', N'Nam', '1978-09-12', 'K1', 'CN1', 'CV3')
   ,('NV052', N'Trần Thị Hương', N'Nữ', '1989-12-12', 'K2', 'CN7', 'CV3')
   ,('NV053', N'Phạm Văn Nam', N'Nam', '1980-03-19', 'K3', 'CN9', 'CV3')
   ,('NV054', N'Lê Thị Trang', N'Nữ', '1987-05-10', 'K4', 'CN12', 'CV3')
   ,('NV055', N'Nguyễn Văn Hòa', N'Nam', '1981-2-24', 'K5', 'CN16', 'CV3')
   ,('NV056', N'Trần Văn Bình', N'Nam', '1979-08-17', 'K6', 'CN19', 'CV3')
   ,('NV057', N'Hà Thị Mai', N'Nữ', '1980-02-09', 'K7', 'CN21', 'CV3')
   ,('NV058', N'Vũ Văn Đức', N'Nam', '1994-12-11', 'K8', 'CN24', 'CV3')
   ,('NV059', N'Nguyễn Thị Hồng', N'Nam', '1980-02-01', 'K9', 'CN27', 'CV3')
   ,('NV060', N'Lê Văn An', N'Nam', '1981-12-12', 'K10', 'CN30', 'CV3')
   ,('NV061', N'Hoàng Thị Thu', N'Nữ', '1984-12-09', 'K11', 'CN33', 'CV3')
   ,('NV062', N'Đỗ Văn Thắng', N'Nam', '1980-08-27', 'K12', 'CN36', 'CV3')
   ,('NV063', N'Phan Thị Hải', N'Nữ', '1980-12-12', 'K13', 'CN42', 'CV3')
   ,('NV064', N'Vũ Thị Minh', N'Nữ', '1984-08-30', 'K14', 'CN43', 'CV3')
   ,('NV065', N'Trần Văn Thanh', N'Nam', '1989-10-19', 'K15', 'CN46', 'CV3')
   ,('NV066', N'Nguyễn Thị Lan', N'Nữ', '1978-12-12', 'K16', 'CN54', 'CV3')
   ,('NV067', N'Lê Văn Tùng', N'Nam', '1984-03-19', 'K1', 'CN2', 'CV3')
   ,('NV068', N'Huỳnh Thị Ngọc', N'Nữ', '1981-12-28', 'K2', 'CN8', 'CV3')
   ,('NV069', N'Phạm Văn Hiếu', N'Nam', '1987-03-12', 'K3', 'CN10', 'CV3')
   ,('NV070', N'Đặng Thị Thu', N'Nữ', '1980-12-16', 'K4', 'CN13', 'CV3')
   ,('NV071', N'Trần Văn Hậu', N'Nam', '1980-10-19', 'K6', 'CN19', 'CV3')
   ,('NV072', N'Nguyễn Thị Hà', N'Nữ', '1987-06-12', 'K5', 'CN17', 'CV3')
   ,('NV073', N'Lê Văn Phúc', N'Nam', '1980-12-29', 'K7', 'CN22', 'CV3')
   ,('NV074', N'Hồ Thị Thanh', N'Nữ', '1980-06-12', 'K8', 'CN25', 'CV3')
   ,('NV075', N'Đinh Văn Đại', N'Nam', '1984-01-12', 'K9', 'CN28', 'CV3')
   ,('NV076', N'Vũ Thị Hoa', N'Nam', '1980-08-12', 'K10', 'CN31', 'CV3')
   ,('NV077', N'Trần Văn Linh', N'Nam', '1980-07-13', 'K11', 'CN34', 'CV3')
   ,('NV078', N'Nguyễn Thị Thùy', N'Nữ', '1977-12-12', 'K12', 'CN37', 'CV3')
   ,('NV079', N'Lê Văn Hòa', N'Nam', '1977-12-12', 'K13', 'CN39', 'CV3')
   ,('NV080', N'Phạm Thị Mai', N'Nữ', '1980-04-30', 'K14', 'CN44', 'CV3')
   ,('NV081', N'Bùi Văn Đức', N'Nam', '1984-09-12', 'K15', 'CN46', 'CV3')
   ,('NV082', N'Đinh Thị Hồng', N'Nữ', '1980-10-20', 'K16', 'CN55', 'CV3')
   ,('NV083', N'Lê Văn Long', N'Nam', '1989-10-12', 'K1', 'CN3', 'CV3')
   ,('NV084', N'Nguyễn Thị Hường', N'Nữ', '1981-02-12', 'K2', 'CN4', 'CV3')
   ,('NV085', N'Trần Văn Hải', N'Nam', '1990-12-16', 'K3', 'CN9', 'CV3')
   ,('NV086', N'Hồ Thị Loan', N'Nữ', '1979-11-21', 'K4', 'CN12', 'CV3')
   ,('NV087', N'Lê Thị Trà', N'Nữ', '1980-09-12', 'K5', 'CN14', 'CV3')
   ,('NV088', N'Võ Văn Tuấn', N'Nam', '1980-12-19', 'K6', 'CN18', 'CV3')
   ,('NV089', N'Đỗ Thị Thu', N'Nữ', '1990-10-18', 'K7', 'CN23', 'CV3')
   ,('NV090', N'Nguyễn Văn Quân', N'Nam', '1986-09-28', 'K8', 'CN26', 'CV3')
   ,('NV091', N'Bùi Thị Ngọc', N'Nữ', '1993-11-29', 'K9', 'CN29', 'CV3')
   ,('NV092', N'Trần Văn Hiệp', N'Nam', '1989-05-12', 'K10', 'CN32', 'CV3')
   ,('NV093', N'Nguyễn Thị Nga', N'Nữ', '1980-07-13', 'K11', 'CN34', 'CV3')
   ,('NV094', N'Phạm Văn Hùng', N'Nam', '1986-08-10', 'K12', 'CN38', 'CV3')
   ,('NV095', N'Trần Thị Thanh', N'Nữ', '1989-12-12', 'K13', 'CN40', 'CV3')
   ,('NV096', N'Hoàng Văn Khánh', N'Nam', '1990-10-12', 'K15', 'CN47', 'CV3')
   ,('NV097', N'Nguyễn Thị Lan', N'Nữ', '1984-07-19', 'K14', 'CN45', 'CV3')
   ,('NV098', N'Lê Văn Trung', N'Nam', '1988-11-26', 'K16', 'CN49', 'CV3')
   ,('NV099', N'Huỳnh Thị Hồng', N'Nữ', '1989-03-27', 'K1', 'CN1', 'CV3')
   ,('NV100', N'Đặng Văn Lợi', N'Nam', '1986-10-12', 'K2', 'CN5', 'CV3')
   ,('NV101', N'Nguyễn Thị Hằng', N'Nữ', '1980-12-12', 'K3', 'CN9', 'CV3')
   ,('NV102', N'Trần Văn Tuấn', N'Nam', '1989-12-14', 'K4', 'CN13', 'CV3')
   ,('NV103', N'Phạm Thị Hoài', N'Nữ', '1983-10-29', 'K5', 'CN15', 'CV3')
   ,('NV104', N'Lê Văn Hòa', N'Nam', '1992-07-12', 'K6', 'CN18', 'CV3')
   ,('NV105', N'Nguyễn Thị Nhung', N'Nữ', '1980-02-11', 'K7', 'CN21', 'CV3')
   ,('NV106', N'Hoàng Văn Hùng', N'Nam', '1989-10-12', 'K8', 'CN24', 'CV3')
   ,('NV107', N'Trần Thị Mai', N'Nữ', '1982-09-30', 'K9', 'CN27', 'CV3')
   ,('NV108', N'Nguyễn Văn Hải', N'Nam', '1990-09-12', 'K10', 'CN30', 'CV3')
   ,('NV109', N'Lê Thị Kim', N'Nữ', '1980-09-16', 'K11', 'CN33', 'CV3')
   ,('NV110', N'Phan Văn Anh', N'Nam', '1990-02-27', 'K12', 'CN36', 'CV3')
   ,('NV111', N'Trần Văn Hậu', N'Nam', '1981-09-05', 'K13', 'CN41', 'CV3')
   ,('NV112', N'Nguyễn Thị Hạnh', N'Nữ', '1993-10-12', 'K14', 'CN43', 'CV3')
   ,('NV113', N'Phạm Văn Lâm', N'Nam', '1990-08-16', 'K15', 'CN47', 'CV3')
   ,('NV114', N'Lê Thị Thùy', N'Nữ', '1977-09-10', 'K16', 'CN50', 'CV3')
   ,('NV115', N'Hoàng Văn Đức', N'Nam', '1989-04-12', 'K1', 'CN2', 'CV3')
   ,('NV116', N'Nguyễn Thị Hằng', N'Nữ', '1990-05-12', 'K2', 'CN6', 'CV3')
   ,('NV117', N'Trần Văn Lâm', N'Nam', '1980-12-12', 'K3', 'CN10', 'CV3')
   ,('NV118', N'Lê Thị Hồng', N'Nữ', '1979-12-19', 'K4', 'CN12', 'CV3')
   ,('NV119', N'Phan Văn Hùng', N'Nam', '1980-09-28', 'K5', 'CN17', 'CV3')
   ,('NV120', N'Nguyễn Thị Tú', N'Nữ', '1988-12-29', 'K6', 'CN19', 'CV3')

   ,('NV121', N'Hoàng Văn Thanh', N'Nam', '1980-12-09', 'K7', 'CN22', 'CV3')
   ,('NV122', N'Trần Thị Mai', N'Nữ', '1982-11-12', 'K8', 'CN25', 'CV3')
   ,('NV123', N'Nguyễn Văn Đông', N'Nam', '1981-12-12', 'K9', 'CN28', 'CV3')
   ,('NV124', N'Nguyễn Thị Hồng', N'Nữ', '1993-01-01', 'K10', 'CN31', 'CV3')
   ,('NV125', N'Hoàng Văn Thắng', N'Nam', '1990-12-02', 'K11', 'CN34', 'CV3')
   ,('NV126', N'Lê Thị Thúy', N'Nữ', '1980-12-23', 'K12', 'CN37', 'CV3')
   ,('NV127', N'Nguyễn Văn Bình', N'Nam', '1986-02-26', 'K13', 'CN42', 'CV3')
   ,('NV128', N'Nguyễn Thị Ngọc', N'Nữ', '1994-12-12', 'K14', 'CN44', 'CV3')
   ,('NV129', N'Nguyễn Văn Hoàng', N'Nam', '1981-09-12', 'K15', 'CN46', 'CV3')
   ,('NV130', N'Phạm Thị Thanh', N'Nữ', '1989-01-12', 'K16', 'CN51', 'CV3')
   ,('NV131', N'Trần Thị Loan', N'Nữ', '1983-12-12', 'K1', 'CN3', 'CV3')
   ,('NV132', N'Nguyễn Văn Đức', N'Nam', '1980-04-02', 'K2', 'CN7', 'CV3')
   ,('NV133', N'Hoàng Thị Mai', N'Nữ', '1991-12-01', 'K3', 'CN10', 'CV3')
   ,('NV134', N'Nguyễn Văn Hải', N'Nam', '1989-11-01', 'K4', 'CN13', 'CV3')
   ,('NV135', N'Trần Thị Lan', N'Nữ', '1980-12-22', 'K5', 'CN16', 'CV3')
   ,('NV136', N'Lê Văn Phúc', N'Nam', '1980-12-12', 'K6', 'CN18', 'CV3')
   ,('NV137', N'Nguyễn Thị Ngọc', N'Nữ', '1980-01-09', 'K7', 'CN23', 'CV3')
   ,('NV138', N'Hoàng Văn Tiến', N'Nam', '1989-11-06', 'K8', 'CN26', 'CV3')
   ,('NV139', N'Trần Thị Thúy', N'Nữ', '1981-01-08', 'K9', 'CN29', 'CV3')
   ,('NV140', N'Nguyễn Văn Dương', N'Nam', '1981-05-21', 'K10', 'CN32', 'CV3')
   ,('NV141', N'Nguyễn Thị Thảo', N'Nữ', '1995-12-12', 'K11', 'CN33', 'CV3')
   ,('NV142', N'Trần Văn An', N'Nam', '1990-09-11', 'K12', 'CN38', 'CV3')
   ,('NV143', N'Hoàng Thị Lan', N'Nữ', '1991-12-12', 'K13', 'CN39', 'CV3')
   ,('NV144', N'Trần Văn Hà', N'Nam', '1989-04-16', 'K15', 'CN47', 'CV3')
   ,('NV145', N'Nguyễn Thị Trang', N'Nữ', '1992-12-12', 'K14', 'CN45', 'CV3')
   ,('NV146', N'Phạm Văn Thành', N'Nam', '1982-04-23', 'K16', 'CN52', 'CV3')
   ,('NV147', N'Trần Thị Nga', N'Nữ', '1979-08-06', 'K16', 'CN53', 'CV3')
   ,('NV148', N'Nguyễn Văn Hùng', N'Nam', '1981-04-12', 'K16', 'CN54', 'CV3')
   ,('NV149', N'Phạm Thị Hạnh', N'Nữ', '1980-06-12', 'K16', 'CN55', 'CV3')
   ,('NV150', N'Lê Văn Hoàng', N'Nam', '1987-01-12', 'K16', 'CN49', 'CV3')
   ,('NV151', N'Nguyễn Thị Hoa', N'Nữ', '1988-03-12', 'K1', 'CN1', 'CV3')
   ,('NV152', N'Trần Văn Dũng', N'Nam', '1980-08-12', 'K2', 'CN8', 'CV3')
   ,('NV153', N'Nguyễn Thị Hồng', N'Nữ', '1993-12-01', 'K3', 'CN9', 'CV3')
   ,('NV154', N'Trần Thị Hương', N'Nữ', '1990-12-12', 'K4', 'CN12', 'CV3')
   ,('NV155', N'Nguyễn Văn Tú', N'Nam', '1993-11-12', 'K5', 'CN14', 'CV3')
   ,('NV156', N'Trần Văn Thắng', N'Nam', '1985-04-09', 'K6', 'CN19', 'CV3')
   ,('NV157', N'Phạm Thị Thu', N'Nữ', '1980-02-02', 'K7', 'CN21', 'CV3')
   ,('NV158', N'Nguyễn Văn Đức', N'Nam', '1989-10-12', 'K8', 'CN24', 'CV3')
   ,('NV159', N'Lê Thị Hải', N'Nữ', '1990-03-19', 'K9', 'CN27', 'CV3')
   ,('NV160', N'Trần Văn Hùng', N'Nam', '1988-05-12', 'K10', 'CN30', 'CV3')
   ,('NV161', N'Phạm Thị Thảo', N'Nữ', '1981-02-12', 'K11', 'CN33', 'CV3')
   ,('NV162', N'Nguyễn Văn Nam', N'Nam', '1990-09-12', 'K12', 'CN36', 'CV3')
   ,('NV163', N'Trần Thị Thúy', N'Nữ', '1984-01-12', 'K13', 'CN40', 'CV3')
   ,('NV164', N'Lê Văn Hiếu', N'Nam', '1980-02-11', 'K14', 'CN43', 'CV3')
   ,('NV165', N'Nguyễn Thị Hồng', N'Nữ', '1982-04-13', 'K15', 'CN46', 'CV3')
   ,('NV166', N'Trần Văn Đức', N'Nam', '1980-11-12', 'K1', 'CN2', 'CV3')
   ,('NV167', N'Phạm Thị Hà', N'Nữ', '1993-12-12', 'K3', 'CN10', 'CV3')
   ,('NV168', N'Nguyễn Văn Thanh', N'Nam', '1988-05-12', 'K2', 'CN4', 'CV3')
   ,('NV169', N'Trần Thị Ngọc', N'Nữ', '1977-12-12', 'K5', 'CN15', 'CV3')
   ,('NV170', N'Phan Văn Long', N'Nam', '1980-12-30', 'K4', 'CN13', 'CV3')
   ,('NV171', N'Nguyễn Thị Trang', N'Nữ', '1980-04-26', 'K7', 'CN22', 'CV3')
   ,('NV172', N'Trần Văn Quân', N'Nam', '1993-12-11', 'K6', 'CN19', 'CV3')
   ,('NV173', N'Phạm Thị Loan', N'Nữ', '1992-12-12', 'K8', 'CN25', 'CV3')
   ,('NV174', N'Lê Văn Hòa', N'Nam', '1980-12-14', 'K9', 'CN28', 'CV3')
   ,('NV175', N'Trần Thị Thảo', N'Nữ', '1989-12-12', 'K10', 'CN31', 'CV3')
   ,('NV176', N'Nguyễn Văn Thắng', N'Nam', '1983-12-12', 'K11', 'CN34', 'CV3')
   ,('NV177', N'Trần Thị Bích', N'Nữ', '1980-10-12', 'K12', 'CN37', 'CV3')
   ,('NV178', N'Nguyễn Văn Bảo', N'Nam', '1980-12-12', 'K13', 'CN41', 'CV3')
   ,('NV179', N'Lê Thị Hồng', N'Nữ', '1980-08-12', 'K14', 'CN44', 'CV3')
   ,('NV180', N'Nguyễn Văn Phúc', N'Nam', '1981-12-12', 'K15', 'CN46', 'CV3')
   ,('NV181', N'Trần Thị Nga', N'Nữ', '1980-11-10', 'K16', 'CN50', 'CV3')

   ,('NV182', N'Phạm Văn Hùng', N'Nam', '1993-10-12', 'K1', 'CN3', 'CV3')
   ,('NV183', N'Nguyễn Thị Hằng', N'Nam', '1989-07-12', 'K2', 'CN5', 'CV3')
   ,('NV184', N'Trần Văn Tâm', N'Nam', '1988-10-12', 'K3', 'CN9', 'CV3')
   ,('NV185', N'Phạm Thị Tú', N'Nữ', '1989-02-12', 'K5', 'CN17', 'CV3')
   ,('NV186', N'Lê Văn Hải', N'Nam', '1980-12-12', 'K5', 'CN16', 'CV3')
   ,('NV187', N'Trần Thị Lý', N'Nữ', '1978-09-16', 'K6', 'CN18', 'CV3')
   ,('NV188', N'Nguyễn Văn An', N'Nam', '1992-12-12', 'K7', 'CN23', 'CV3')
   ,('NV189', N'Phạm Thị Hương', N'Nữ', '1994-10-01', 'K8', 'CN26', 'CV3')
   ,('NV190', N'Trần Văn Đạt', N'Nam', '1980-09-05', 'K9', 'CN29', 'CV3')
   ,('NV191', N'Nguyễn Thị Thanh', N'Nữ', '1995-10-08', 'K10', 'CN32', 'CV3')
   ,('NV192', N'Trần Thị Tâm', N'Nữ', '1993-05-13', 'K11', 'CN34', 'CV3')
   ,('NV193', N'Phạm Văn Quân', N'Nam', '1990-06-09', 'K12', 'CN38', 'CV3')
   ,('NV194', N'Nguyễn Thị Lan', N'Nam', '1989-12-12', 'K14', 'CN45', 'CV3')
   ,('NV195', N'Hoàng Văn Trung', N'Nam', '1981-12-30', 'K13', 'CN42', 'CV3')
   ,('NV196', N'Trần Thị Loan', N'Nữ', '1977-09-21', 'K15', 'CN47', 'CV3')
   ,('NV197', N'Nguyễn Văn Dũng', N'Nam', '1979-12-12', 'K16', 'CN51', 'CV3')
   ,('NV198', N'Lê Thị Hải', N'Nữ', '1993-04-17', 'K2', 'CN6', 'CV3')
   ,('NV199', N'Nguyễn Văn Hiệp', N'Nam', '1980-03-12', 'K2', 'CN7', 'CV3')
   ,('NV200', N'Trần Thị Hằng', N'Nữ', '1980-12-12', 'K2', 'CN8', 'CV3')
   ,('NV201', N'Trần Thị Mai', N'Nữ', '1991-12-12', 'K15', 'CN47', 'CV3')
   ,('NV202', N'Nguyễn Văn Tài', N'Nam', '1993-12-10', 'K16', 'CN52', 'CV3')
   ,('NV203', N'Nguyễn Mai Hoa', N'Nữ', '1980-12-19', 'K16', 'CN53', 'CV3')
   ,('NV204', N'Nguyễn Văn Tùng', N'Nam', '1986-08-08', 'K16', 'CN54', 'CV3')
   ,('NV205', N'Nguyễn Thị Vân Anh', N'Nữ', '1994-08-09', 'K16', 'CN55', 'CV3')

----NhanVien - Chuc Vu : Y Ta (CV4)
   ,('NV206', N'Nguyễn Thị Mai Anh', N'Nữ', '1993-12-12', 'K1', 'CN1', 'CV4')
   ,('NV207', N'Nguyễn Tú Uyên', N'Nữ', '1980-11-12', 'K1', 'CN2', 'CV4')
   ,('NV208', N'Nguyễn Thị Kim Ngân', N'Nữ', '1977-08-12', 'K1', 'CN3', 'CV4')
   ,('NV209', N'Trần Thị Ngọc Linh', N'Nữ', '1978-12-12', 'K1', 'CN1', 'CV4')
   ,('NV210', N'Nguyễn Thị Ngọc Anh', N'Nữ', '1991-12-12', 'K1', 'CN2', 'CV4')
   ,('NV211', N'Trần Thị Ngọc', N'Nữ', '1985-12-24', 'K1', 'CN3', 'CV4')
   ,('NV212', N'Lý Nhã Văn', N'Nữ', '1990-07-07', 'K3', 'CN10', 'CV4')
   ,('NV213', N'Phạm Thị Thúy Diễm', N'Nữ', '1988-05-05', 'K3', 'CN9', 'CV4')
   ,('NV214', N'Nguyễn Mai Cẩm Ly', N'Nữ', '1976-12-12', 'K3', 'CN10', 'CV4')
   ,('NV215', N'Trần Thị Xuân', N'Nữ', '1979-12-31', 'K3', 'CN9', 'CV4')
   ,('NV216', N'Đinh Thị Hải My', N'Nữ', '1980-12-12', 'K3', 'CN10', 'CV4')
   ,('NV217', N'Nguyễn Thị Như Ý', N'Nữ', '1980-12-14', 'K3', 'CN9', 'CV4')
   ,('NV218', N'Tô Thị Tường Vy', N'Nữ', '1989-07-12', 'K3', 'CN10', 'CV4')
   ,('NV219', N'Nguyễn Thị Tuyết Trâm', N'Nữ', '1979-04-12', 'K3', 'CN9', 'CV4')
   ,('NV220', N'Đinh Thị Ngọc Anh', N'Nữ', '1987-12-10', 'K3', 'CN10', 'CV4')

   ,('NV221', N'Phạm Giang Linh', N'Nữ', '1980-03-01', 'K16', 'CN49', 'CV4')
   ,('NV222', N'Bùi Thị Khánh Linh', N'Nữ', '1992-12-09', 'K16', 'CN49', 'CV4')
   ,('NV223', N'Phạm Hoài Thương', N'Nữ', '1980-09-01', 'K16', 'CN50', 'CV4')
   ,('NV224', N'Lê Phương Thảo', N'Nữ', '1980-12-23', 'K16', 'CN50', 'CV4')
   ,('NV225', N'Nguyễn Hà Khánh Vi', N'Nữ', '1990-03-12', 'K16', 'CN51', 'CV4')
   ,('NV226', N'Tạ Thị Thanh Hương', N'Nữ', '1989-12-12', 'K16', 'CN51', 'CV4')
   ,('NV227', N'Tạ Ngọc Kim Anh', N'Nữ', '1980-12-02', 'K16', 'CN52', 'CV4')
   ,('NV228', N'Nguyễn Hải Yến Chi', N'Nữ', '1980-02-12', 'K16', 'CN52', 'CV4')
   ,('NV229', N'Lê Thị Thanh Tâm', N'Nữ', '1987-05-13', 'K16', 'CN53', 'CV4')
   ,('NV230', N'Vũ Lê Hà Trang', N'Nữ', '1986-10-10', 'K16', 'CN53', 'CV4')
   ,('NV231', N'Phạm Ngọc Hà', N'Nữ', '1983-11-02', 'K16', 'CN54', 'CV4')
   ,('NV232', N'Vũ Ngọc Hân', N'Nữ', '1980-12-19', 'K16', 'CN54', 'CV4')
   ,('NV233', N'Nguyễn Thị Ngọc Lan', N'Nữ', '1980-12-12', 'K16', 'CN55', 'CV4')
   ,('NV234', N'Đinh Thị Bích Ngọc', N'Nữ', '1986-10-12', 'K16', 'CN55', 'CV4')
   ,('NV235', N'Lê Yến Vy', N'Nữ', '1992-09-18', 'K2', 'CN7', 'CV4')
   ,('NV236', N'Phạm Hồng Hạnh', N'Nữ', '1994-01-12', 'K2', 'CN7', 'CV4')
   ,('NV237', N'Vũ Mai Linh', N'Nữ', '1989-04-12', 'K2', 'CN8', 'CV4')
   ,('NV238', N'Lê Bùi Bảo Ngọc', N'Nữ', '1980-12-13', 'K2', 'CN8', 'CV4')
   ,('NV239', N'Nguyễn Thị Thùy Giang', N'Nữ', '1993-07-12', 'K2', 'CN8', 'CV4')
   ,('NV240', N'Nguyễn Thị Hồng Hạnh', N'Nữ', '1981-11-11', 'K2', 'CN8', 'CV4')

---Chèn DL cho DichVu
go
INSERT INTO DichVu(MaDV, TenDV, DonGiaDichVu) 
VALUES
('DV001', N'Xét nghiệm ung bướu', 200000),
('DV002', N'Xét nghiệm máu', 50000),
('DV003', N'Chụp X-Quang', 300000),
('DV004', N'Xét nghiệm nước tiểu', 80000),
('DV005', N'Xét nghiệm da liễu', 1500000),
('DV006', N'Chụp cắt lớp CT', 800000),
('DV007', N'Chụp điện não', 800000),
('DV008', N'Dịch vụ hấp thụ oxy', 1000000),
('DV009', N'Dịch vụ phục hồi chức năng', 2000000),
('DV010', N'Dịch vụ chăm sóc sau phẫu thuật', 3000000),
('DV011', N'Phòng VIP', 2000000),
('DV012', N'Phòng 2 Giường', 1500000),
('DV013', N'Phòng 3 Giường', 1000000),
('DV014', N'Phòng 5 Giường', 500000),
('DV015', N'Phòng 7 Giường', 200000),
('DV016', N'Phẫu thuật Tim', 80000000),
('DV017', N'Phẫu thuật Gan', 20000000),
('DV018', N'Phẫu thuật Mắt', 10000000),
('DV019', N'Phẫu thuật Tai mũi họng', 20000000),
('DV021', N'Phẫu thuật Khối u', 50000000),
('DV022', N'Phẫu thuật Cột sống', 40000000),
('DV023', N'Phẫu thuật Lồng ngực', 30000000),
('DV024', N'Phẫu thuật Bụng', 70000000),
('DV025', N'Phẫu thuật Cơ xương khớp', 70000000),
('DV026', N'Phẫu thuật Ung thư', 70000000),
('DV027', N'Phẫu thuật Túi mật', 40000000),
('DV028', N'Phẫu thuật Phổi', 70000000),
('DV029', N'Phẫu thuật Thận', 70000000),
('DV030', N'Phẫu thuật Hậu quả cháy nổ', 10000000),
('DV031', N'Phẫu thuật Sửa chữa gãy xương', 200000),
('DV032', N'Phẫu thuật Nội soi', 20000000),
('DV033', N'Phẫu thuật Hạch', 40000000),
('DV034', N'Phẫu thuật Đại tràng', 50000000)

---Chèn DL cho BenhNhan_DichVu
go
INSERT INTO BenhNhan_DichVu(MaBN,MaDV,MaPhieuKB, MaNVYeuCau)
VALUES
     ('BN025','DV003','PKB025','NV074')
    ,('BN029','DV001','PKB029','NV091')
    ,('BN029','DV002','PKB029','NV091')
    ,('BN029','DV004','PKB029','NV091')
    ,('BN039','DV003','PKB039','NV079')
    ,('BN039','DV004','PKB039','NV079')
    ,('BN039','DV002','PKB039','NV079')
    ,('BN040','DV005','PKB040','NV095')
    ,('BN040','DV004','PKB040','NV095')
    ,('BN040','DV002','PKB040','NV095')
    ,('BN041','DV003','PKB041','NV111')
    ,('BN041','DV004','PKB041','NV111')
    ,('BN041','DV002','PKB041','NV111')
    ,('BN042','DV003','PKB042','NV063')
    ,('BN042','DV004','PKB042','NV063')
    ,('BN042','DV002','PKB042','NV063')
	,('BN047','DV003','PKB047','NV096')
	,('BN049','DV003','PKB049','NV098')
	,('BN050','DV003','PKB050','NV114')
	,('BN054','DV003','PKB054','NV066')
	,('BN080','DV003','PKB080','NV122')
	,('BN084','DV001','PKB084','NV139')
	,('BN084','DV002','PKB084','NV139')
	,('BN084','DV004','PKB084','NV139')
	,('BN094','DV003','PKB094','NV143')
	,('BN094','DV002','PKB094','NV143')
	,('BN094','DV004','PKB094','NV143')
	,('BN095','DV004','PKB095','NV163')
	,('BN095','DV002','PKB095','NV163')
	,('BN095','DV005','PKB095','NV163')
	,('BN096','DV002','PKB096','NV178')
	,('BN096','DV004','PKB096','NV178')
	,('BN096','DV003','PKB096','NV178')
	,('BN097','DV007','PKB097','NV127')
	,('BN097','DV004','PKB097','NV127')
	,('BN097','DV002','PKB097','NV127')
	,('BN102','DV003','PKB102','NV144')
	,('BN104','DV003','PKB104','NV150')
	,('BN105','DV003','PKB104','NV150')
	,('BN109','DV003','PKB109','NV149')
	,('BN134','DV003','PKB134','NV173')
	,('BN138','DV001','PKB138','NV190')
	,('BN138','DV004','PKB138','NV190')
	,('BN138','DV002','PKB138','NV190')
	,('BN148','DV003','PKB148','NV079')
	,('BN148','DV004','PKB148','NV079')
	,('BN148','DV002','PKB148','NV079')
	,('BN001','DV016','PKB001','NV051')
	,('BN002','DV016','PKB002','NV051')
	,('BN004','DV016','PKB004','NV084')
	,('BN025','DV025','PKB025','NV074')
	,('BN039','DV024','PKB039','NV079')
	,('BN041','DV028','PKB041','NV111')
	,('BN049','DV025','PKB049','NV098')
	,('BN050','DV022','PKB050','NV114')
	,('BN001','DV011','PKB001','NV051')
	,('BN002','DV011','PKB002','NV051')
	,('BN004','DV013','PKB004','NV084')
	,('BN025','DV011','PKB025','NV074')
	,('BN039','DV011','PKB039','NV079')
	,('BN041','DV011','PKB041','NV111')
	,('BN049','DV013','PKB049','NV098')
	,('BN050','DV013','PKB050','NV114')

---Phòng khám
go
INSERT INTO PhongKham(MaPhongKham, TenPhongKham, MaKhoa, LoaiPhong)
VALUES
-- Khoa Hồi sức tích cực (K1)
('PK101.1', N'Phòng Hồi sức và Chăm sóc cấp cứu 1', 'K1',N'Phòng Khám'),
('PK101.2', N'Phòng Hồi sức và Chăm sóc cấp cứu 2', 'K1',N'Phòng Khám'),
('PK102.1', N'Phòng Hồi sức tim mạch 1', 'K1',N'Phòng Khám'),
('PK102.2', N'Phòng Hồi sức tim mạch 2', 'K1',N'Phòng Khám'),
('PK103.1', N'Phòng Hồi sức nội tiết 1', 'K1',N'Phòng Khám'),
('PK103.2', N'Phòng Hồi sức nội tiết 2', 'K1',N'Phòng Khám'),
('PK104.1', N'Phòng Cấp cứu tim mạch 1', 'K1',N'Phòng Chức Năng'),
('PK104.2', N'Phòng Cấp cứu tim mạch 2', 'K1',N'Phòng Chức Năng'),

-- Khoa Nội (K2)
('PK201.1', N'Phòng Khám Nội tim mạch 1', 'K2',N'Phòng Khám'),
('PK201.2', N'Phòng Khám Nội tim mạch 2', 'K2',N'Phòng Khám'),
('PK202.1', N'Phòng Khám Nội tiêu hóa 1', 'K2',N'Phòng Khám'),
('PK202.2', N'Phòng Khám Nội tiêu hóa 2', 'K2',N'Phòng Khám'),
('PK203.1', N'Phòng Khám Nội huyết học 1', 'K2',N'Phòng Khám'),
('PK203.2', N'Phòng Khám Nội huyết học 2', 'K2',N'Phòng Khám'),
('PK204.1', N'Phòng Khám Nội tiết 1', 'K2',N'Phòng Khám'),
('PK204.2', N'Phòng Khám Nội tiết 2', 'K2',N'Phòng Khám'),
('PK205.1', N'Phòng Khám Nhi khoa 1', 'K2',N'Phòng Khám'),
('PK205.2', N'Phòng Khám Nhi khoa 2', 'K2',N'Phòng Khám'),


-- Khoa Ngoại (K3)
('PK301.1', N'Phòng Khám Hồi sức 1', 'K3',N'Phòng Khám'),
('PK301.2', N'Phòng Khám Hồi sức 2', 'K3',N'Phòng Khám'),
('PK302.1', N'Phòng Khám Ngoại tiết niệu 1', 'K3',N'Phòng Khám'),
('PK302.2', N'Phòng Khám Ngoại tiết niệu 2', 'K3',N'Phòng Khám'),
('PK303.1', N'Phòng Phẫu thuật tổng quát 1', 'K3',N'Phòng Chức Năng'),
('PK303.2', N'Phòng Phẫu thuật tổng quát 2', 'K3',N'Phòng Chức Năng'),
('PK304.1', N'Phòng Phẫu thuật tim mạch 1', 'K3',N'Phòng Chức Năng'),
('PK304.2', N'Phòng Phẫu thuật tim mạch 2', 'K3',N'Phòng Chức Năng'),
('PK305.1', N'Phòng Phẫu thuật thần kinh 1','K3',N'Phòng Chức Năng'),
('PK305.2', N'Phòng Phẫu thuật thần kinh 2','K3',N'Phòng Chức Năng'),
('PK306', N'Phòng Chụp X-quang ', 'K3',N'Phòng Chức Năng'),

-- Khoa Y Học Cộng đồng (K4)
('PK401.1', N'Phòng Khám Y Tế Công Cộng 1', 'K4',N'Phòng Khám'),
('PK401.2', N'Phòng Khám Y Tế Công Cộng 2', 'K4',N'Phòng Khám'),
('PK402.1', N'Phòng Khám Y Học Địa Phương 1', 'K4',N'Phòng Khám'),
('PK402.2', N'Phòng Khám Y Học Địa Phương 2', 'K4',N'Phòng Khám'),
('PK403', N'Phòng Xét nghiệm máu','K4',N'Phòng Chức Năng'),
('PK404', N'Phòng Xét nghiệm nước tiểu','K4',N'Phòng Chức Năng'),
('PK405', N'Phòng Xét nghiệm vi sinh','K4',N'Phòng Chức Năng'),
('PK406', N'Phòng Xét nghiệm sinh hóa','K4',N'Phòng Chức Năng'),
('PK407', N'Phòng Xét nghiệm huyết học','K4',N'Phòng Chức Năng'),
('PK408', N'Phòng Xét nghiệm miễn dịch','K4',N'Phòng Chức Năng'),
-- Khoa Nhi (K5)
('PK501', N'Phòng Khám Nhi Khoa nội tiết', 'K5',N'Phòng Khám'),
('PK502', N'Phòng Khám Nhi Khoa hô hấp', 'K5',N'Phòng Khám'),
('PK503', N'Phòng Khám Nhi Khoa tim mạch', 'K5',N'Phòng Khám'),
('PK504', N'Phòng Khám Nhi Khoa tâm thần', 'K5',N'Phòng Khám'),
('PK505', N'Phòng Cấp cứu nhi khoa', 'K5',N'Phòng Chức Năng'),

-- Khoa Phục hồi chức năng (K6)
('PK601', N'Phòng Khám PHCN Thần Kinh', 'K6',N'Phòng Khám'),
('PK602', N'Phòng Khám PHCN Vật Lý', 'K6',N'Phòng Khám'),

-- Khoa Da liễu (K7)
('PK701', N'Phòng Khám Da liễu dị ứng', 'K7',N'Phòng Khám'),
('PK702', N'Phòng Khám Da liễu nội tiết', 'K7',N'Phòng Khám'),
('PK703', N'Phòng Khám Da liễu Laser', 'K7',N'Phòng Khám'),
('PK704', N'Phòng Xét nghiệm da liễu', 'K7',N'Phòng Chức Năng'),
('PK705', N'Phòng Phẫu thuật da liễu', 'K7',N'Phòng Chức Năng'),
-- Khoa Y học Thể thao (K8)
('PK801', N'Phòng Khám Y học thể thao', 'K8',N'Phòng Khám'),
('PK802', N'Phòng Khám Y học thể thao phẫu thuật', 'K8',N'Phòng Khám'),
('PK803', N'Phòng Khám Y học thể thao nội tiết', 'K8',N'Phòng Khám'),

-- Khoa Sản (K9)
('PK901', N'Phòng Khám Sản phụ khoa', 'K9',N'Phòng Khám'),
('PK902', N'Phòng Khám Y học sinh sản', 'K9',N'Phòng Khám'),
('PK903', N'Phòng Khám Ung thư phụ khoa', 'K9',N'Phòng Khám'),
('PK904', N'Phòng Sinh', 'K9',N'Phòng chức Năng'),

-- Khoa Thần kinh học (K10)
('PK1001', N'Phòng Khám Thần kinh cận lâm sàng', 'K10',N'Phòng Khám'),
('PK1002', N'Phòng Khám Điều trị đau', 'K10',N'Phòng Khám'),
('PK1003', N'Phòng Khám Tổng hợp thần kinh', 'K10',N'Phòng Khám'),
('PK1004', N'Phòng Điện não đồ', 'K10',N'Phòng Chức Năng'),
('PK1005', N'Phòng Chụp cộng hưởng từ', 'K10',N'Phòng Chức Năng'),


-- Khoa Răng hàm mặt (K11)
('PK1101', N'Phòng Khám Nha khoa tổng quát', 'K11',N'Phòng Khám'),
('PK1102', N'Phòng Khám Răng hàm mặt Phẫu thuật', 'K11',N'Phòng Khám'),


-- Khoa Y học nội trú (K12)
('PK1201', N'Phòng Khám Hô hấp', 'K12',N'Phòng Khám'),
('PK1202', N'Phòng Khám Y học cấp cứu', 'K12',N'Phòng Khám'),
('PK1203', N'Phòng Khám Y học Hồi sức tích cực', 'K12',N'Phòng Khám'),
('PK1204', N'Phòng Xét nghiệm nội khoa', 'K12',N'Phòng Chức Năng'),

-- Khoa Ung bướu (K13)
('PK1301', N'Phòng Khám Ung thư Nội khoa', 'K13',N'Phòng Khám'),
('PK1302', N'Phòng Khám Ung thư Ngoại khoa', 'K13',N'Phòng Khám'),
('PK1303', N'Phòng Khám Ung thư Bức xạ', 'K13',N'Phòng Khám'),
('PK1304', N'Phòng Khám Hóa trị liệu', 'K13',N'Phòng Khám'),
('PK1305', N'Phòng Xét nghiệm ung bướu', 'K13',N'Phòng Chức Năng'),
('PK1306', N'Phòng Hóa trị liệu', 'K13',N'Phòng Chức Năng'),
-- Khoa Tim mạch (K14)
('PK1401', N'Phòng Khám Tim mạch Nội khoa', 'K14',N'Phòng Khám'),
('PK1402', N'Phòng Khám Tim mạch Ngoại khoa', 'K14',N'Phòng Khám'),
('PK1403', N'Phòng Khám Tim mạch Nhi khoa', 'K14',N'Phòng Khám'),
('PK1404', N'Phòng Chụp tim mạch', 'K14',N'Phòng Chức Năng'),
('PK1405', N'Phòng Cấp cứu tim mạch', 'K14',N'Phòng Chức Năng'),
-- Khoa Ngoại biên (K15)
('PK1501', N'Phòng Khám Ngoại biên Tổng quát', 'K15',N'Phòng Khám'),
('PK1502', N'Phòng Khám Ngoại biên Phẫu thuât', 'K15',N'Phòng Khám'),
('PK1503', N'Phòng Phẫu thuật ngoại biên', 'K15',N'Phòng Chức Năng'),
('PK1504', N'Phòng Xét nghiệm ngoại biên', 'K15',N'Phòng Chức Năng'),
-- Khoa Chấn thương chỉnh hình (K16)
('PK1601', N'Phòng Khám Chấn thương chỉnh hình Tổng quát', 'K16',N'Phòng Khám'),
('PK1602', N'Phòng Khám Phẫu thuật chỉnh hình', 'K16',N'Phòng Khám'),
('PK1603', N'Phòng Khám Chấn thương cột sống', 'K16',N'Phòng Khám'),
('PK1604', N'Phòng Khám Chấn thương thể thao', 'K16',N'Phòng Khám'),
('PK1605', N'Phòng Khám Chấn thương gối và cẳng chân', 'K16',N'Phòng Khám'),
('PK1606', N'Phòng Khám Chấn thương vai và cánh tay', 'K16',N'Phòng Khám'),
('PK1607', N'Phòng Khám Chấn thương chân và cổ chân', 'K16',N'Phòng Khám'),
('PK1608', N'Phòng Phẫu thuật chấn thương chỉnh hình', 'K16',N'Phòng Chức Năng'),
('PK1609', N'Phòng Vật lý trị liệu chấn thương chỉnh hình', 'K16',N'Phòng Chức Năng');

---Chèn DL cho KhamBenh
go
INSERT INTO KhamBenh(MaBN, MaPhongKham, MaNV, MaPhieuKB)
VALUES 
 ('BN001','PK101.1','NV051','PKB001')
,('BN001','PK101.1','NV051','PKB001.1')
,('BN002','PK102.1','NV067','PKB002')
,('BN002','PK102.1','NV067','PKB002.1')
,('BN003','PK103.1','NV083','PKB003')
,('BN003','PK103.1','NV083','PKB003.1')
,('BN004','PK201.1','NV084','PKB004')
,('BN004','PK201.1','NV084','PKB004.1')
,('BN005','PK202.1','NV100','PKB005')
,('BN005','PK202.1','NV100','PKB005.1')
,('BN006','PK203.1','NV052','PKB006')
,('BN006','PK203.1','NV052','PKB006.1')
,('BN007','PK204.1','NV116','PKB007')
,('BN007','PK204.1','NV116','PKB007.1')
,('BN008','PK205.1','NV068','PKB008')
,('BN008','PK205.1','NV068','PKB008.1')
,('BN009','PK301.1','NV069','PKB009')
,('BN009','PK301.1','NV069','PKB009.1')
,('BN010','PK302.1','NV085','PKB010')
,('BN010','PK302.1','NV085','PKB010.1')
,('BN011','PK303.1','NV053','PKB011')
,('BN011','PK303.1','NV053','PKB011.1')
,('BN012','PK401.1','NV054','PKB012')
,('BN012','PK401.1','NV054','PKB012.1')
,('BN013','PK402.1','NV070','PKB013')
,('BN013','PK402.1','NV070','PKB013.1')
,('BN014','PK501','NV087','PKB014')
,('BN014','PK501','NV087','PKB014.1')
,('BN015','PK502','NV103','PKB015')
,('BN015','PK502','NV103','PKB015.1')
,('BN016','PK503','NV055','PKB016')
,('BN016','PK503','NV055','PKB016.1')
,('BN017','PK504','NV072','PKB017')
,('BN017','PK504','NV072','PKB017.1')
,('BN018','PK601','NV088','PKB018')
,('BN018','PK601','NV088','PKB018.1')
,('BN019','PK602','NV071','PKB019')
,('BN019','PK602','NV071','PKB019.1')
,('BN020','PK602','NV071','PKB020')
,('BN020','PK602','NV071','PKB020.1')
,('BN021','PK702','NV089','PKB021')
,('BN021','PK702','NV089','PKB021.1')
,('BN022','PK1001','NV076','PKB022')
,('BN022','PK1001','NV076','PKB022.1')
,('BN023','PK701','NV057','PKB023')
,('BN023','PK701','NV057','PKB023.1')
,('BN024','PK801','NV058','PKB024')
,('BN024','PK801','NV058','PKB024.1')
,('BN025','PK802','NV074','PKB025')
,('BN025','PK802','NV074','PKB025.1')
,('BN026','PK803','NV090','PKB026')
,('BN026','PK803','NV090','PKB026.1')
,('BN027','PK901','NV059','PKB027')
,('BN027','PK901','NV059','PKB027.1')
,('BN028','PK902','NV075','PKB028')
,('BN028','PK902','NV075','PKB028.1')
,('BN029','PK903','NV091','PKB029')
,('BN029','PK903','NV091','PKB029.1')
,('BN030','PK1001','NV060','PKB030')
,('BN030','PK1001','NV060','PKB030.1')

,('BN031','PK1002','NV076','PKB031')
,('BN032','PK1003','NV092','PKB032')
,('BN033','PK1101','NV061','PKB033')
,('BN034','PK1102','NV077','PKB034')
,('BN035','PK1102','NV093','PKB035')
,('BN036','PK1201','NV062','PKB036')
,('BN037','PK1202','NV078','PKB037')
,('BN038','PK1202','NV094','PKB038')
,('BN039','PK1301','NV079','PKB039')
,('BN040','PK1302','NV095','PKB040')
,('BN041','PK1303','NV111','PKB041')
,('BN042','PK1304','NV063','PKB042')
,('BN043','PK1401','NV064','PKB043')
,('BN044','PK1402','NV080','PKB044')
,('BN045','PK1403','NV097','PKB045')
,('BN046','PK1501','NV081','PKB046')
,('BN047','PK1502','NV096','PKB047')
,('BN048','PK201.1','NV168','PKB048')
,('BN049','PK1601','NV098','PKB049')
,('BN050','PK1602','NV114','PKB050')
,('BN051','PK1603','NV130','PKB051')
,('BN052','PK1604','NV049','PKB052')
,('BN053','PK1605','NV050','PKB053')
,('BN054','PK1606','NV066','PKB054')
,('BN055','PK1607','NV082','PKB055')
,('BN056','PK101.1','NV099','PKB056')
,('BN057','PK102.2','NV115','PKB057')
,('BN058','PK103.1','NV131','PKB058')
,('BN059','PK201.2','NV168','PKB059')
,('BN060','PK202.1','NV183','PKB060')
,('BN061','PK203.1','NV132','PKB061')
,('BN062','PK204.1','NV198','PKB062')
,('BN063','PK205.1','NV152','PKB063')
,('BN064','PK301.1','NV117','PKB064')
,('BN065','PK502','NV169','PKB065')
,('BN066','PK303.1','NV101','PKB066')
,('BN067','PK401.1','NV086','PKB067')
,('BN068','PK402.2','NV102','PKB068')
,('BN069','PK501','NV155','PKB069')
,('BN070','PK502','NV169','PKB070')
,('BN071','PK503','NV135','PKB071')
,('BN072','PK504','NV119','PKB072')
,('BN073','PK601','NV136','PKB073')
,('BN074','PK602','NV120','PKB074')
,('BN075','PK202.1','NV198','PKB075')
,('BN076','PK701','NV105','PKB076')
,('BN077','PK702','NV121','PKB077')
,('BN078','PK803','NV138','PKB078')
,('BN079','PK801','NV106','PKB079')
,('BN080','PK802','NV122','PKB080')
,('BN081','PK803','NV138','PKB081')
,('BN082','PK901','NV107','PKB082')
,('BN083','PK902','NV123','PKB083')
,('BN084','PK903','NV139','PKB084')
,('BN085','PK1001','NV108','PKB085')
,('BN086','PK1002','NV124','PKB086')
,('BN087','PK1003','NV140','PKB087')
,('BN088','PK1101','NV109','PKB088')
,('BN089','PK1102','NV125','PKB089')
,('BN090','PK1101','NV109','PKB090')
,('BN091','PK1201','NV110','PKB091')
,('BN092','PK1202','NV126','PKB092')
,('BN093','PK1201','NV142','PKB093')
,('BN094','PK1301','NV143','PKB094')
,('BN095','PK1302','NV163','PKB095')
,('BN096','PK1303','NV178','PKB096')
,('BN097','PK1304','NV127','PKB097')
,('BN098','PK1401','NV112','PKB098')
,('BN099','PK1402','NV128','PKB099')
,('BN100','PK1403','NV145','PKB100')
,('BN101','PK1501','NV129','PKB101')
,('BN102','PK1502','NV144','PKB102')
,('BN103','PK502','NV144','PKB103')
,('BN104','PK1601','NV150','PKB104')
,('BN105','PK1602','NV197','PKB105')
,('BN106','PK1603','NV146','PKB106')
,('BN107','PK1604','NV147','PKB107')
,('BN108','PK1605','NV148','PKB108')
,('BN109','PK1606','NV149','PKB109')
,('BN110','PK101.1','NV151','PKB110')
,('BN111','PK102.1','NV166','PKB111')
,('BN112','PK103.1','NV182','PKB112')
,('BN113','PK201.2','NV084','PKB113')
,('BN114','PK202.2','NV100','PKB114')
,('BN115','PK203.1','NV199','PKB115')
,('BN116','PK204.1','NV116','PKB116')
,('BN117','PK205.2','NV200','PKB117')
,('BN118','PK301.1','NV167','PKB118')
,('BN119','PK302.2','NV184','PKB119')
,('BN120','PK202.2','NV199','PKB120')
,('BN121','PK401.2','NV118','PKB121')
,('BN122','PK402.1','NV134','PKB122')
,('BN123','PK501','NV087','PKB123')
,('BN124','PK502','NV103','PKB124')
,('BN125','PK503','NV186','PKB125')
,('BN126','PK504','NV185','PKB126')
,('BN127','PK601','NV187','PKB127')
,('BN128','PK602','NV172','PKB128')
,('BN129','PK1501','NV172','PKB129')
,('BN130','PK701','NV157','PKB130')
,('BN131','PK702','NV171','PKB131')
,('BN132','PK801','NV189','PKB132')
,('BN133','PK801','NV158','PKB133')
,('BN134','PK802','NV173','PKB134')
,('BN135','PK803','NV189','PKB135')
,('BN136','PK901','NV159','PKB136')
,('BN137','PK902','NV174','PKB137')
,('BN138','PK903','NV190','PKB138')
,('BN139','PK1001','NV160','PKB139')
,('BN140','PK1002','NV175','PKB140')
,('BN141','PK1003','NV191','PKB141')
,('BN142','PK1101','NV161','PKB142')
,('BN143','PK1102','NV176','PKB143')
,('BN144','PK1101','NV161','PKB144')
,('BN145','PK1201','NV162','PKB145')
,('BN146','PK1202','NV177','PKB146')
,('BN147','PK1202','NV193','PKB147')
,('BN148','PK1301','NV079','PKB148')
,('BN149','PK1401','NV164','PKB149')
,('BN150','PK1501','NV180','PKB150')

---Các loại phẫu thuật
go
INSERT INTO LoaiPhauThuat(MaPT, TenPT, MucDo)
VALUES
    ('PT001', N'Phẫu thuật Tim', N'Nặng'),
    ('PT002', N'Phẫu thuật Gan', N'Trung bình'),
    ('PT003', N'Phẫu thuật Mắt', N'Nhẹ'),
    ('PT004', N'Phẫu thuật Tai mũi họng', N'Trung bình'),
    ('PT006', N'Phẫu thuật Khối u', N'Nặng'),
    ('PT007', N'Phẫu thuật Cột sống', N'Nặng'),
    ('PT008', N'Phẫu thuật Lồng ngực', 'Trung bình'),
    ('PT009', N'Phẫu thuật Bụng', N'Nặng'),
    ('PT010', N'Phẫu thuật Cơ xương khớp', N'Nặng'),
    ('PT011', N'Phẫu thuật Ung thư', N'Nặng'),
    ('PT012', N'Phẫu thuật Túi mật', N'Trung bình'),
    ('PT013', N'Phẫu thuật Phổi', N'Nặng'),
    ('PT014', N'Phẫu thuật Thận', N'Nặng'),
    ('PT015', N'Phẫu thuật Hậu quả cháy nổ', N'Nặng'),
    ('PT016', N'Phẫu thuật Sửa chữa gãy xương', N'Trung bình'),
    ('PT017', N'Phẫu thuật Nội soi', N'Nhẹ'),
    ('PT018', N'Phẫu thuật Hạch', N'Trung bình'),
    ('PT019', N'Phẫu thuật Đại tràng', N'Nặng');


---Chen Bang Thuoc
go

INSERT INTO Thuoc (MaThuoc, TenThuoc, DonViTinh, XuatXu, DonGiaThuoc)
VALUES
	('TH001', 'Paracetamol', N'mg', N'Việt Nam', 5000),
	('TH002', 'Amoxicillin', N'mg', N'Mỹ', 10000),
	('TH003', 'Ibuprofen', N'mg', N'Anh', 8000),
	('TH004', 'Omeprazole', N'mg', N'Đức', 15000),
	('TH005', 'Lisinopril', N'mg', N'Pháp', 12000),
	('TH006', 'Metformin', N'mg', N'Nhật Bản', 13000),
	('TH007', 'Atorvastatin', N'mg', N'Hàn Quốc', 11000),
	('TH008', 'Simvastatin', N'mg', N'Úc', 10000),
	('TH009', 'Losartan', N'mg', N'Canada', 14000),
	('TH010', 'Amlodipine', N'mg', N'Tây Ban Nha', 16000),
	('TH011', 'Hydrochlorothiazide', N'mg', N'Đức', 17000),
	('TH012', 'Metoprolol', N'mg', N'Mỹ', 18000),
	('TH013', 'Prednisone', N'mg', N'Úc', 19000),
	('TH014', 'Levothyroxine', N'mg', N'Nhật Bản', 20000),
	('TH015', 'Azithromycin', N'mg', N'Pháp', 21000),
	('TH016', 'Citalopram', N'mg', N'Anh', 22000),
	('TH017', 'Furosemide', N'mg', N'Việt Nam', 23000),
	('TH018', 'Ciprofloxacin', N'mg', N'Hàn Quốc', 24000),
	('TH019', 'Metronidazole', N'mg', N'Mỹ', 25000),
	('TH020', 'Warfarin', N'mg', N'Đức', 26000),
	('TH021', 'Clopidogrel', N'mg', N'Canada', 27000),
	('TH022', 'Fluoxetine', N'mg', N'Tây Ban Nha', 28000),
	('TH023', 'Alprazolam', N'mg', N'Anh', 29000),
	('TH024', 'Digoxin', N'mg', N'Pháp', 30000),
	('TH025', 'Terbinafine', N'mg', N'Mỹ', 31000),
	('TH026', 'Prednisolone', N'mg', N'Úc', 32000),
	('TH027', 'Kanamycin', N'mg', N'Nhật Bản', 33000),
	('TH028', 'Sertraline', N'mg', N'Hàn Quốc', 34000),
	('TH029', 'Cetirizine', N'mg', N'Việt Nam', 35000),
	('TH030', 'Atenolol', N'mg', N'Đức', 36000),
	('TH031', 'Ramipril', N'mg', N'Mỹ', 37000),
	('TH032', 'Tamsulosin', N'mg', N'Canada', 38000),
	('TH033', 'Amitriptyline', N'mg', N'Tây Ban Nha', 39000),
	('TH034', 'Tramadol', N'mg', N'Anh', 40000),
	('TH035', 'Allopurinol', N'mg', N'Pháp', 41000),
	('TH036', 'Leuprolide ', N'mg', N'Nhật Bản', 42000),
	('TH037', 'Carvedilol', N'mg', N'Hàn Quốc', 43000),
	('TH038', 'Isoniazid', N'mg', N'Việt Nam', 44000),
	('TH039', 'Cisplatin', N'mg', N'Đức', 45000),
	('TH040', 'Colchicine', N'mg', N'Mỹ', 46000),
	('TH041', 'VitaminB3', N'mg', N'Úc', 47000),
	('TH042', 'ARBs', N'mg', N'Tây Ban Nha', 48000),
	('TH043', 'Carboplatin', N'mg', N'Canada', 49000),
	('TH044', 'Neomycin', N'mg', N'Anh', 50000),
	('TH045', 'Prednisolon', N'mg', N'Pháp', 51000),
	('TH046', 'Trastuzumab', N'mg', N'Nhật Bản', 52000),
	('TH047', 'Caspofungin', N'mg', N'Hàn Quốc', 53000),
	('TH048', 'Norfloxacin', N'mg', N'Việt Nam', 54000),
	('TH049', 'Bavencio', N'mg', N'Đức', 55000),
	('TH050', 'Prolia', N'mg', N'Mỹ', 56000),
	('TH051', 'Chlorpromazin', N'mg', N'Úc', 57000),
	('TH052', 'Escitalopram', N'mg', N'Tây Ban Nha', 58000),
	('TH053', 'Gilotrif', N'mg', N'Canada', 59000),
	('TH054', 'Lupron', N'mg', N'Anh', 60000),
	('TH055', 'Lynparza', N'mg', N'Pháp', 61000),
	('TH056', 'Beta blockers', N'mg', N'Nhật Bản', 62000),
	('TH057', 'Dexamethason', N'mg', N'Hàn Quốc', 63000),
	('TH058', 'Herceptin', N'mg', N'Việt Nam', 64000),
	('TH059', 'Micafungin', N'mg', N'Đức', 65000),
	('TH060', 'VitaminB5', N'mg', N'Mỹ', 66000),
	('TH061', 'VitaminA', N'mg', N'Úc', 67000),
	('TH062', 'Rifampin', N'mg', N'Tây Ban Nha', 68000),
	('TH063', 'Paraplatin', N'mg', N'Canada', 69000),
	('TH064', 'Cyclophosphamide', N'mg', N'Anh', 70000),
	('TH065', 'Methylprednisolon', N'mg', N'Pháp', 71000),
	('TH066', 'Herceptin', N'mg', N'Nhật Bản', 72000),
	('TH067', 'Anidulafungin', N'mg', N'Hàn Quốc', 73000),
	('TH068', 'Erythromycin', N'mg', N'Việt Nam', 74000),
	('TH069', 'Atezolizumab', N'mg', N'Đức', 75000),
	('TH070', 'Estrogen', N'mg', N'Mỹ', 76000),
	('TH071', 'Haloperidol', N'mg', N'Úc', 77000),
	('TH072', 'Aflibercept', N'mg', N'Tây Ban Nha', 78000),
	('TH073', 'Tamoxifen', N'mg', N'Canada', 79000),
	('TH074', 'Degarelix', N'mg', N'Anh', 80000),
	('TH075', 'Rucaparib', N'mg', N'Pháp', 81000),
	('TH076', 'Calcium channel blockers', N'mg', N'Nhật Bản', 82000),
	('TH077', 'Cyclosporin', N'mg', N'Hàn Quốc', 83000),
	('TH078', 'Imatinib', N'mg', N'Việt Nam', 84000),
	('TH079', 'Acyclovir', N'mg', N'Đức', 85000),
	('TH080', 'VitaminB6', N'mg', N'Mỹ', 86000),
	('TH081', 'VitaminC', N'mg', N'Úc', 87000),
	('TH082', 'Pyrazinamide', N'mg', N'Tây Ban Nha', 88000),
	('TH083', 'Gemcitabine', N'mg', N'Canada', 89000),
	('TH084', 'Cytoxan', N'mg', N'Anh', 90000),
	('TH085', 'Tacrolimus', N'mg', N'Pháp', 91000),
	('TH086', 'Gleevec', N'mg', N'Nhật Bản', 92000),
	('TH087', 'Valacyclovir ', N'mg', N'Hàn Quốc', 93000),
	('TH088', 'Clarithromycin', N'mg', N'Việt Nam', 94000),
	('TH089', 'Tecentriq', N'mg', N'Đức', 95000),
	('TH090', 'Testosterone', N'mg', N'Mỹ', 96000),
	('TH091', 'Quetiapine', N'mg', N'Úc', 97000),
	('TH092', 'Zaltrap', N'mg', N'Tây Ban Nha', 98000),
	('TH093', 'Nolvadex', N'mg', N'Canada', 99000),
	('TH094', 'Firmagon', N'mg', N'Anh', 100000),
	('TH095', 'Rubraca', N'mg', N'Pháp', 101000),
	('TH096', 'Statins', N'mg', N'Nhật Bản', 102000),
	('TH097', 'Sulfonylureas', N'mg', N'Hàn Quốc', 103000),
	('TH098', 'Rituximab', N'mg', N'Việt Nam', 104000),
	('TH099', 'Oseltamivir', N'mg', N'Đức', 105000),
	('TH100', 'VitaminB7', N'mg', N'Mỹ', 106000),
	('TH101', 'VitaminD', N'mg', N'Úc', 107000),
	('TH102', 'Ethambutol', N'mg', N'Tây Ban Nha', 108000),
	('TH103', 'Gemzar', N'mg', N'Canada', 109000),
	('TH104', 'Taxol', N'mg', N'Anh', 110000),
	('TH105', 'Coumadin', N'mg', N'Pháp', 111000),
	('TH106', 'Rituxan', N'mg', N'Nhật Bản', 112000),
	('TH107', 'Zovirax', N'mg', N'Hàn Quốc', 113000),
	('TH108', 'Anastrozole', N'mg', N'Việt Nam', 114000),
	('TH109', 'Durvalumab', N'mg', N'Đức', 115000),
	('TH110', 'Thiazolidinediones', N'mg', N'Mỹ', 116000),
	('TH111', 'Amitriptylin', N'mg', N'Úc', 117000),
	('TH112', 'Erlotinib', N'mg', N'Tây Ban Nha', 118000),
	('TH113', 'Arimidex', N'mg', N'Canada', 119000),
	('TH114', 'Abiraterone', N'mg', N'Anh', 120000),
	('TH115', 'Niraparib ', N'mg', N'Pháp', 121000),
	('TH116', 'Ezetimibe', N'mg', N'Nhật Bản', 122000),
	('TH117', 'Heparin', N'mg', N'Hàn Quốc', 123000),
	('TH118', 'Pembrolizumab', N'mg', N'Việt Nam', 124000),
	('TH119', 'Valtrex', N'mg', N'Đức', 125000),
	('TH120', 'VitaminB9', N'mg', N'Mỹ', 126000),
	('TH121', 'VitaminE', N'mg', N'Úc', 127000),
	('TH122', 'Streptomycin', N'mg', N'Tây Ban Nha', 128000),
	('TH123', 'Vinblastine', N'mg', N'Canada', 129000),
	('TH124', 'Docetaxel', N'mg', N'Anh', 130000),
	('TH125', 'Aspirin', N'mg', N'Pháp', 131000),
	('TH126', 'Keytruda', N'mg', N'Nhật Bản', 132000),
	('TH127', 'Tamiflu', N'mg',N'Hàn Quốc', 133000),
	('TH128', 'Ketoconazole', N'mg', N'Việt Nam', 134000),
	('TH129', 'Imfinzi', N'mg', N'Đức', 135000),
	('TH130', 'Inhibitors of DPP-4', N'mg', N'Mỹ', 136000),
	('TH131', 'Imipramine', N'mg', N'Úc', 137000),
	('TH132', 'Tarceva', N'mg', N'Tây Ban Nha', 138000),
	('TH133', 'Letrozole', N'mg', N'Canada', 139000),
	('TH134', 'Zytiga', N'mg', N'Anh', 140000),
	('TH135', 'Zejula', N'mg', N'Pháp', 141000),
	('TH136', 'Zetia', N'mg', N'Nhật Bản', 142000),
	('TH137', 'Ibuprofen', N'mg', N'Hàn Quốc', 143000),
	('TH138', 'Nivolumab', N'mg', N'Việt Nam', 144000),
	('TH139', 'Ribavirin', N'mg', N'Đức', 145000),
	('TH140', 'Vitamin12',N'mg', N'Mỹ', 146000),
	('TH141', 'VitaminK', N'mg', N'Úc', 147000),
	('TH142', 'Paracetamol', N'mg', N'Tây Ban Nha', 148000),
	('TH143', 'Velban', N'mg', N'Canada', 149000),
	('TH144', 'Platinol', N'mg', N'Anh', 150000),
	('TH145', 'Diclofenac', N'mg', N'Pháp', 151000),
	('TH146', 'Opdivo', N'mg', N'Nhật Bản', 152000),
	('TH147', 'Interferon', N'mg', N'Hàn Quốc', 153000),
	('TH148', 'Itraconazole', N'mg', N'Việt Nam', 154000),
	('TH149', 'Bevacizumab', N'mg', N'Đức', 155000),
	('TH150', 'dipeptidyl peptidase-4', N'mg', N'Mỹ', 156000),
	('TH151', 'Lopressor', N'mg', N'Úc', 157000),
	('TH152', 'Gefitinib', N'mg', N'Tây Ban Nha', 158000),
	('TH153', 'Femara', N'mg', N'Canada', 159000),
	('TH154', 'Abiraterone', N'mg', N'Anh', 160000),
	('TH155', 'Insulin', N'mg', N'Pháp', 161000),
	('TH156', 'Bisphosphonates', N'mg', N'Nhật Bản', 162000),
	('TH157', 'Paracetamol', N'mg', N'Hàn Quốc', 163000),
	('TH158', 'Atezolizumab', N'mg', N'Việt Nam', 164000),
	('TH159', 'Remdesivir', N'mg', N'Đức', 165000),
	('TH160', 'Fluconazole', N'mg', N'Mỹ', 166000),
	('TH161', 'VitaminB1', N'mg', N'Úc', 167000),
	('TH162', 'Amphotericin B', N'mg', N'Tây Ban Nha', 168000),
	('TH163', 'Vincristine', N'mg', N'Canada', 169000),
	('TH164', 'Docetaxel', N'mg', N'Anh', 170000),
	('TH165', 'Codein', N'mg', N'Pháp', 171000),
	('TH166', 'Tecentriq', N'mg', N'Nhật Bản', 172000),
	('TH167', 'Dilaudid', N'mg', N'Hàn Quốc', 173000),
	('TH168', 'Miconazole', N'mg', N'Việt Nam', 174000),
	('TH169', 'Avastin', N'mg', N'Đức', 175000),
	('TH170', 'Levothyroxine', N'mg', N'Mỹ', 176000),
	('TH171', 'Metoprolol', N'mg', N'Úc', 177000),
	('TH172', 'Iressa', N'mg', N'Tây Ban Nha', 178000),
	('TH173', 'Fulvestrant', N'mg', N'Canada', 179000),
	('TH174', 'Zytiga', N'mg', N'Anh', 180000),
	('TH175', 'Metformin', N'mg', N'Pháp', 181000),
	('TH176', 'Denosumab', N'mg', N'Nhật Bản', 182000),
	('TH177', 'Diazepam', N'mg', N'Hàn Quốc', 183000),
	('TH178', 'Durvalumab', N'mg', N'Việt Nam', 184000),
	('TH179', 'Chloramphenicol', N'mg', N'Đức', 185000),
	('TH180', 'Itraconazole', N'mg', N'Mỹ', 186000),
	('TH181', 'VitaminB2', N'mg', N'Úc', 187000),
	('TH182', 'Voriconazole', N'mg', N'Tây Ban Nha', 188000),
	('TH183', 'Oncovin', N'mg', N'Canada', 189000),
	('TH184', 'Taxotere', N'mg', N'Anh', 190000),
	('TH185', 'Lorazepam', N'mg', N'Pháp', 191000),
	('TH186', 'Imfinzi', N'mg', N'Nhật Bản', 192000),
	('TH187', 'Tetracycline', N'mg', N'Hàn Quốc', 193000),
	('TH188', 'Miconazole', N'mg', N'Việt Nam', 194000),
	('TH189', 'Ramucirumab', N'mg', N'Đức', 195000),
	('TH190', 'Synthroid', N'mg', N'Mỹ', 196000),
	('TH191', 'Paroxetine', N'mg', N'Úc', 197000),
	('TH192', 'Afatinib ', N'mg', N'Tây Ban Nha', 198000),
	('TH193', 'Faslodex', N'mg', N'Canada', 199000),
	('TH194', 'Olaparib', N'mg', N'Anh', 200000),
	('TH195', 'Inhibitors of ACE', N'mg', N'Pháp', 201000),
	('TH196', 'Prolia', N'mg', N'Nhật Bản', 202000),
	('TH197', 'Metoprolol', N'mg', N'Hàn Quốc', 203000),
	('TH198', 'Midazolam', N'mg', N'Việt Nam', 204000),
	('TH199', 'Gentamicin', N'mg', N'Đức', 205000),
	('TH200', 'Aspirin', N'mg', N'Pháp', 206000);

--phòng bệnh
go
INSERT INTO PhongBenh (MaPhong, TenPhong, Loai, MaKhoa) 
VALUES 
('P001', N'Phòng VIP HSTC 1 ', N'Phòng Vip 1 Giường','K1'),
('P002', N'Phòng VIP HSTC 2', N'Phòng Vip 1 Giường','K1'),
('P003', N'Phòng VIP HSTC 3', N'Phòng Vip 1 Giường','K1'),
('P004', N'Phòng VIP HSTC 4', N'Phòng Vip 1 Giường','K1'),
('P005', N'Phòng VIP HSTC 5', N'Phòng Vip 1 Giường','K1'),
('P006', N'Phòng Thường HSTC 1.2', N'Phòng 2 Giường','K1'),
('P007', N'Phòng Thường HSTC 2.2', N'Phòng 2 Giường','K1'),
('P008', N'Phòng Thường HSTC 3.2', N'Phòng 2 Giường','K1'),
('P009', N'Phòng Thường HSTC 4.2', N'Phòng 2 Giường','K1'),
('P010', N'Phòng Thường HSTC 5.2', N'Phòng 2 Giường','K1'),
('P011', N'Phòng Thường HSTC 6.2', N'Phòng 2 Giường','K1'),
('P012', N'Phòng Thường HSTC 7.2', N'Phòng 2 Giường','K1'),
('P013', N'Phòng Thường HSTC 8.2', N'Phòng 2 Giường','K1'),
('P014', N'Phòng Thường HSTC 1.3', N'Phòng 3 Giường','K1'),
('P015', N'Phòng Thường HSTC 2.3', N'Phòng 3 Giường','K1'),
('P016', N'Phòng Thường HSTC 3.3', N'Phòng 3 Giường','K1'),
('P017', N'Phòng Thường HSTC 4.3', N'Phòng 3 Giường','K1'),
('P018', N'Phòng Thường HSTC 5.3', N'Phòng 3 Giường','K1'),
('P019', N'Phòng Thường HSTC 1.5', N'Phòng 5 Giường','K1'),
('P020', N'Phòng Thường HSTC 2.5', N'Phòng 5 Giường','K1'),
('P021', N'Phòng Thường HSTC 3.5', N'Phòng 5 Giường','K1'),
('P022', N'Phòng Thường HSTC 4.5', N'Phòng 5 Giường','K1'),
('P023', N'Phòng Thường HSTC 1.7', N'Phòng 7 Giường','K1'),
('P024', N'Phòng Thường HSTC 2.7', N'Phòng 7 Giường','K1'),
('P025', N'Phòng Thường HSTC 3.7', N'Phòng 7 Giường','K1'),

('P026', N'Phòng VIP N1 ', N'Phòng Vip 1 Giường','K2'),
('P027', N'Phòng VIP N2', N'Phòng Vip 1 Giường','K2'),
('P028', N'Phòng VIP N3', N'Phòng Vip 1 Giường','K2'),
('P029', N'Phòng VIP N4', N'Phòng Vip 1 Giường','K2'),
('P030', N'Phòng VIP N5', N'Phòng Vip 1 Giường','K2'),
('P031', N'Phòng Thường Noi 1.2', N'Phòng 2 Giường','K2'),
('P032', N'Phòng Thường Noi 2.2', N'Phòng 2 Giường','K2'),
('P033', N'Phòng Thường Noi 3.2', N'Phòng 2 Giường','K2'),
('P034', N'Phòng Thường Noi 4.2', N'Phòng 2 Giường','K2'),
('P035', N'Phòng Thường Noi 5.2', N'Phòng 2 Giường','K2'),
('P036', N'Phòng Thường Noi 6.2', N'Phòng 2 Giường','K2'),
('P037', N'Phòng Thường Noi 7.2', N'Phòng 2 Giường','K2'),
('P038', N'Phòng Thường Noi 8.2', N'Phòng 2 Giường','K2'),
('P039', N'Phòng Thường Noi 1.3', N'Phòng 3 Giường','K2'),
('P040', N'Phòng Thường Noi 2.3', N'Phòng 3 Giường','K2'),
('P041', N'Phòng Thường Noi 3.3', N'Phòng 3 Giường','K2'),
('P042', N'Phòng Thường Noi 4.3', N'Phòng 3 Giường','K2'),
('P043', N'Phòng Thường Noi 5.3', N'Phòng 3 Giường','K2'),
('P044', N'Phòng Thường Noi 1.5', N'Phòng 5 Giường','K2'),
('P045', N'Phòng Thường Noi 2.5', N'Phòng 5 Giường','K2'),
('P046', N'Phòng Thường Noi 3.5', N'Phòng 5 Giường','K2'),
('P047', N'Phòng Thường Noi 4.5', N'Phòng 5 Giường','K2'),
('P048', N'Phòng Thường Noi 1.7', N'Phòng 7 Giường','K2'),
('P049', N'Phòng Thường Noi 2.7', N'Phòng 7 Giường','K2'),
('P050', N'Phòng Thường Noi 3.7', N'Phòng 7 Giường','K2'),

('P051', N'Phòng VIP Ngoai 1 ', N'Phòng Vip 1 Giường','K3'),
('P052', N'Phòng VIP Ngoai 2', N'Phòng Vip 1 Giường','K3'),
('P053', N'Phòng VIP Ngoai 3', N'Phòng Vip 1 Giường','K3'),
('P054', N'Phòng VIP Ngoai 4', N'Phòng Vip 1 Giường','K3'),
('P055', N'Phòng VIP Ngoai 5', N'Phòng Vip 1 Giường','K3'),
('P056', N'Phòng Thường Ngoai 1.2', N'Phòng 2 Giường','K3'),
('P057', N'Phòng Thường Ngoai 2.2', N'Phòng 2 Giường','K3'),
('P058', N'Phòng Thường Ngoai 3.2', N'Phòng 2 Giường','K3'),
('P059', N'Phòng Thường Ngoai 4.2', N'Phòng 2 Giường','K3'),
('P060', N'Phòng Thường Ngoai 5.2', N'Phòng 2 Giường','K3'),
('P061', N'Phòng Thường Ngoai 6.2', N'Phòng 2 Giường','K3'),
('P062', N'Phòng Thường Ngoai 7.2', N'Phòng 2 Giường','K3'),
('P063', N'Phòng Thường Ngoai 8.2', N'Phòng 2 Giường','K3'),
('P064', N'Phòng Thường Ngoai 1.3', N'Phòng 3 Giường','K3'),
('P065', N'Phòng Thường Ngoai 2.3', N'Phòng 3 Giường','K3'),
('P066', N'Phòng Thường Ngoai 3.3', N'Phòng 3 Giường','K3'),
('P067', N'Phòng Thường Ngoai 4.3', N'Phòng 3 Giường','K3'),
('P068', N'Phòng Thường Ngoai 5.3', N'Phòng 3 Giường','K3'),
('P069', N'Phòng Thường Ngoai 1.5', N'Phòng 5 Giường','K3'),
('P070', N'Phòng Thường Ngoai 2.5', N'Phòng 5 Giường','K3'),
('P071', N'Phòng Thường Ngoai 3.5', N'Phòng 5 Giường','K3'),
('P072', N'Phòng Thường Ngoai 4.5', N'Phòng 5 Giường','K3'),
('P073', N'Phòng Thường Ngoai 1.7', N'Phòng 7 Giường','K3'),
('P074', N'Phòng Thường Ngoai 2.7', N'Phòng 7 Giường','K3'),
('P075', N'Phòng Thường Ngoai 3.7', N'Phòng 7 Giường','K3'),

('P076', N'Phòng VIP YHCD 1 ', N'Phòng Vip 1 Giường','K4'),
('P077', N'Phòng VIP YHCD 2', N'Phòng Vip 1 Giường','K4'),
('P078', N'Phòng Thường YHCD 1.2', N'Phòng 2 Giường','K4'),
('P079', N'Phòng Thường YHCD 2.2', N'Phòng 2 Giường','K4'),
('P080', N'Phòng Thường YHCD 3.2', N'Phòng 2 Giường','K4'),
('P081', N'Phòng Thường YHCD 4.2', N'Phòng 2 Giường','K4'),
('P082', N'Phòng Thường YHCD 1.3', N'Phòng 3 Giường','K4'),
('P083', N'Phòng Thường YHCD 2.3', N'Phòng 3 Giường','K4'),
('P084', N'Phòng Thường YHCD 3.3', N'Phòng 3 Giường','K4'),
('P085', N'Phòng Thường YHCD 1.5', N'Phòng 5 Giường','K4'),
('P086', N'Phòng Thường YHCD 2.5', N'Phòng 5 Giường','K4'),
('P087', N'Phòng Thường YHCD 3.5', N'Phòng 5 Giường','K4'),
('P088', N'Phòng Thường YHCD 1.7', N'Phòng 7 Giường','K4'),
('P089', N'Phòng Thường YHCD 2.7', N'Phòng 7 Giường','K4'),
('P090', N'Phòng Thường YHCD 3.7', N'Phòng 7 Giường','K4'),

('P091', N'Phòng VIP Nhi 1 ', N'Phòng Vip 1 Giường','K5'),
('P092', N'Phòng VIP Nhi 2', N'Phòng Vip 1 Giường','K5'),
('P093', N'Phòng VIP Nhi 3', N'Phòng Vip 1 Giường','K5'),
('P094', N'Phòng VIP Nhi 4', N'Phòng Vip 1 Giường','K5'),
('P095', N'Phòng VIP Nhi 5', N'Phòng Vip 1 Giường','K5'),
('P096', N'Phòng Thường Nhi 1.2', N'Phòng 2 Giường','K5'),
('P097', N'Phòng Thường Nhi 2.2', N'Phòng 2 Giường','K5'),
('P098', N'Phòng Thường Nhi 3.2', N'Phòng 2 Giường','K5'),
('P099', N'Phòng Thường Nhi 4.2', N'Phòng 2 Giường','K5'),
('P100', N'Phòng Thường Nhi 5.2', N'Phòng 2 Giường','K5'),
('P101', N'Phòng Thường Nhi 6.2', N'Phòng 2 Giường','K5'),
('P102', N'Phòng Thường Nhi 7.2', N'Phòng 2 Giường','K5'),
('P103', N'Phòng Thường Nhi 8.2', N'Phòng 2 Giường','K5'),
('P104', N'Phòng Thường Nhi 1.3', N'Phòng 3 Giường','K5'),
('P105', N'Phòng Thường Nhi 2.3', N'Phòng 3 Giường','K5'),
('P106', N'Phòng Thường Nhi 3.3', N'Phòng 3 Giường','K5'),
('P107', N'Phòng Thường Nhi 4.3', N'Phòng 3 Giường','K5'),
('P108', N'Phòng Thường Nhi 5.3', N'Phòng 3 Giường','K5'),
('P109', N'Phòng Thường Nhi 1.5', N'Phòng 5 Giường','K5'),
('P110', N'Phòng Thường Nhi 2.5', N'Phòng 5 Giường','K5'),
('P111', N'Phòng Thường Nhi 3.5', N'Phòng 5 Giường','K5'),
('P112', N'Phòng Thường Nhi 4.5', N'Phòng 5 Giường','K5'),
('P113', N'Phòng Thường Nhi 1.7', N'Phòng 7 Giường','K5'),
('P114', N'Phòng Thường Nhi 2.7', N'Phòng 7 Giường','K5'),
('P115', N'Phòng Thường Nhi 3.7', N'Phòng 7 Giường','K5'),

('P116', N'Phòng VIP PHCN 1 ', N'Phòng Vip 1 Giường','K6'),
('P117', N'Phòng VIP PHCN 2', N'Phòng Vip 1 Giường','K6'),
('P118', N'Phòng VIP PHCN 3', N'Phòng Vip 1 Giường','K6'),
('P119', N'Phòng VIP PHCN 4', N'Phòng Vip 1 Giường','K6'),
('P120', N'Phòng VIP PHCN 5', N'Phòng Vip 1 Giường','K6'),
('P121', N'Phòng Thường PHCN 1.2', N'Phòng 2 Giường','K6'),
('P122', N'Phòng Thường PHCN 2.2', N'Phòng 2 Giường','K6'),
('P123', N'Phòng Thường PHCN 3.2', N'Phòng 2 Giường','K6'),
('P124', N'Phòng Thường PHCN 4.2', N'Phòng 2 Giường','K6'),
('P125', N'Phòng Thường PHCN 5.2', N'Phòng 2 Giường','K6'),
('P126', N'Phòng Thường PHCN 6.2', N'Phòng 2 Giường','K6'),
('P127', N'Phòng Thường PHCN 7.2', N'Phòng 2 Giường','K6'),
('P128', N'Phòng Thường PHCN 8.2', N'Phòng 2 Giường','K6'),
('P129', N'Phòng Thường PHCN 1.3', N'Phòng 3 Giường','K6'),
('P130', N'Phòng Thường PHCN 2.3', N'Phòng 3 Giường','K6'),
('P131', N'Phòng Thường PHCN 3.3', N'Phòng 3 Giường','K6'),
('P132', N'Phòng Thường PHCN 4.3', N'Phòng 3 Giường','K6'),
('P133', N'Phòng Thường PHCN 5.3', N'Phòng 3 Giường','K6'),
('P134', N'Phòng Thường PHCN 1.5', N'Phòng 5 Giường','K6'),
('P135', N'Phòng Thường PHCN 2.5', N'Phòng 5 Giường','K6'),
('P136', N'Phòng Thường PHCN 3.5', N'Phòng 5 Giường','K6'),
('P137', N'Phòng Thường PHCN 4.5', N'Phòng 5 Giường','K6'),
('P138', N'Phòng Thường PHCN 1.7', N'Phòng 7 Giường','K6'),
('P139', N'Phòng Thường PHCN 2.7', N'Phòng 7 Giường','K6'),
('P140', N'Phòng Thường PHCN 3.7', N'Phòng 7 Giường','K6'),

('P141', N'Phòng VIP DL 1 ', N'Phòng Vip 1 Giường','K7'),
('P142', N'Phòng VIP DL 2', N'Phòng Vip 1 Giường','K7'),
('P143', N'Phòng Thường DL 1.2', N'Phòng 2 Giường','K7'),
('P144', N'Phòng Thường DL 2.2', N'Phòng 2 Giường','K7'),
('P145', N'Phòng Thường DL 3.2', N'Phòng 2 Giường','K7'),
('P146', N'Phòng Thường DL 1.3', N'Phòng 3 Giường','K7'),
('P147', N'Phòng Thường DL 2.3', N'Phòng 3 Giường','K7'),
('P148', N'Phòng Thường DL 3.3', N'Phòng 3 Giường','K7'),
('P149', N'Phòng Thường DL 1.5', N'Phòng 5 Giường','K7'),
('P150', N'Phòng Thường DL 2.5', N'Phòng 5 Giường','K7'),
('P151', N'Phòng Thường DL 1.7', N'Phòng 7 Giường','K7'),
('P152', N'Phòng Thường DL 2.7', N'Phòng 7 Giường','K7'),

('P153', N'Phòng VIP YHTT 1 ', N'Phòng Vip 1 Giường','K8'),
('P154', N'Phòng VIP YHTT 2', N'Phòng Vip 1 Giường','K8'),
('P155', N'Phòng Thường YHTT 1.2', N'Phòng 2 Giường','K8'),
('P156', N'Phòng Thường YHTT 2.2', N'Phòng 2 Giường','K8'),
('P157', N'Phòng Thường YHTT 3.2', N'Phòng 2 Giường','K8'),
('P158', N'Phòng Thường YHTT 1.3', N'Phòng 3 Giường','K8'),
('P159', N'Phòng Thường YHTT 2.3', N'Phòng 3 Giường','K8'),
('P160', N'Phòng Thường YHTT 3.3', N'Phòng 3 Giường','K8'),
('P161', N'Phòng Thường YHTT 1.5', N'Phòng 5 Giường','K8'),
('P162', N'Phòng Thường YHTT 2.5', N'Phòng 5 Giường','K8'),
('P163', N'Phòng Thường YHTT 1.7', N'Phòng 7 Giường','K8'),
('P164', N'Phòng Thường YHTT 2.7', N'Phòng 7 Giường','K8'),

('P165', N'Phòng VIP San 1 ', N'Phòng Vip 1 Giường','K9'),
('P166', N'Phòng VIP San 2', N'Phòng Vip 1 Giường','K9'),
('P167', N'Phòng Thường San 1.2', N'Phòng 2 Giường','K9'),
('P168', N'Phòng Thường San 2.2', N'Phòng 2 Giường','K9'),
('P169', N'Phòng Thường San 3.2', N'Phòng 2 Giường','K9'),
('P170', N'Phòng Thường San 1.3', N'Phòng 3 Giường','K9'),
('P171', N'Phòng Thường San 2.3', N'Phòng 3 Giường','K9'),
('P172', N'Phòng Thường San 3.3', N'Phòng 3 Giường','K9'),
('P173', N'Phòng Thường San 1.5', N'Phòng 5 Giường','K9'),
('P174', N'Phòng Thường San 2.5', N'Phòng 5 Giường','K9'),
('P175', N'Phòng Thường San 1.7', N'Phòng 7 Giường','K9'),
('P176', N'Phòng Thường San 2.7', N'Phòng 7 Giường','K9'),

('P177', N'Phòng VIP TKH 1 ', N'Phòng Vip 1 Giường','K10'),
('P178', N'Phòng VIP TKH 2', N'Phòng Vip 1 Giường','K10'),
('P179', N'Phòng Thường TKH 1.2', N'Phòng 2 Giường','K10'),
('P180', N'Phòng Thường TKH 2.2', N'Phòng 2 Giường','K10'),
('P181', N'Phòng Thường TKH 3.2', N'Phòng 2 Giường','K10'),
('P182', N'Phòng Thường TKH 1.3', N'Phòng 3 Giường','K10'),
('P183', N'Phòng Thường TKH 2.3', N'Phòng 3 Giường','K10'),
('P184', N'Phòng Thường TKH 3.3', N'Phòng 3 Giường','K10'),
('P185', N'Phòng Thường TKH 1.5', N'Phòng 5 Giường','K10'),
('P186', N'Phòng Thường TKH 2.5', N'Phòng 5 Giường','K10'),
('P187', N'Phòng Thường TKH 1.7', N'Phòng 7 Giường','K10'),
('P188', N'Phòng Thường TKH 2.7', N'Phòng 7 Giường','K10'),

('P189', N'Phòng VIP RHM 1 ', N'Phòng Vip 1 Giường','K11'),
('P190', N'Phòng VIP RHM 2', N'Phòng Vip 1 Giường','K11'),
('P191', N'Phòng Thường RHM 1.2', N'Phòng 2 Giường','K11'),
('P192', N'Phòng Thường RHM 2.2', N'Phòng 2 Giường','K11'),
('P193', N'Phòng Thường RHM 3.2', N'Phòng 2 Giường','K11'),
('P194', N'Phòng Thường RHM 1.3', N'Phòng 3 Giường','K11'),
('P195', N'Phòng Thường RHM 2.3', N'Phòng 3 Giường','K11'),
('P196', N'Phòng Thường RHM 3.3', N'Phòng 3 Giường','K11'),
('P197', N'Phòng Thường RHM 1.5', N'Phòng 5 Giường','K11'),
('P198', N'Phòng Thường RHM 2.5', N'Phòng 5 Giường','K11'),
('P199', N'Phòng Thường RHM 1.7', N'Phòng 7 Giường','K11'),
('P200', N'Phòng Thường RHM 2.7', N'Phòng 7 Giường','K11'),

('P201', N'Phòng VIP YHNT 1 ', N'Phòng Vip 1 Giường','K12'),
('P202', N'Phòng VIP YHNT 2', N'Phòng Vip 1 Giường','K12'),
('P203', N'Phòng Thường YHNT 1.2', N'Phòng 2 Giường','K12'),
('P204', N'Phòng Thường YHNT 2.2', N'Phòng 2 Giường','K12'),
('P205', N'Phòng Thường YHNT 3.2', N'Phòng 2 Giường','K12'),
('P206', N'Phòng Thường YHNT 1.3', N'Phòng 3 Giường','K12'),
('P207', N'Phòng Thường YHNT 2.3', N'Phòng 3 Giường','K12'),
('P208', N'Phòng Thường YHNT 3.3', N'Phòng 3 Giường','K12'),
('P209', N'Phòng Thường YHNT 1.5', N'Phòng 5 Giường','K12'),
('P210', N'Phòng Thường YHNT 2.5', N'Phòng 5 Giường','K12'),
('P211', N'Phòng Thường YHNT 1.7', N'Phòng 7 Giường','K12'),
('P212', N'Phòng Thường YHNT 2.7', N'Phòng 7 Giường','K12'),

('P213', N'Phòng VIP UB 1 ', N'Phòng Vip 1 Giường','K13'),
('P214', N'Phòng VIP UB 2', N'Phòng Vip 1 Giường','K13'),
('P215', N'Phòng Thường UB 1.2', N'Phòng 2 Giường','K13'),
('P216', N'Phòng Thường UB 2.2', N'Phòng 2 Giường','K13'),
('P217', N'Phòng Thường UB 3.2', N'Phòng 2 Giường','K13'),
('P218', N'Phòng Thường UB 1.3', N'Phòng 3 Giường','K13'),
('P219', N'Phòng Thường UB 2.3', N'Phòng 3 Giường','K13'),
('P220', N'Phòng Thường UB 3.3', N'Phòng 3 Giường','K13'),
('P221', N'Phòng Thường UB 1.5', N'Phòng 5 Giường','K13'),
('P222', N'Phòng Thường UB 2.5', N'Phòng 5 Giường','K13'),
('P223', N'Phòng Thường UB 1.7', N'Phòng 7 Giường','K13'),
('P224', N'Phòng Thường UB 2.7', N'Phòng 7 Giường','K13'),

('P225', N'Phòng VIP TM 1 ', N'Phòng Vip 1 Giường','K14'),
('P226', N'Phòng VIP TM 2', N'Phòng Vip 1 Giường','K14'),
('P227', N'Phòng Thường TM 1.2', N'Phòng 2 Giường','K14'),
('P228', N'Phòng Thường TM 2.2', N'Phòng 2 Giường','K14'),
('P229', N'Phòng Thường TM 3.2', N'Phòng 2 Giường','K14'),
('P230', N'Phòng Thường TM 1.3', N'Phòng 3 Giường','K14'),
('P231', N'Phòng Thường TM 2.3', N'Phòng 3 Giường','K14'),
('P232', N'Phòng Thường TM 3.3', N'Phòng 3 Giường','K14'),
('P233', N'Phòng Thường TM 1.5', N'Phòng 5 Giường','K14'),
('P234', N'Phòng Thường TM 2.5', N'Phòng 5 Giường','K14'),
('P235', N'Phòng Thường TM 1.7', N'Phòng 7 Giường','K14'),
('P236', N'Phòng Thường TM 2.7', N'Phòng 7 Giường','K14'),

('P237', N'Phòng VIP NB 1 ', N'Phòng Vip 1 Giường','K15'),
('P238', N'Phòng VIP NB 2', N'Phòng Vip 1 Giường','K15'),
('P239', N'Phòng Thường NB 1.2', N'Phòng 2 Giường','K15'),
('P240', N'Phòng Thường NB 2.2', N'Phòng 2 Giường','K15'),
('P241', N'Phòng Thường NB 3.2', N'Phòng 2 Giường','K15'),
('P242', N'Phòng Thường NB 1.3', N'Phòng 3 Giường','K15'),
('P243', N'Phòng Thường NB 2.3', N'Phòng 3 Giường','K15'),
('P244', N'Phòng Thường NB 3.3', N'Phòng 3 Giường','K15'),
('P245', N'Phòng Thường NB 1.5', N'Phòng 5 Giường','K15'),
('P246', N'Phòng Thường NB 2.5', N'Phòng 5 Giường','K15'),
('P247', N'Phòng Thường NB 1.7', N'Phòng 7 Giường','K15'),
('P248', N'Phòng Thường NB 2.7', N'Phòng 7 Giường','K15'),

('P249', N'Phòng VIP CTCH 1 ', N'Phòng Vip 1 Giường','K16'),
('P250', N'Phòng VIP CTCH 2', N'Phòng Vip 1 Giường','K16'),
('P251', N'Phòng VIP CTCH 3', N'Phòng Vip 1 Giường','K16'),
('P252', N'Phòng VIP CTCH 4', N'Phòng Vip 1 Giường','K16'),
('P253', N'Phòng VIP CTCH 5', N'Phòng Vip 1 Giường','K16'),
('P254', N'Phòng Thường CTCH 1.2', N'Phòng 2 Giường','K16'),
('P255', N'Phòng Thường CTCH 2.2', N'Phòng 2 Giường','K16'),
('P256', N'Phòng Thường CTCH 3.2', N'Phòng 2 Giường','K16'),
('P257', N'Phòng Thường CTCH 4.2', N'Phòng 2 Giường','K16'),
('P258', N'Phòng Thường CTCH 5.2', N'Phòng 2 Giường','K16'),
('P259', N'Phòng Thường CTCH 6.2', N'Phòng 2 Giường','K16'),
('P260', N'Phòng Thường CTCH 1.3', N'Phòng 3 Giường','K16'),
('P261', N'Phòng Thường CTCH 2.3', N'Phòng 3 Giường','K16'),
('P262', N'Phòng Thường CTCH 3.3', N'Phòng 3 Giường','K16'),
('P263', N'Phòng Thường CTCH 4.3', N'Phòng 3 Giường','K16'),
('P264', N'Phòng Thường CTCH 1.5', N'Phòng 5 Giường','K16'),
('P265', N'Phòng Thường CTCH 2.5', N'Phòng 5 Giường','K16'),
('P266', N'Phòng Thường CTCH 3.5', N'Phòng 5 Giường','K16'),
('P267', N'Phòng Thường CTCH 4.5', N'Phòng 5 Giường','K16'),
('P268', N'Phòng Thường CTCH 1.7', N'Phòng 7 Giường','K16'),
('P269', N'Phòng Thường CTCH 2.7', N'Phòng 7 Giường','K16'),
('P270', N'Phòng Thường CTCH 3.7', N'Phòng 7 Giường','K16')

--giường bệnh
go
INSERT INTO GiuongBenh(MaGiuong, SoGiuong, MaPhong)
VALUES
    ('V001','G1','P001')
   ,('V002','G1','P002')
   ,('V003','G1','P003')
   ,('V004','G1','P004')
   ,('V005','G1','P005')

   ,('T001','G1','P006')
   ,('T002','G2','P006')
   ,('T003','G1','P007')
   ,('T004','G2','P007')
   ,('T005','G1','P008')
   ,('T006','G2','P008')
   ,('T007','G1','P009')
   ,('T008','G2','P009')
   ,('T009','G1','P010')
   ,('T010','G2','P010')
   ,('T011','G1','P011')
   ,('T012','G2','P011')
   ,('T013','G1','P012')
   ,('T014','G2','P012')
   ,('T015','G1','P013')
   ,('T016','G2','P013')

   ,('T017','G1','P014')
   ,('T018','G2','P014')
   ,('T019','G3','P014')
   ,('T020','G1','P015')
   ,('T021','G2','P015')
   ,('T022','G3','P015')
   ,('T023','G1','P016')
   ,('T024','G2','P016')
   ,('T025','G3','P016')
   ,('T026','G1','P017')
   ,('T027','G2','P017')
   ,('T028','G3','P017')
   ,('T029','G1','P018')
   ,('T030','G2','P018')
   ,('T031','G3','P018')

   ,('T829','G1','P019')
   ,('T032','G2','P019')
   ,('T033','G3','P019')
   ,('T034','G4','P019')
   ,('T035','G5','P019')
   ,('T036','G1','P020')
   ,('T037','G2','P020')
   ,('T038','G3','P020')
   ,('T039','G4','P020')
   ,('T040','G5','P020')
   ,('T041','G1','P021')
   ,('T042','G2','P021')
   ,('T043','G3','P021')
   ,('T044','G4','P021')
   ,('T045','G5','P021')
   ,('T046','G1','P022')
   ,('T047','G2','P022')
   ,('T048','G3','P022')
   ,('T049','G4','P022')
   ,('T050','G5','P022')

   ,('T051','G1','P023')
   ,('T052','G2','P023')
   ,('T053','G3','P023')
   ,('T054','G4','P023')
   ,('T055','G5','P023')
   ,('T056','G6','P023')
   ,('T057','G7','P023')
   ,('T058','G1','P024')
   ,('T059','G2','P024')
   ,('T060','G3','P024')
   ,('T061','G4','P024')
   ,('T062','G5','P024')
   ,('T063','G6','P024')
   ,('T064','G7','P024')
   ,('T065','G1','P025')
   ,('T066','G2','P025')
   ,('T067','G3','P025')
   ,('T068','G4','P025')
   ,('T069','G5','P025')
   ,('T070','G6','P025')
   ,('T071','G7','P025')

   ,('V006','G1','P026')
   ,('V007','G1','P027')
   ,('V008','G1','P028')
   ,('V009','G1','P029')
   ,('V010','G1','P030')

   ,('T072','G1','P031')
   ,('T073','G2','P031')
   ,('T074','G1','P032')
   ,('T075','G2','P032')
   ,('T076','G1','P033')
   ,('T077','G2','P033')
   ,('T078','G1','P034')
   ,('T079','G2','P034')
   ,('T080','G1','P035')
   ,('T081','G2','P035')
   ,('T082','G1','P036')
   ,('T083','G2','P036')
   ,('T084','G1','P037')
   ,('T085','G2','P037')
   ,('T086','G1','P038')
   ,('T087','G2','P038')

   ,('T088','G1','P039')
   ,('T089','G2','P039')
   ,('T090','G3','P039')
   ,('T091','G1','P040')
   ,('T092','G2','P040')
   ,('T093','G3','P040')
   ,('T094','G1','P041')
   ,('T095','G2','P041')
   ,('T096','G3','P041')
   ,('T097','G1','P042')
   ,('T098','G2','P042')
   ,('T099','G3','P042')
   ,('T100','G1','P043')
   ,('T101','G2','P043')
   ,('T102','G3','P043')

   ,('T103','G1','P044')
   ,('T104','G2','P044')
   ,('T105','G3','P044')
   ,('T106','G4','P044')
   ,('T107','G5','P044')
   ,('T108','G1','P045')
   ,('T109','G2','P045')
   ,('T110','G3','P045')
   ,('T111','G4','P045')
   ,('T112','G5','P045')
   ,('T113','G1','P046')
   ,('T114','G2','P046')
   ,('T115','G3','P046')
   ,('T116','G4','P046')
   ,('T117','G5','P046')
   ,('T118','G1','P047')
   ,('T119','G2','P047')
   ,('T120','G3','P047')
   ,('T121','G4','P047')
   ,('T122','G5','P047')

   ,('T123','G1','P048')
   ,('T124','G2','P048')
   ,('T125','G3','P048')
   ,('T126','G4','P048')
   ,('T127','G5','P048')
   ,('T128','G6','P048')
   ,('T129','G7','P048')
   ,('T130','G1','P049')
   ,('T131','G2','P049')
   ,('T132','G3','P049')
   ,('T133','G4','P049')
   ,('T134','G5','P049')
   ,('T135','G6','P049')
   ,('T136','G7','P049')
   ,('T137','G1','P050')
   ,('T138','G2','P050')
   ,('T139','G3','P050')
   ,('T140','G4','P050')
   ,('T141','G5','P050')
   ,('T142','G6','P050')
   ,('T143','G7','P050')

   ,('V011','G1','P051')
   ,('V012','G1','P052')
   ,('V013','G1','P053')
   ,('V014','G1','P054')
   ,('V015','G1','P055')

   ,('T144','G1','P056')
   ,('T145','G2','P056')
   ,('T146','G1','P057')
   ,('T147','G2','P057')
   ,('T148','G1','P058')
   ,('T149','G2','P058')
   ,('T150','G1','P059')
   ,('T151','G2','P059')
   ,('T152','G1','P060')
   ,('T153','G2','P060')
   ,('T154','G1','P061')
   ,('T155','G2','P061')
   ,('T156','G1','P062')
   ,('T157','G2','P062')
   ,('T158','G1','P063')
   ,('T159','G2','P063')

   ,('T160','G1','P064')
   ,('T161','G2','P064')
   ,('T162','G3','P064')
   ,('T163','G1','P065')
   ,('T164','G2','P065')
   ,('T165','G3','P065')
   ,('T166','G1','P066')
   ,('T167','G2','P066')
   ,('T168','G3','P066')
   ,('T169','G1','P067')
   ,('T170','G2','P067')
   ,('T171','G3','P067')
   ,('T172','G1','P068')
   ,('T173','G2','P068')
   ,('T174','G3','P068')

   ,('T175','G1','P069')
   ,('T176','G2','P069')
   ,('T177','G3','P069')
   ,('T178','G4','P069')
   ,('T179','G5','P069')
   ,('T180','G1','P070')
   ,('T181','G2','P070')
   ,('T182','G3','P070')
   ,('T183','G4','P070')
   ,('T184','G5','P070')
   ,('T185','G1','P071')
   ,('T186','G2','P071')
   ,('T187','G3','P071')
   ,('T188','G4','P071')
   ,('T189','G5','P071')
   ,('T190','G1','P072')
   ,('T191','G2','P072')
   ,('T192','G3','P072')
   ,('T193','G4','P072')
   ,('T194','G5','P072')

   ,('T195','G1','P073')
   ,('T196','G2','P073')
   ,('T197','G3','P073')
   ,('T198','G4','P073')
   ,('T199','G5','P073')
   ,('T200','G6','P073')
   ,('T201','G7','P073')
   ,('T202','G1','P074')
   ,('T203','G2','P074')
   ,('T204','G3','P074')
   ,('T205','G4','P074')
   ,('T206','G5','P074')
   ,('T207','G6','P074')
   ,('T208','G7','P074')
   ,('T209','G1','P075')
   ,('T210','G2','P075')
   ,('T211','G3','P075')
   ,('T212','G4','P075')
   ,('T213','G5','P075')
   ,('T214','G6','P075')
   ,('T215','G7','P075')

   ,('V016','G1','P076')
   ,('V017','G1','P077')

   ,('T216','G1','P078')
   ,('T217','G2','P078')
   ,('T218','G1','P079')
   ,('T219','G2','P079')
   ,('T220','G1','P080')
   ,('T221','G2','P080')
   ,('T222','G1','P081')
   ,('T223','G2','P081')

   ,('T224','G1','P082')
   ,('T225','G2','P082')
   ,('T226','G3','P082')
   ,('T227','G1','P083')
   ,('T228','G2','P083')
   ,('T229','G3','P083')
   ,('T230','G1','P084')
   ,('T231','G2','P084')
   ,('T232','G3','P084')


   ,('T233','G1','P085')
   ,('T234','G2','P085')
   ,('T235','G3','P085')
   ,('T236','G4','P085')
   ,('T237','G5','P085')
   ,('T238','G1','P086')
   ,('T239','G2','P086')
   ,('T240','G3','P086')
   ,('T241','G4','P086')
   ,('T242','G5','P086')
   ,('T243','G1','P087')
   ,('T244','G2','P087')
   ,('T245','G3','P087')
   ,('T246','G4','P087')
   ,('T247','G5','P087')


   ,('T248','G1','P088')
   ,('T249','G2','P088')
   ,('T250','G3','P088')
   ,('T251','G4','P088')
   ,('T252','G5','P088')
   ,('T253','G6','P088')
   ,('T254','G7','P088')
   ,('T255','G1','P089')
   ,('T256','G2','P089')
   ,('T257','G3','P089')
   ,('T258','G4','P089')
   ,('T259','G5','P089')
   ,('T260','G6','P089')
   ,('T261','G7','P089')
   ,('T262','G1','P090')
   ,('T263','G2','P090')
   ,('T264','G3','P090')
   ,('T265','G4','P090')
   ,('T266','G5','P090')
   ,('T267','G6','P090')
   ,('T268','G7','P090')

   ,('V018','G1','P091')
   ,('V019','G1','P092')
   ,('V020','G1','P093')
   ,('V021','G1','P094')
   ,('V022','G1','P095')

   ,('T269','G1','P096')
   ,('T270','G2','P096')
   ,('T271','G1','P097')
   ,('T272','G2','P097')
   ,('T273','G1','P098')
   ,('T274','G2','P098')
   ,('T275','G1','P099')
   ,('T276','G2','P099')
   ,('T277','G1','P100')
   ,('T278','G2','P100')
   ,('T279','G1','P101')
   ,('T280','G2','P101')
   ,('T281','G1','P102')
   ,('T282','G2','P102')
   ,('T283','G1','P103')
   ,('T284','G2','P103')

   ,('T285','G1','P104')
   ,('T286','G2','P104')
   ,('T287','G3','P104')
   ,('T288','G1','P105')
   ,('T289','G2','P105')
   ,('T290','G3','P105')
   ,('T291','G1','P106')
   ,('T292','G2','P106')
   ,('T293','G3','P106')
   ,('T294','G1','P107')
   ,('T295','G2','P107')
   ,('T296','G3','P107')
   ,('T297','G1','P108')
   ,('T298','G2','P108')
   ,('T299','G3','P108')

   ,('T300','G1','P109')
   ,('T301','G2','P109')
   ,('T302','G3','P109')
   ,('T303','G4','P109')
   ,('T304','G5','P109')
   ,('T305','G1','P110')
   ,('T306','G2','P110')
   ,('T307','G3','P110')
   ,('T308','G4','P110')
   ,('T309','G5','P110')
   ,('T310','G1','P111')
   ,('T311','G2','P111')
   ,('T312','G3','P111')
   ,('T313','G4','P111')
   ,('T314','G5','P111')
   ,('T315','G1','P112')
   ,('T316','G2','P112')
   ,('T317','G3','P112')
   ,('T318','G4','P112')
   ,('T319','G5','P112')

   ,('T320','G1','P113')
   ,('T321','G2','P113')
   ,('T322','G3','P113')
   ,('T323','G4','P113')
   ,('T324','G5','P113')
   ,('T325','G6','P113')
   ,('T326','G7','P113')
   ,('T327','G1','P114')
   ,('T328','G2','P114')
   ,('T329','G3','P114')
   ,('T330','G4','P114')
   ,('T331','G5','P114')
   ,('T332','G6','P114')
   ,('T333','G7','P114')
   ,('T334','G1','P115')
   ,('T335','G2','P115')
   ,('T336','G3','P115')
   ,('T337','G4','P115')
   ,('T338','G5','P115')
   ,('T339','G6','P115')
   ,('T340','G7','P115')

   ,('V023','G1','P116')
   ,('V024','G1','P117')
   ,('V025','G1','P118')
   ,('V026','G1','P119')
   ,('V027','G1','P120')

   ,('T341','G1','P121')
   ,('T342','G2','P121')
   ,('T343','G1','P122')
   ,('T344','G2','P122')
   ,('T345','G1','P123')
   ,('T346','G2','P123')
   ,('T347','G1','P124')
   ,('T348','G2','P124')
   ,('T349','G1','P125')
   ,('T350','G2','P125')
   ,('T351','G1','P126')
   ,('T352','G2','P126')
   ,('T353','G1','P127')
   ,('T354','G2','P127')
   ,('T355','G1','P128')
   ,('T356','G2','P128')

   ,('T357','G1','P129')
   ,('T358','G2','P129')
   ,('T359','G3','P129')
   ,('T360','G1','P130')
   ,('T361','G2','P130')
   ,('T362','G3','P130')
   ,('T363','G1','P131')
   ,('T364','G2','P131')
   ,('T365','G3','P131')
   ,('T366','G1','P132')
   ,('T367','G2','P132')
   ,('T368','G3','P132')
   ,('T369','G1','P133')
   ,('T370','G2','P133')
   ,('T371','G3','P133')

   ,('T372','G1','P134')
   ,('T373','G2','P134')
   ,('T374','G3','P134')
   ,('T375','G4','P134')
   ,('T376','G5','P134')
   ,('T377','G1','P135')
   ,('T378','G2','P135')
   ,('T379','G3','P135')
   ,('T380','G4','P135')
   ,('T381','G5','P135')
   ,('T382','G1','P136')
   ,('T383','G2','P136')
   ,('T384','G3','P136')
   ,('T385','G4','P136')
   ,('T386','G5','P136')
   ,('T387','G1','P137')
   ,('T388','G2','P137')
   ,('T389','G3','P137')
   ,('T390','G4','P137')
   ,('T391','G5','P137')

   ,('T392','G1','P138')
   ,('T393','G2','P138')
   ,('T394','G3','P138')
   ,('T395','G4','P138')
   ,('T396','G5','P138')
   ,('T397','G6','P138')
   ,('T398','G7','P138')
   ,('T399','G1','P139')
   ,('T400','G2','P139')
   ,('T401','G3','P139')
   ,('T402','G4','P139')
   ,('T403','G5','P139')
   ,('T404','G6','P139')
   ,('T405','G7','P139')
   ,('T406','G1','P140')
   ,('T407','G2','P140')
   ,('T408','G3','P140')
   ,('T409','G4','P140')
   ,('T410','G5','P140')
   ,('T411','G6','P140')
   ,('T412','G7','P140')

   ,('V028','G1','P141')
   ,('V029','G1','P142')

   ,('T413','G1','P143')
   ,('T414','G2','P143')
   ,('T415','G1','P144')
   ,('T416','G2','P144')
   ,('T417','G1','P145')
   ,('T418','G2','P145')

   ,('T419','G1','P146')
   ,('T420','G2','P146')
   ,('T421','G3','P146')
   ,('T422','G1','P147')
   ,('T423','G2','P147')
   ,('T424','G3','P147')
   ,('T425','G1','P148')
   ,('T426','G2','P148')
   ,('T427','G3','P148')

   ,('T428','G1','P149')
   ,('T429','G2','P149')
   ,('T430','G3','P149')
   ,('T431','G4','P149')
   ,('T432','G5','P149')
   ,('T433','G1','P150')
   ,('T434','G2','P150')
   ,('T435','G3','P150')
   ,('T436','G4','P150')
   ,('T437','G5','P150')

   ,('T438','G1','P151')
   ,('T439','G2','P151')
   ,('T440','G3','P151')
   ,('T441','G4','P151')
   ,('T442','G5','P151')
   ,('T443','G6','P151')
   ,('T444','G7','P151')
   ,('T445','G1','P152')
   ,('T446','G2','P152')
   ,('T447','G3','P152')
   ,('T448','G4','P152')
   ,('T449','G5','P152')
   ,('T450','G6','P152')
   ,('T451','G7','P152')

   ,('V030','G1','P153')
   ,('V031','G1','P154')

   ,('T452','G1','P155')
   ,('T453','G2','P155')
   ,('T454','G1','P156')
   ,('T455','G2','P156')
   ,('T456','G1','P157')
   ,('T457','G2','P157')

   ,('T458','G1','P158')
   ,('T459','G2','P158')
   ,('T460','G3','P158')
   ,('T461','G1','P159')
   ,('T462','G2','P159')
   ,('T463','G3','P159')
   ,('T464','G1','P160')
   ,('T465','G2','P160')
   ,('T466','G3','P160')

   ,('T467','G1','P161')
   ,('T468','G2','P161')
   ,('T469','G3','P161')
   ,('T470','G4','P161')
   ,('T471','G5','P161')
   ,('T472','G1','P162')
   ,('T473','G2','P162')
   ,('T474','G3','P162')
   ,('T475','G4','P162')
   ,('T476','G5','P162')

   ,('T477','G1','P163')
   ,('T478','G2','P163')
   ,('T479','G3','P163')
   ,('T480','G4','P163')
   ,('T481','G5','P163')
   ,('T482','G6','P163')
   ,('T483','G7','P163')
   ,('T484','G1','P164')
   ,('T485','G2','P164')
   ,('T486','G3','P164')
   ,('T487','G4','P164')
   ,('T488','G5','P164')
   ,('T489','G6','P164')
   ,('T490','G7','P164')

   ,('V032','G1','P165')
   ,('V033','G1','P166')

   ,('T491','G1','P167')
   ,('T492','G2','P167')
   ,('T493','G1','P168')
   ,('T494','G2','P168')
   ,('T495','G1','P169')
   ,('T496','G2','P169')

   ,('T497','G1','P170')
   ,('T498','G2','P170')
   ,('T499','G3','P170')
   ,('T500','G1','P171')
   ,('T501','G2','P171')
   ,('T502','G3','P171')
   ,('T503','G1','P172')
   ,('T504','G2','P172')
   ,('T505','G3','P172')

   ,('T506','G1','P173')
   ,('T507','G2','P173')
   ,('T508','G3','P173')
   ,('T509','G4','P173')
   ,('T510','G5','P173')
   ,('T511','G1','P174')
   ,('T512','G2','P174')
   ,('T513','G3','P174')
   ,('T514','G4','P174')
   ,('T515','G5','P174')

   ,('T516','G1','P175')
   ,('T517','G2','P175')
   ,('T518','G3','P175')
   ,('T519','G4','P175')
   ,('T520','G5','P175')
   ,('T521','G6','P175')
   ,('T522','G7','P175')
   ,('T523','G1','P176')
   ,('T524','G2','P176')
   ,('T525','G3','P176')
   ,('T526','G4','P176')
   ,('T527','G5','P176')
   ,('T528','G6','P176')
   ,('T529','G7','P176')

   ,('V034','G1','P177')
   ,('V035','G1','P178')

   ,('T530','G1','P179')
   ,('T531','G2','P179')
   ,('T532','G1','P180')
   ,('T533','G2','P180')
   ,('T534','G1','P181')
   ,('T535','G2','P181')

   ,('T536','G1','P182')
   ,('T537','G2','P182')
   ,('T538','G3','P182')
   ,('T539','G1','P183')
   ,('T540','G2','P183')
   ,('T541','G3','P183')
   ,('T542','G1','P184')
   ,('T543','G2','P184')
   ,('T544','G3','P184')

   ,('T545','G1','P185')
   ,('T546','G2','P185')
   ,('T547','G3','P185')
   ,('T548','G4','P185')
   ,('T549','G5','P185')
   ,('T550','G1','P186')
   ,('T551','G2','P186')
   ,('T552','G3','P186')
   ,('T553','G4','P186')
   ,('T554','G5','P186')

   ,('T555','G1','P187')
   ,('T556','G2','P187')
   ,('T557','G3','P187')
   ,('T558','G4','P187')
   ,('T559','G5','P187')
   ,('T560','G6','P187')
   ,('T561','G7','P187')
   ,('T562','G1','P188')
   ,('T563','G2','P188')
   ,('T564','G3','P188')
   ,('T565','G4','P188')
   ,('T566','G5','P188')
   ,('T567','G6','P188')
   ,('T568','G7','P188')

   ,('V036','G1','P189')
   ,('V037','G1','P190')

   ,('T569','G1','P191')
   ,('T570','G2','P191')
   ,('T571','G1','P192')
   ,('T572','G2','P192')
   ,('T573','G1','P193')
   ,('T574','G2','P193')

   ,('T575','G1','P194')
   ,('T576','G2','P194')
   ,('T577','G3','P194')
   ,('T578','G1','P195')
   ,('T579','G2','P195')
   ,('T580','G3','P195')
   ,('T581','G1','P196')
   ,('T582','G2','P196')
   ,('T583','G3','P196')

   ,('T584','G1','P197')
   ,('T585','G2','P197')
   ,('T586','G3','P197')
   ,('T587','G4','P197')
   ,('T588','G5','P197')
   ,('T589','G1','P198')
   ,('T590','G2','P198')
   ,('T591','G3','P198')
   ,('T592','G4','P198')
   ,('T593','G5','P198')

   ,('T594','G1','P199')
   ,('T595','G2','P199')
   ,('T596','G3','P199')
   ,('T597','G4','P199')
   ,('T598','G5','P199')
   ,('T599','G6','P199')
   ,('T600','G7','P199')
   ,('T601','G1','P200')
   ,('T602','G2','P200')
   ,('T603','G3','P200')
   ,('T604','G4','P200')
   ,('T605','G5','P200')
   ,('T606','G6','P200')
   ,('T607','G7','P200')

   ,('V038','G1','P201')
   ,('V039','G1','P202')

   ,('T608','G1','P203')
   ,('T609','G2','P203')
   ,('T610','G1','P204')
   ,('T611','G2','P204')
   ,('T612','G1','P205')
   ,('T613','G2','P205')

   ,('T614','G1','P206')
   ,('T615','G2','P206')
   ,('T616','G3','P206')
   ,('T617','G1','P207')
   ,('T618','G2','P207')
   ,('T619','G3','P207')
   ,('T620','G1','P208')
   ,('T621','G2','P208')
   ,('T622','G3','P208')

   ,('T623','G1','P209')
   ,('T624','G2','P209')
   ,('T625','G3','P209')
   ,('T626','G4','P209')
   ,('T627','G5','P209')
   ,('T628','G1','P210')
   ,('T629','G2','P210')
   ,('T630','G3','P210')
   ,('T631','G4','P210')
   ,('T632','G5','P210')

   ,('T633','G1','P211')
   ,('T634','G2','P211')
   ,('T635','G3','P211')
   ,('T636','G4','P211')
   ,('T637','G5','P211')
   ,('T638','G6','P211')
   ,('T639','G7','P211')
   ,('T640','G1','P212')
   ,('T641','G2','P212')
   ,('T642','G3','P212')
   ,('T643','G4','P212')
   ,('T644','G5','P212')
   ,('T645','G6','P212')
   ,('T646','G7','P212')

   ,('V040','G1','P213')
   ,('V041','G1','P214')

   ,('T647','G1','P215')
   ,('T648','G2','P215')
   ,('T649','G1','P216')
   ,('T650','G2','P216')
   ,('T651','G1','P217')
   ,('T652','G2','P217')

   ,('T653','G1','P218')
   ,('T654','G2','P218')
   ,('T655','G3','P218')
   ,('T656','G1','P219')
   ,('T657','G2','P219')
   ,('T658','G3','P219')
   ,('T659','G1','P220')
   ,('T660','G2','P220')
   ,('T661','G3','P220')

   ,('T662','G1','P221')
   ,('T663','G2','P221')
   ,('T664','G3','P221')
   ,('T665','G4','P221')
   ,('T666','G5','P221')
   ,('T667','G1','P222')
   ,('T668','G2','P222')
   ,('T669','G3','P222')
   ,('T670','G4','P222')
   ,('T671','G5','P222')

   ,('T672','G1','P223')
   ,('T673','G2','P223')
   ,('T674','G3','P223')
   ,('T675','G4','P223')
   ,('T676','G5','P223')
   ,('T677','G6','P223')
   ,('T678','G7','P223')
   ,('T679','G1','P224')
   ,('T680','G2','P224')
   ,('T681','G3','P224')
   ,('T682','G4','P224')
   ,('T683','G5','P224')
   ,('T684','G6','P224')
   ,('T685','G7','P224')

   ,('V042','G1','P225')
   ,('V043','G1','P226')

   ,('T686','G1','P227')
   ,('T687','G2','P227')
   ,('T688','G1','P228')
   ,('T689','G2','P228')
   ,('T690','G1','P229')
   ,('T691','G2','P229')

   ,('T692','G1','P230')
   ,('T693','G2','P230')
   ,('T694','G3','P230')
   ,('T695','G1','P231')
   ,('T696','G2','P231')
   ,('T697','G3','P231')
   ,('T698','G1','P232')
   ,('T699','G2','P232')
   ,('T700','G3','P232')

   ,('T701','G1','P233')
   ,('T702','G2','P233')
   ,('T703','G3','P233')
   ,('T704','G4','P233')
   ,('T705','G5','P233')
   ,('T706','G1','P234')
   ,('T707','G2','P234')
   ,('T708','G3','P234')
   ,('T709','G4','P234')
   ,('T710','G5','P234')

   ,('T711','G1','P235')
   ,('T712','G2','P235')
   ,('T713','G3','P235')
   ,('T714','G4','P235')
   ,('T715','G5','P235')
   ,('T716','G6','P235')
   ,('T717','G7','P235')
   ,('T718','G1','P236')
   ,('T719','G2','P236')
   ,('T720','G3','P236')
   ,('T721','G4','P236')
   ,('T722','G5','P236')
   ,('T723','G6','P236')
   ,('T724','G7','P236')

   ,('V044','G1','P237')
   ,('V045','G1','P238')

   ,('T725','G1','P239')
   ,('T726','G2','P239')
   ,('T727','G1','P240')
   ,('T728','G2','P240')
   ,('T729','G1','P241')
   ,('T730','G2','P241')

   ,('T731','G1','P242')
   ,('T732','G2','P242')
   ,('T733','G3','P242')
   ,('T734','G1','P243')
   ,('T735','G2','P243')
   ,('T736','G3','P243')
   ,('T737','G1','P244')
   ,('T738','G2','P244')
   ,('T739','G3','P244')

   ,('T740','G1','P245')
   ,('T741','G2','P245')
   ,('T742','G3','P245')
   ,('T743','G4','P245')
   ,('T744','G5','P245')
   ,('T745','G1','P246')
   ,('T746','G2','P246')
   ,('T747','G3','P246')
   ,('T748','G4','P246')
   ,('T749','G5','P246')

   ,('T750','G1','P247')
   ,('T751','G2','P247')
   ,('T752','G3','P247')
   ,('T753','G4','P247')
   ,('T754','G5','P247')
   ,('T755','G6','P247')
   ,('T756','G7','P247')
   ,('T757','G1','P248')
   ,('T758','G2','P248')
   ,('T759','G3','P248')
   ,('T760','G4','P248')
   ,('T761','G5','P248')
   ,('T762','G6','P248')
   ,('T763','G7','P248')

   ,('V046','G1','P249')
   ,('V047','G1','P250')
   ,('V048','G1','P251')
   ,('V049','G1','P252')
   ,('V050','G1','P253')

   ,('T764','G1','P254')
   ,('T765','G2','P254')
   ,('T766','G1','P255')
   ,('T767','G2','P255')
   ,('T768','G1','P256')
   ,('T769','G2','P256')
   ,('T770','G1','P257')
   ,('T771','G2','P257')
   ,('T772','G1','P258')
   ,('T773','G2','P258')
   ,('T774','G1','P259')
   ,('T775','G2','P259')

   ,('T776','G1','P260')
   ,('T777','G2','P260')
   ,('T778','G3','P260')
   ,('T779','G1','P261')
   ,('T780','G2','P261')
   ,('T781','G3','P261')
   ,('T782','G1','P262')
   ,('T783','G2','P262')
   ,('T784','G3','P262')
   ,('T785','G1','P263')
   ,('T786','G2','P263')
   ,('T787','G3','P263')

   ,('T788','G1','P264')
   ,('T789','G2','P264')
   ,('T790','G3','P264')
   ,('T791','G4','P264')
   ,('T792','G5','P264')
   ,('T793','G1','P265')
   ,('T794','G2','P265')
   ,('T795','G3','P265')
   ,('T796','G4','P265')
   ,('T797','G5','P265')
   ,('T798','G1','P266')
   ,('T799','G2','P266')
   ,('T800','G3','P266')
   ,('T801','G4','P266')
   ,('T802','G5','P266')
   ,('T803','G1','P267')
   ,('T804','G2','P267')
   ,('T805','G3','P267')
   ,('T806','G4','P267')
   ,('T807','G5','P267')

   ,('T808','G1','P268')
   ,('T809','G2','P268')
   ,('T810','G3','P268')
   ,('T811','G4','P268')
   ,('T812','G5','P268')
   ,('T813','G6','P268')
   ,('T814','G7','P268')
   ,('T815','G1','P269')
   ,('T816','G2','P269')
   ,('T817','G3','P269')
   ,('T818','G4','P269')
   ,('T819','G5','P269')
   ,('T820','G6','P269')
   ,('T821','G7','P269')
   ,('T822','G1','P270')
   ,('T823','G2','P270')
   ,('T824','G3','P270')
   ,('T825','G4','P270')
   ,('T826','G5','P270')
   ,('T827','G6','P270')
   ,('T828','G7','P270')
   
----Chèn DL cho SoBenhAn 
go
INSERT INTO SoBenhAn(MaSoBenhAn,TrieuChung,TieuSuBenhLy,ThongTinLamSang,ChanDoan,MaBN,MaNV,NgayLap,MaPhieuKB)
VALUES 
 ('BA001', N'Tim đập nhanh, đau tim', N'Bệnh tim từ nhỏ', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim' ,'BN001','NV051','2024-04-13','PKB001')
,('BA001.1', N'Tim đập nhanh, đau tim', N'Bệnh tim từ nhỏ', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim' ,'BN001','NV051','2024-05-02','PKB001.1')
,('BA002', N'Khó thở', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim' ,'BN002','NV067','2024-04-13','PKB002')
,('BA002.1', N'Khó thở', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim' ,'BN002','NV067','2024-05-02','PKB002.1')
,('BA003', N'Khó thở, đau đầu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi nặng' ,'BN003','NV083','2024-04-13','PKB003')
,('BA003.1', N'Khó thở, đau đầu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi nặng' ,'BN003','NV083','2024-05-02','PKB003.1')
,('BA004', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau tim' ,'BN004','NV084','2024-04-13','PKB004')
,('BA004.1', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau tim' ,'BN004','NV084','2024-05-02','PKB004.1')
,('BA005', N'Đau bụng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm gan' ,'BN005','NV100','2024-04-13','PKB005')
,('BA005.1', N'Đau bụng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm gan' ,'BN005','NV100','2024-05-02','PKB005.1')
,('BA006', N'Mệt mỏi, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh bạch huyết' ,'BN006','NV052','2024-04-13','PKB006')
,('BA006.1', N'Mệt mỏi, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh bạch huyết' ,'BN006','NV052','2024-05-02','PKB006.1')
,('BA007', N'Đói, uống nước nhiều, mệt mỏi', N'Đã từng tiểu đường', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh tiểu đường' ,'BN007','NV116','2024-04-13','PKB007')
,('BA007.1', N'Đói, uống nước nhiều, mệt mỏi', N'Đã từng tiểu đường', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bệnh tiểu đường' ,'BN007','NV116','2024-05-02','PKB007.1')
,('BA008', N'Đau họng, khó nuốt', N'Không', N'Nhịp tim 98/1p, huyết áp 85 mmHg', N'Viêm Họng' ,'BN008','NV068','2024-04-13','PKB008')
,('BA008.1', N'Đau họng, khó nuốt', N'Không', N'Nhịp tim 98/1p, huyết áp 85 mmHg', N'Viêm Họng' ,'BN008','NV068','2024-05-02','PKB008.1')
,('BA009', N'Mất khả năng nói chuyện, mất khả năng di chuyển một phần cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ' ,'BN009','NV069','2024-04-13','PKB009')
,('BA009.1', N'Mất khả năng nói chuyện, mất khả năng di chuyển một phần cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ' ,'BN009','NV069','2024-05-02','PKB009.1')
,('BA010', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận' ,'BN010','NV053','2024-04-13','PKB010')
,('BA010.1', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận' ,'BN010','NV053','2024-05-02','PKB010.1')
,('BA011', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận' ,'BN011','NV053','2024-04-13','PKB011')
,('BA011.1', N'Đau lưng, đau bụng dưới', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sỏi thận' ,'BN011','NV053','2024-05-02','PKB011.1')
,('BA012', N'Co giựt, sốt', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt xuất huyết' ,'BN012','NV054','2024-04-13','PKB012')
,('BA012.1', N'Co giựt, sốt', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt xuất huyết' ,'BN012','NV054','2024-05-02','PKB012.1')
,('BA013', N'Đau bụng, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiêu chảy' ,'BN013','NV070','2024-04-13','PKB013')
,('BA013.1', N'Đau bụng, nôn mửa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiêu chảy' ,'BN013','NV070','2024-05-02','PKB013.1')
,('BA014', N'Cảm giác căng thẳng, giảm cân', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Tăng giáp' ,'BN014','NV087','2024-04-13','PKB014')
,('BA014.1', N'Cảm giác căng thẳng, giảm cân', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Tăng giáp' ,'BN014','NV087','2024-05-02','PKB014.1')
,('BA015', N'Khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Hen suyễn' ,'BN015','NV103','2024-04-13','PKB015')
,('BA015.1', N'Khó thở', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Hen suyễn' ,'BN015','NV103','2024-05-02','PKB015.1')
,('BA016', N'Khó thở, tim đập nhanh', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Suy tim' ,'BN016','NV055','2024-04-13','PKB016')
,('BA016.1', N'Khó thở, tim đập nhanh', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Suy tim' ,'BN016','NV055','2024-05-02','PKB016.1')
,('BA017', N'Không tập trung, khó kiểm soát hành động', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn tăng động giảm chú ý' ,'BN017','NV072','2024-04-13','PKB017')
,('BA017.1', N'Không tập trung, khó kiểm soát hành động', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn tăng động giảm chú ý' ,'BN017','NV072','2024-05-02','PKB017.1')
,('BA018', N'Đau, chuột rút ở một hoặc nhiều vùng cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh toàn thân' ,'BN018','NV088','2024-04-13','PKB018')
,('BA018.1', N'Đau, chuột rút ở một hoặc nhiều vùng cơ thể', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh toàn thân' ,'BN018','NV088','2024-05-02','PKB018.1')
,('BA019', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng' ,'BN019','NV071','2024-04-13','PKB019')
,('BA019.1', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng' ,'BN019','NV071','2024-05-02','PKB019.1')
,('BA020', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng' ,'BN020','NV071','2024-04-13','PKB020')
,('BA020.1', N'Đau lưng, vùng gáy, thắt lưng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau lưng' ,'BN020','NV071','2024-05-02','PKB020.1')
,('BA021', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis' ,'BN021','NV089','2024-04-13','PKB021')
,('BA021.1', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis' ,'BN021','NV089','2024-05-02','PKB021.1')
,('BA022', N'Đau ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau đầu' ,'BN022','NV076','2024-04-13','PKB022')
,('BA022.1', N'Đau ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau đầu' ,'BN022','NV076','2024-05-02','PKB022.1')
,('BA023', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm' ,'BN023','NV057','2024-04-13','PKB023')
,('BA023.1', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm' ,'BN023','NV057','2024-05-02','PKB023.1')
,('BA024', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương' ,'BN024','NV058','2024-04-13','PKB024')
,('BA024.1', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương' ,'BN024','NV058','2024-05-02','PKB024.1')
,('BA025', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối' ,'BN025','NV074','2024-04-13','PKB025')
,('BA025.1', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối' ,'BN025','NV074','2024-05-02','PKB025.1')
,('BA026', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol' ,'BN026','NV090','2024-04-13','PKB026')
,('BA026.1', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol' ,'BN026','NV090','2024-05-02','PKB026.1')
,('BA027', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt' ,'BN027','NV059','2024-04-13','PKB027')
,('BA027.1', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt' ,'BN027','NV059','2024-05-02','PKB027.1')
,('BA028', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung' ,'BN028','NV075','2024-04-13','PKB028')
,('BA028.1', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung' ,'BN028','NV075','2024-05-02','PKB028.1')
,('BA029', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung' ,'BN029','NV091','2024-04-13','PKB029')
,('BA029.1', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung' ,'BN029','NV091','2024-05-02','PKB029.1')
,('BA030', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh' ,'BN030','NV060','2024-04-13','PKB030')
,('BA030.1', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh' ,'BN030','NV060','2024-05-02','PKB030.1')

   ,('BA031', N'Đau ở vùng trán, căng thẳng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Đau đầu' ,'BN031','NV076','2024-04-13','PKB031')
   ,('BA032', N'Run chân, chuột rút', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn chức năng thần kinh' ,'BN032','NV092','2024-04-13','PKB032')
   ,('BA033', N'Nhức răng, đau răng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sâu răng' ,'BN033','NV061','2024-04-13','PKB033')
   ,('BA034', N'Ngưng thở trong khi ngủ, rít', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Tắc nghẽn đường hô hấp khi ngủ' ,'BN034','NV077','2024-04-13','PKB034')
   ,('BA035', N'Răng sâu', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Loại bỏ răng sâu, trồng răng mới' ,'BN035','NV093','2024-04-13','PKB035')
   ,('BA036', N'Khó thở', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Hen suyễn' ,'BN036','NV062','2024-04-13','PKB036')
   ,('BA037', N'Đau ngực, khó thở, buồn nôn', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim' ,'BN037','NV078','2024-04-13','PKB037')
   ,('BA038', N'Mất khả năng nghe, giao tiếp', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Đột quỵ' ,'BN038','NV094','2024-04-13','PKB038')
   ,('BA039', N'Khó tiêu, tiêu chảy, ăn ít dễ no', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư dạ dày' ,'BN039','NV079','2024-04-13','PKB039')
   ,('BA040', N'Khối u, vùng da thay đổi màu sắc, kích thước', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư da' ,'BN040','NV095','2024-04-13','PKB040')
   ,('BA041', N'Ho dai dẳng có máu, khó thở', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư phổi' ,'BN041','NV111','2024-04-13','PKB041')
   ,('BA042', N'Đau đầu, buồn nôn và ói mửa', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư não' ,'BN042','NV063','2024-04-13','PKB042')
   ,('BA043', N'Đau áp lực trong ngực', N'Không', N'Nhịp tim 150/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim' ,'BN043','NV064','2024-04-13','PKB043')
   ,('BA044', N'Đau ngực kéo dài, khó thở, và cảm giác mệt mỏi', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Động mạch vành' ,'BN044','NV080','2024-04-13','PKB044')
   ,('BA045', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Suy tim' ,'BN045','NV097','2024-04-13','PKB045')
   ,('BA046', N'Đau và căng cơ cổ, cứng cổ', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Thoái hóa đốt sống cổ' ,'BN046','NV081','2024-04-13','PKB046')
   ,('BA047', N'Đau, cứng cột sống, giảm độ linh hoạt, và đau lan ra từ cột sống xuống tay, cứng cổ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gai cột sống' ,'BN047','NV096','2024-04-13','PKB047')
   ,('BA048', N'Nhịp tim chậm', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Bradycardia' ,'BN048','NV168','2024-04-13','PKB048')
   ,('BA049', N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương' ,'BN049','NV098','2024-04-13','PKB049')
   ,('BA050', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo cột sống' ,'BN050','NV114','2024-04-13','PKB050')
   ,('BA051', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo ngược cột sống' ,'BN051','NV130','2024-04-13','PKB051')
   ,('BA052', N'Đau, sưng vùng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rách cơ' ,'BN052','NV049','2024-04-13','PKB052')
   ,('BA053', N'Rách dây chằng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tổn thương dây chằng và gân' ,'BN053','NV050','2024-04-13','PKB053')
   ,('BA054', N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương ở cẳng tay' ,'BN054','NV066','2024-04-13','PKB054')
   ,('BA055', N'Đau, sưng, không di chuyển được', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Trẹo cổ chân' ,'BN055','NV082','2024-04-13','PKB055')
   ,('BA056', N'Tim đập không đều, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Nhồi máu cơ tim' ,'BN056','NV099','2024-04-13','PKB056')
   ,('BA057', N'Tim đập nhanh, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim' ,'BN057','NV115','2024-04-13','PKB057')
   ,('BA058', N'Đau quặn bụng', N'Không', N'Nhịp tim 120/1p, huyết áp 130 mmHg', N'Nhiễm trùng ruột' ,'BN058','NV131','2024-04-13','PKB058')
   ,('BA059', N'Nhịp tim chậm', N'Không', N'Nhịp tim 80/1p, huyết áp 130 mmHg', N'Bradycardia' ,'BN059','NV168','2024-04-13','PKB059')
   ,('BA060', N'Đau bụng, rối loạn tiêu hóa', N'Không', N'Nhịp tim 100/1p, huyết áp 130 mmHg', N'Viêm đại tràng' ,'BN060','NV183','2024-04-13','PKB060')
   ,('BA061', N'Huyết áp thấp, chóng mặt', N'Không', N'Nhịp tim 100/1p, huyết áp 70 mmHg', N'Huyết áp thấp' ,'BN061','NV132','2024-04-13','PKB061')
   ,('BA062', N'Mệt mỏi, sưng, ngứa, và biến đổi về chức năng tiểu tiện', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Suy thận' ,'BN062','NV198','2024-04-13','PKB062')
   ,('BA063', N'Ho, mệt mỏi', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sốt' ,'BN063','NV152','2024-04-13','PKB063')
   ,('BA064', N'Mất khả năng giao tiếp', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ' ,'BN064','NV117','2024-04-13','PKB064')
   ,('BA065', N'Ho dai dẳng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi' ,'BN065','NV169','2024-04-13','PKB065')
   ,('BA066', N'Tiểu nhiều, tiểu đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm bàng quang' ,'BN066','NV101','2024-04-13','PKB066')
   ,('BA067', N'Sốt, run người', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt rét' ,'BN067','NV086','2024-04-13','PKB067')
   ,('BA068', N'Đói liên tục, tiểu nhiều, mệt mỏi, và giảm cân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiểu đường' ,'BN068','NV102','2024-04-13','PKB068')
   ,('BA069', N'Dậy thì sớm', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng prolactin' ,'BN069','NV155','2024-04-13','PKB069')
   ,('BA070', N'Ho dai dẳng, có máu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi' ,'BN070','NV169','2024-04-13','PKB070')
   ,('BA071', N'Tim đập nhanh, đau ở ngực', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy tim' ,'BN071','NV135','2024-04-13','PKB071')
   ,('BA072', N'Không ý thức được hành vi bản thân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn hành vi' ,'BN072','NV110','2024-04-13','PKB072')
   ,('BA073', N'Yếu đuối cơ bắp hoặc mất cảm giác', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy giảm chức năng thần kinh' ,'BN073','NV136','2024-04-13','PKB073')
   ,('BA074', N'Đau, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Căng cơ' ,'BN074','NV120','2024-04-13','PKB074')
   ,('BA075', N'Mệt mỏi, sưng, ngứa, và biến đổi về chức năng tiểu tiện', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy thận' ,'BN075','NV198','2024-04-13','PKB075')
   ,('BA076', N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm', 'BN076', 'NV105', '2024-04-13','PKB076')
   ,('BA077', N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis', 'BN077', 'NV121', '2024-04-13','PKB077')
   ,('BA078', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol' , 'BN078', 'NV138', '2024-04-13','PKB078')
   ,('BA079', N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương' , 'BN079', 'NV106', '2024-04-13','PKB079')
   ,('BA080', N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối' , 'BN080', 'NV122', '2024-04-13','PKB080')
   ,('BA081', N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol' , 'BN081', 'NV138', '2024-04-13','PKB081')
   ,('BA082', N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt', 'BN082', 'NV107', '2024-04-13','PKB082') 
   ,('BA083', N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung' , 'BN083', 'NV123', '2024-04-13','PKB083')
   ,('BA084', N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung', 'BN084', 'NV139', '2024-04-13','PKB084')
   ,('BA085', N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh', 'BN085', 'NV108', '2024-04-13','PKB085')
   ,('BA086', N'Đau ở vùng trán, căng thẳng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Đau đầu' , 'BN086', 'NV124', '2024-04-13','PKB086')
   ,('BA087', N'Run chân, chuột rút', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn chức năng thần kinh' , 'BN087', 'NV140', '2024-04-13','PKB087')
   ,('BA088', N'Đau răng', N'Tiền sử sâu răng', N'Huyết áp 110/70 mmHg, Mạch 75 lần/phút, Nhiệt độ 37.5 độ C', N'Sâu răng', 'BN088', 'NV109', '2024-04-13','PKB088')
   ,('BA089', N'Ngưng thở trong khi ngủ, rít', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Tắc nghẽn đường hô hấp khi ngủ', 'BN089', 'NV125', '2024-04-13','PKB089')   
   ,('BA090', N'Đau răng', N'Không', N'Huyết áp 120/80 mmHg, Mạch 70 lần/phút, Nhiệt độ 37 độ C', N'Sâu răng', 'BN090', 'NV109', '2024-04-13','PKB090')
   ,('BA091', N'Ho suyễn', N'Tiền sử hen suyễn', N'Huyết áp 110/70 mmHg, Mạch 90 lần/phút, Nhiệt độ 38 độ C', N'Viêm phổi', 'BN091', 'NV110', '2024-04-13','PKB091')
   ,('BA092', N'Đau ngực, khó thở, buồn nôn', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', 'BN092', 'NV126', '2024-04-13','PKB092')
   ,('BA093', N'Mất khả năng nghe, giao tiếp', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Đột quỵ' , 'BN093', 'NV142', '2024-04-13','PKB093')
   ,('BA094', N'Khó tiêu, tiêu chảy, ăn ít dễ no', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư dạ dày', 'BN094', 'NV143', '2024-04-13','PKB094') 
   ,('BA095', N'Khối u, vùng da thay đổi màu sắc, kích thước', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư da' , 'BN095', 'NV163', '2024-04-13','PKB095')
   ,('BA096', N'Ho dai dẳng có máu, khó thở', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư phổi', 'BN096', 'NV178', '2024-04-13','PKB096')
   ,('BA097', N'Đau đầu, buồn nôn và ói mửa', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư não', 'BN097', 'NV127', '2024-04-13','PKB097')
   ,('BA098', N'Đau áp lực trong ngực', N'Không', N'Nhịp tim 150/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', 'BN098', 'NV112', '2024-04-13','PKB098')
   ,('BA099', N'Đau ngực kéo dài, khó thở, và cảm giác mệt mỏi', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Động mạch vành', 'BN099', 'NV128', '2024-04-13','PKB099') 
   ,('BA100', N'Đau ngực, khó thở', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Suy tim', 'BN100', 'NV145', '2024-04-13','PKB100')
   ,('BA101', N'Đau và căng cơ cổ, cứng cổ', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Thoái hóa đốt sống cổ' , 'BN101', 'NV129', '2024-04-13','PKB101') 
   ,('BA102', N'Đau, cứng cột sống, giảm độ linh hoạt, và đau lan ra từ cột sống xuống tay, cứng cổ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gai cột sống', 'BN102', 'NV144', '2024-04-13','PKB102')
   ,('BA103', N'Đau, cứng cột sống, giảm độ linh hoạt, và đau lan ra từ cột sống xuống tay, cứng cổ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gai cột sống', 'BN103', 'NV144', '2024-04-13','PKB103')
   ,('BA104',  N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương', 'BN104', 'NV150', '2024-04-13','PKB104')
   ,('BA105', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo cột sống', 'BN105', 'NV197', '2024-04-13','PKB105')
   ,('BA106', N'Đau lưng, tư thế di chuyển có vấn đề', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Cong vẹo ngược cột sống', 'BN106', 'NV146', '2024-04-13','PKB106')
   ,('BA107', N'Đau, sưng vùng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rách cơ', 'BN107', 'NV147', '2024-04-13','PKB107')
   ,('BA108', N'Rách dây chằng', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tổn thương dây chằng và gân', 'BN108', 'NV148', '2024-04-13','PKB108')
   ,('BA109',  N'Đau, sưng, bầm tím', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Gãy xương ở cẳng tay', 'BN109', 'NV149', '2024-04-13','PKB109')
   ,('BA110',  N'Đau, sưng, không di chuyển được', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Trẹo cổ chân', 'BN110', 'NV151', '2024-04-13','PKB110')
   ,('BA111',  N'Tim đập không đều, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Nhồi máu cơ tim', 'BN111', 'NV166', '2024-04-13','PKB111')
   ,('BA112',  N'Tim đập nhanh, đau tim', N'Không', N'Nhịp tim 145/1p, huyết áp 130 mmHg', N'Suy tim', 'BN112', 'NV182', '2024-04-13','PKB112')
   ,('BA113',  N'Đau quặn bụng', N'Không', N'Nhịp tim 120/1p, huyết áp 130 mmHg', N'Nhiễm trùng ruột', 'BN113', 'NV084', '2024-04-13','PKB113')
   ,('BA114',  N'Nhịp tim chậm', N'Không', N'Nhịp tim 80/1p, huyết áp 130 mmHg', N'Bradycardia', 'BN114', 'NV100', '2024-04-13','PKB114')
   ,('BA115',  N'Đau bụng, rối loạn tiêu hóa', N'Không', N'Nhịp tim 100/1p, huyết áp 130 mmHg', N'Viêm đại tràng', 'BN115', 'NV199', '2024-04-13','PKB115')
   ,('BA116',  N'Huyết áp thấp, chóng mặt', N'Không', N'Nhịp tim 100/1p, huyết áp 70 mmHg', N'Huyết áp thấp', 'BN116', 'NV116', '2024-04-13','PKB116')
   ,('BA117',  N'Mệt mỏi, sưng, ngứa, và biến đổi về chức năng tiểu tiện', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Suy thận', 'BN117', 'NV200', '2024-04-13','PKB117')  
   ,('BA118',  N'Ho, mệt mỏi', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Sốt' , 'BN118', 'NV167', '2024-04-13','PKB118')	                
   ,('BA119',  N'Mất khả năng giao tiếp', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đột quỵ', 'BN119', 'NV184', '2024-04-13','PKB119')
   ,('BA120',  N'Đau bụng, rối loạn tiêu hóa', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm đại tràng', 'BN120', 'NV199', '2024-04-13','PKB120')
   ,('BA121',  N'Tiểu nhiều, tiểu đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm bàng quang', 'BN121', 'NV118', '2024-04-13','PKB121')
   ,('BA122',  N'Sốt, run người', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Sốt rét', 'BN122', 'NV134', '2024-04-13','PKB122')
   ,('BA123',  N'Đói liên tục, tiểu nhiều, mệt mỏi, và giảm cân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tiểu đường', 'BN123', 'NV087', '2024-04-13','PKB123')
   ,('BA124',  N'Ho dai dẳng, có máu', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Viêm phổi', 'BN124', 'NV103', '2024-04-13','PKB124')
   ,('BA125',  N'Tim đập nhanh, đau ở ngực', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy tim', 'BN125', 'NV186', '2024-04-13','PKB125')
   ,('BA126',  N'Không ý thức được hành vi bản thân', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn hành vi', 'BN126', 'NV185', '2024-04-13','PKB126')
   ,('BA127',  N'Yếu đuối cơ bắp hoặc mất cảm giác', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Suy giảm chức năng thần kinh', 'BN127', 'NV187', '2024-04-13','PKB127')
   ,('BA128',  N'Đau, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Căng cơ', 'BN128', 'NV172', '2024-04-13','PKB128')
   ,('BA129',  N'Đau, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Căng cơ', 'BN129', 'NV172', '2024-04-13','PKB129')
   ,('BA130',  N'Da khô, nứt nẻ, vảy và đỏ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chàm', 'BN130', 'NV157', '2024-04-13','PKB130')
   ,('BA131',  N'Nổi mụn đỏ và sưng, có vảy trắng bám trên da', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Psoriasis', 'BN131', 'NV171', '2024-04-13','PKB131')
   ,('BA132',  N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', 'BN132', 'NV189', '2024-04-13','PKB132')
   ,('BA133',  N'Gãy xương, căng cơ', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương cơ và xương', 'BN133', 'NV158', '2024-04-13','PKB133')
   ,('BA134',  N'Đứt dây chằng chéo trước hoặc sau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Chấn thương gối' , 'BN134', 'NV173', '2024-04-13','PKB134')
   ,('BA135',  N'Đau cơ, mệt mỏi', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Tăng cortisol', 'BN135', 'NV189', '2024-04-13','PKB135')
   ,('BA136',  N'Chu kỳ kinh nguyệt không đều', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn kinh nguyệt', 'BN136', 'NV159', '2024-04-13','PKB136')
   ,('BA137',  N'Chu kỳ kinh nguyệt đau', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'U xơ tử cung', 'BN137', 'NV174', '2024-04-13','PKB137')
   ,('BA138',  N'Chảy máu giữa các chu kỳ kinh nguyệt, đau bụng', N'Không', N'Nhịp tim 90/1p, huyết áp 90 mmHg', N'Ung thư tử cung', 'BN138', 'NV190', '2024-04-13','PKB138')
   ,('BA139',   N'Đau, cảm giác ngứa và khó chịu ở vùng trán', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Đau dây thần kinh', 'BN139', 'NV160', '2024-04-13','PKB139')
   ,('BA140',  N'Đau ở vùng trán, căng thẳng', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Đau đầu', 'BN140', 'NV175', '2024-04-13','PKB140')	
   ,('BA141', N'Run chân, chuột rút', N'Không', N'Nhịp tim 110/1p, huyết áp 90 mmHg', N'Rối loạn chức năng thần kinh' , 'BN141', 'NV191', '2024-04-13','PKB141')
   ,('BA142', N'Đau răng', N'Tiền sử sâu răng', N'Huyết áp 110/70 mmHg, Mạch 75 lần/phút, Nhiệt độ 37.5 độ C', N'Sâu răng', 'BN142', 'NV161', '2024-04-13','PKB142')
   ,('BA143', N'Ngưng thở trong khi ngủ, rít', N'Không', N'Nhịp tim 100/1p, huyết áp 90 mmHg', N'Tắc nghẽn đường hô hấp khi ngủ', 'BN143', 'NV176', '2024-04-13','PKB143')   
   ,('BA144', N'Đau răng', N'Không', N'Huyết áp 120/80 mmHg, Mạch 70 lần/phút, Nhiệt độ 37 độ C', N'Sâu răng', 'BN144', 'NV161', '2024-04-13','PKB144')
   ,('BA145', N'Ho suyễn', N'Tiền sử hen suyễn', N'Huyết áp 110/70 mmHg, Mạch 90 lần/phút, Nhiệt độ 38 độ C', N'Viêm phổi', 'BN145', 'NV162', '2024-04-13','PKB145')
   ,('BA146', N'Đau ngực, khó thở, buồn nôn', N'Không', N'Nhịp tim 140/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', 'BN146', 'NV177', '2024-04-13','PKB146')
   ,('BA147', N'Mất khả năng nghe, giao tiếp', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Đột quỵ' , 'BN147', 'NV193', '2024-04-13','PKB147')
   ,('BA148', N'Khó tiêu, tiêu chảy, ăn ít dễ no', N'Không', N'Nhịp tim 120/1p, huyết áp 90 mmHg', N'Ung thư dạ dày', 'BN148', 'NV079', '2024-04-13','PKB148') 
   ,('BA149', N'Đau áp lực trong ngực', N'Không', N'Nhịp tim 150/1p, huyết áp 90 mmHg', N'Nhồi máu cơ tim', 'BN149', 'NV164', '2024-04-13','PKB149')
   ,('BA150', N'Đau và căng cơ cổ, cứng cổ', N'Không', N'Nhịp tim 130/1p, huyết áp 90 mmHg', N'Thoái hóa đốt sống cổ' , 'BN150', 'NV180', '2024-04-13','PKB150') 

---Xét nghiệm chụp chiếu
go
INSERT INTO XN_CC(MaPhieu, MaDV, NgayThucHien, KetQua, MaBN, MaNVYeuCau)
VALUES
    ('XN025', 'DV003', '2024-4-13', N'Chấn thương ở gối','BN025','NV074')

---Chèn DL cho ThucHienXNCC
go
INSERT INTO ThucHienXNCC(MaNV, MaPhieu, MaPhongKham)
VALUES
	 ('NV003','XN025','PK306')

----Chen DL cho PhauThuat
go
INSERT INTO PhauThuat (MaNV, MaPT, MaBN, NgayPT, MaPhongKham, MaNVYeuCau)
VALUES
	 --PT010 Co xuong khop
	 --PT016 Phẫu thuật Sửa chữa gãy xương
	 --PT011 Phẫu thuật Ung thư
	 --PT001 Phẫu thuật Tim
	 ('NV016','PT010','BN025','2024-4-15','PK1608','NV055') --K16
	,('NV049','PT010','BN050','2024-4-15','PK1608','NV098') --K16
	,('NV032','PT016','BN049','2024-4-16','PK1608','NV092') --K16
	,('NV003','PT001','BN001','2024-4-20','PK303.1','NV083') --K3
	,('NV019','PT001','BN004','2024-4-19','PK303.2','NV071') --K3
	,('NV133','PT001','BN002','2024-4-21','PK303.1','NV158') --K3
	,('NV117','PT011','BN041','2024-4-25','PK303.2','NV200') --K3
	,('NV069','PT011','BN039','2024-4-20','PK303.2','NV155') --K3

----Chen DL cho PhanGiuong
go
INSERT INTO PhanGiuong(MaBN, NgayNhan, NgayTra, MaPhong, MaGiuong, MaNVYeuCau)
VALUES
	 ('BN001','2024-04-20',NULL,'P249','V046','NV051')
	,('BN002','2024-04-21',NULL,'P051','V011','NV067')
	,('BN004','2024-04-19',NULL,'P056','T144','NV084')
	,('BN025','2024-04-15',NULL,'P250','V047','NV074')
	,('BN039','2024-04-20',NULL,'P055','V015','NV079')
	,('BN041','2024-04-25',NULL,'P054','V014','NV111')
	,('BN049','2024-04-16',NULL,'P254','T764','NV098') 
	,('BN050','2024-04-15',NULL,'P254','T765','NV114') 

----Chen DL cho TheoDoiDieuTri
go
INSERT INTO TheoDoiDieuTri(MaBN, NgayTheoDoi, ChiSoCanNang, ChiSoHuyetAp, ChiSoNhipTho, YLenh, MaNV)
VALUES
	 ('BN001','2024-04-21','50kg','90mmHg','20/p',N'Cơ thể ổn định nhưng vẫn cần theo dõi thêm','NV212')
	,('BN002','2024-04-22','45kg','120mmHg','30/p',N'Cần theo dõi thêm','NV213')
	,('BN004','2024-04-20','43kg','80mmHg','25/p',N'Cần theo dõi thêm','NV214')
	,('BN025','2024-04-16','55kg','90mmHg','21/p',N'Cần theo dõi thêm','NV221')
	,('BN049','2024-04-17','55kg','100mmHg','25/p',N'Cần theo dõi thêm','NV224')
	,('BN050','2024-04-16','55kg','90mmHg','21/p',N'Cần theo dõi thêm','NV224')
	,('BN039','2024-04-21','50kg','100mmHg','20/p',N'Cần theo dõi thêm','NV215')
	,('BN041','2024-04-26','52kg','105mmHg','20/p',N'Cần theo dõi thêm','NV216')

-----Chen DL cho DonThuoc
go
insert into DonThuoc (MaDonThuoc,NgayGioKeDon,TongTienThuoc,MaNV,MaBN,ChanDoan)
values
	 ('DT001','2024-04-13',NULL,'NV051','BN001',N'Suy tim')
	,('DT002','2024-04-13',NULL,'NV067','BN002',N'Nhồi máu cơ tim')
	,('DT003','2024-04-13',NULL,'NV083','BN003',N'Viêm phổi nặng')
	,('DT004','2024-04-13',NULL,'NV084','BN004',N'Đau tim')
	,('DT005','2024-04-13',NULL,'NV100','BN005',N'Viêm gan')
	,('DT006','2024-04-13',NULL,'NV052','BN006',N'Bệnh bạch huyết')
	,('DT007','2024-04-13',NULL,'NV116','BN007',N'Bệnh tiểu đường')
	,('DT008','2024-04-13',NULL,'NV068','BN008',N'Viêm Họng')
	,('DT009','2024-04-13',NULL,'NV069','BN009',N'Đột quỵ')
	,('DT010','2024-04-13',NULL,'NV085','BN010',N'Sỏi thận')
	,('DT011','2024-04-13',NULL,'NV053','BN011',N'Sỏi thận')
	,('DT012','2024-04-13',NULL,'NV054','BN012',N'Sốt xuất huyết')
	,('DT013','2024-04-13',NULL,'NV070','BN013',N'Tiêu chảy')
	,('DT014','2024-04-13',NULL,'NV087','BN014',N'Tăng giáp')
	,('DT015','2024-04-13',NULL,'NV103','BN015',N'Hen suyễn')
	,('DT016','2024-04-13',NULL,'NV055','BN016',N'Suy tim')
	,('DT017','2024-04-13',NULL,'NV072','BN017',N'Rối loạn tăng động giảm chú ý')
	,('DT018','2024-04-13',NULL,'NV088','BN018',N'Đau dây thần kinh toàn thân')
	,('DT019','2024-04-13',NULL,'NV071','BN019',N'Đau lưng')
	,('DT020','2024-04-13',NULL,'NV056','BN020',N'Đau lưng')
	,('DT021','2024-04-13',NULL,'NV089','BN021',N'Psoriasis')
	,('DT022','2024-04-13',NULL,'NV073','BN022',N'Đau đầu')
	,('DT023','2024-04-13',NULL,'NV057','BN023',N'Chàm')
	,('DT024','2024-04-13',NULL,'NV058','BN024',N'Chấn thương cơ và xương')
	,('DT025','2024-04-13',NULL,'NV074','BN025',N'Chấn thương gối')
	,('DT026','2024-04-13',NULL,'NV090','BN026',N'Tăng cortisol')
	,('DT027','2024-04-13',NULL,'NV059','BN027',N'Rối loạn kinh nguyệt')
	,('DT028','2024-04-13',NULL,'NV075','BN028',N'U xơ tử cung')
	,('DT029','2024-04-13',NULL,'NV091','BN029',N'Ung thư tử cung')
	,('DT030','2024-04-13',NULL,'NV060','BN030',N'Đau dây thần kinh')
	,('DT001.1', '2024-05-02', NULL, 'NV051', 'BN001',N'Suy tim')
	,('DT002.1', '2024-05-02', NULL, 'NV067', 'BN002',N'Nhồi máu cơ tim')
	,('DT003.1', '2024-05-02', NULL, 'NV083', 'BN003',N'Viêm phổi nặng')
	,('DT004.1', '2024-05-02', NULL, 'NV084', 'BN004',N'Đau tim')
	,('DT005.1', '2024-05-02', NULL, 'NV100', 'BN005',N'Viêm gan')
	,('DT006.1', '2024-05-02', NULL, 'NV052', 'BN006',N'Bệnh bạch huyết')
	,('DT007.1', '2024-05-02', NULL, 'NV116', 'BN007',N'Bệnh tiểu đường')
	,('DT008.1', '2024-05-02', NULL, 'NV068', 'BN008',N'Viêm Họng')
	,('DT009.1', '2024-05-02', NULL, 'NV069', 'BN009',N'Đột quỵ')
	,('DT010.1', '2024-05-02', NULL, 'NV085', 'BN010',N'Sỏi thận')
	,('DT011.1', '2024-05-02', NULL, 'NV053', 'BN011',N'Sỏi thận')
	,('DT012.1', '2024-05-02', NULL, 'NV054', 'BN012',N'Sốt xuất huyết')
	,('DT013.1', '2024-05-02', NULL, 'NV070', 'BN013',N'Tiêu chảy')
	,('DT014.1', '2024-05-02', NULL, 'NV087', 'BN014',N'Tăng giáp')
	,('DT015.1', '2024-05-02', NULL, 'NV103', 'BN015',N'Hen suyễn')
	,('DT016.1', '2024-05-02', NULL, 'NV055', 'BN016',N'Suy tim')
	,('DT017.1', '2024-05-02', NULL, 'NV072', 'BN017',N'Rối loạn tăng động giảm chú ý')
	,('DT018.1', '2024-05-02', NULL, 'NV088', 'BN018',N'Đau dây thần kinh toàn thân')
	,('DT019.1', '2024-05-02', NULL, 'NV071', 'BN019',N'Đau lưng')
	,('DT020.1', '2024-05-02', NULL, 'NV056', 'BN020',N'Đau lưng')
	,('DT021.1', '2024-05-02', NULL, 'NV089', 'BN021',N'Psoriasis')
	,('DT022.1', '2024-05-02', NULL, 'NV073', 'BN022',N'Đau đầu')
	,('DT023.1', '2024-05-02', NULL, 'NV057', 'BN023',N'Chàm')
	,('DT024.1', '2024-05-02', NULL, 'NV058', 'BN024',N'Chấn thương cơ và xương')
	,('DT025.1', '2024-05-02', NULL, 'NV074', 'BN025',N'Chấn thương gối')
	,('DT026.1', '2024-05-02', NULL, 'NV090', 'BN026',N'Tăng cortisol')
	,('DT027.1', '2024-05-02', NULL, 'NV059', 'BN027',N'Rối loạn kinh nguyệt')
	,('DT028.1', '2024-05-02', NULL, 'NV075', 'BN028',N'U xơ tử cung')
	,('DT029.1', '2024-05-02', NULL, 'NV091', 'BN029',N'Ung thư tử cung')
	,('DT030.1', '2024-05-02', NULL, 'NV060', 'BN030',N'Đau dây thần kinh')
	,('DT031','2024-04-13',NULL,'NV076','BN031',N'Đau đầu')
	,('DT032','2024-04-13',NULL,'NV092','BN032',N'Rối loạn chức năng thần kinh')
	,('DT033','2024-04-13',NULL,'NV061','BN033',N'Sâu răng')
	,('DT034','2024-04-13',NULL,'NV077','BN034',N'Tắc nghẽn đường hô hấp khi ngủ')
	,('DT035','2024-04-13',NULL,'NV093','BN035',N'Loại bỏ răng sâu, trồng răng mới')
	,('DT036','2024-04-13',NULL,'NV062','BN036',N'Hen suyễn')
	,('DT037','2024-04-13',NULL,'NV078','BN037',N'Nhồi máu cơ tim')
	,('DT038','2024-04-13',NULL,'NV094','BN038',N'Đột quỵ')
	,('DT039','2024-04-13',NULL,'NV079','BN039',N'Ung thư dạ dày')
	,('DT040','2024-04-13',NULL,'NV095','BN040',N'Ung thư da')
	,('DT041','2024-04-13',NULL,'NV111','BN041',N'Ung thư phổi')
	,('DT042','2024-04-13',NULL,'NV063','BN042',N'Ung thư não')
	,('DT043','2024-04-13',NULL,'NV064','BN043',N'Nhồi máu cơ tim')
	,('DT044','2024-04-13',NULL,'NV080','BN044',N'Động mạch vành')
	,('DT045','2024-04-13',NULL,'NV097','BN045',N'Suy tim')
	,('DT046','2024-04-13',NULL,'NV081','BN046',N'Thoái hóa đốt sống cổ')
	,('DT047','2024-04-13',NULL,'NV096','BN047',N'Gai cột sống')
	,('DT048','2024-04-13',NULL,'NV065','BN048',N'Bradycardia')
	,('DT049','2024-04-13',NULL,'NV098','BN049',N'Gãy xương')
	,('DT050','2024-04-13',NULL,'NV114','BN050',N'Cong vẹo cột sống')
	,('DT051','2024-04-13',NULL,'NV130','BN051',N'Cong vẹo ngược cột sống')
	,('DT052','2024-04-13',NULL,'NV049','BN052',N'Rách cơ')
	,('DT053','2024-04-13',NULL,'NV050','BN053',N'Tổn thương dây chằng và gân')
	,('DT054','2024-04-13',NULL,'NV066','BN054',N'Gãy xương ở cẳng tay')
	,('DT055','2024-04-13',NULL,'NV082','BN055',N'Trẹo cổ chân')
	,('DT056','2024-04-13',NULL,'NV099','BN056',N'Nhồi máu cơ tim')
	,('DT057','2024-04-13',NULL,'NV115','BN057',N'Suy tim')
	,('DT058','2024-04-13',NULL,'NV131','BN058',N'Nhiễm trùng ruột')
	,('DT059','2024-04-13',NULL,'NV168','BN059',N'Bradycardia')
	,('DT060','2024-04-13',NULL,'NV183','BN060',N'Viêm đại tràng')
	,('DT061','2024-04-13',NULL,'NV132','BN061',N'Huyết áp thấp')
	,('DT062','2024-04-13',NULL,'NV198','BN062',N'Suy thận')
	,('DT063','2024-04-13',NULL,'NV152','BN063',N'Sốt')
	,('DT064','2024-04-13',NULL,'NV117','BN064',N'Đột quỵ')
	,('DT065','2024-04-13',NULL,'NV133','BN065',N'Viêm phổi')
	,('DT066','2024-04-13',NULL,'NV101','BN066',N'Viêm bàng quang')
	,('DT067','2024-04-13',NULL,'NV086','BN067',N'Sốt rét')
	,('DT068','2024-04-13',NULL,'NV102','BN068',N'Tiểu đường')
	,('DT069','2024-04-13',NULL,'NV155','BN069',N'Tăng prolactin')
	,('DT070','2024-04-13',NULL,'NV169','BN070',N'Viêm phổi')
	,('DT071','2024-04-13',NULL,'NV135','BN071',N'Suy tim')
	,('DT072','2024-04-13',NULL,'NV119','BN072',N'Rối loạn hành vi')
	,('DT073','2024-04-13',NULL,'NV136','BN073',N'Suy giảm chức năng thần kinh')
	,('DT074','2024-04-13',NULL,'NV120','BN074',N'Căng cơ')
	,('DT075','2024-04-13',NULL,'NV104','BN075',N'Suy thận')
	,('DT076','2024-04-13',NULL,'NV105','BN076',N'Chàm')
	,('DT077','2024-04-13',NULL,'NV121','BN077',N'Psoriasis')
	,('DT078','2024-04-13',NULL,'NV137','BN078',N'Tăng cortisol')
	,('DT079','2024-04-13',NULL,'NV106','BN079',N'Chấn thương cơ và xương')
	,('DT080','2024-04-13',NULL,'NV122','BN080',N'Chấn thương gối')
	,('DT081','2024-04-13',NULL,'NV138','BN081',N'Tăng cortisol')
	,('DT082','2024-04-13',NULL,'NV107','BN082',N'Rối loạn kinh nguyệt')
	,('DT083','2024-04-13',NULL,'NV123','BN083',N'U xơ tử cung')
	,('DT084','2024-04-13',NULL,'NV139','BN084',N'Ung thư tử cung')
	,('DT085','2024-04-13',NULL,'NV108','BN085',N'Đau dây thần kinh')
	,('DT086','2024-04-13',NULL,'NV124','BN086',N'Đau đầu')
	,('DT087','2024-04-13',NULL,'NV140','BN087',N'Rối loạn chức năng thần kinh')
	,('DT088','2024-04-13',NULL,'NV109','BN088',N'Sâu răng')
	,('DT089','2024-04-13',NULL,'NV125','BN089',N'Tắc nghẽn đường hô hấp khi ngủ')
	,('DT090','2024-04-13',NULL,'NV141','BN090',N'Sâu răng')
	,('DT091','2024-04-13',NULL,'NV110','BN091',N'Viêm phổi')
	,('DT092','2024-04-13',NULL,'NV126','BN092',N'Nhồi máu cơ tim')
	,('DT093','2024-04-13',NULL,'NV142','BN093',N'Đột quỵ')
	,('DT094','2024-04-13',NULL,'NV143','BN094',N'Ung thư dạ dày')
	,('DT095','2024-04-13',NULL,'NV163','BN095',N'Ung thư da')
	,('DT096','2024-04-13',NULL,'NV178','BN096',N'Ung thư phổi')
	,('DT097','2024-04-13',NULL,'NV127','BN097',N'Ung thư não')
	,('DT098','2024-04-13',NULL,'NV112','BN098',N'Nhồi máu cơ tim')
	,('DT099','2024-04-13',NULL,'NV128','BN099',N'Động mạch vành')
	,('DT100','2024-04-13',NULL,'NV145','BN100',N'Suy tim')
	,('DT101','2024-04-13',NULL,'NV129','BN101',N'Thoái hóa đốt sống cổ')
	,('DT102','2024-04-13',NULL,'NV144','BN102',N'Gai cột sống')
	,('DT103','2024-04-13',NULL,'NV113','BN103',N'Gai cột sống')
	,('DT104','2024-04-13',NULL,'NV150','BN104',N'Gãy xương')
	,('DT105','2024-04-13',NULL,'NV197','BN105',N'Cong vẹo cột sống')
	,('DT106','2024-04-13',NULL,'NV146','BN106',N'Cong vẹo ngược cột sống')
	,('DT107','2024-04-13',NULL,'NV147','BN107',N'Rách cơ')
	,('DT108','2024-04-13',NULL,'NV148','BN108',N'Tổn thương dây chằng và gân')
	,('DT109','2024-04-13',NULL,'NV149','BN109',N'Gãy xương ở cẳng tay')
	,('DT110','2024-04-13',NULL,'NV151','BN110',N'Trẹo cổ chân')
	,('DT111','2024-04-13',NULL,'NV166','BN111',N'Nhồi máu cơ tim')
	,('DT112','2024-04-13',NULL,'NV182','BN112',N'Suy tim')
	,('DT113','2024-04-13',NULL,'NV084','BN113',N'Nhiễm trùng ruột')
	,('DT114','2024-04-13',NULL,'NV100','BN114',N'Bradycardia')
	,('DT115','2024-04-13',NULL,'NV199','BN115',N'Viêm đại tràng')
	,('DT116','2024-04-13',NULL,'NV116','BN116',N'Huyết áp thấp')
	,('DT117','2024-04-13',NULL,'NV200','BN117',N'Suy thận')
	,('DT118','2024-04-13',NULL,'NV167','BN118',N'Sốt')
	,('DT119','2024-04-13',NULL,'NV184','BN119',N'Đột quỵ')
	,('DT120','2024-04-13',NULL,'NV153','BN120',N'Viêm đại tràng')
	,('DT121','2024-04-13',NULL,'NV118','BN121',N'Viêm bàng quang')
	,('DT122','2024-04-13',NULL,'NV134','BN122',N'Sốt rét')
	,('DT123','2024-04-13',NULL,'NV087','BN123',N'Tiểu đường')
	,('DT124','2024-04-13',NULL,'NV103','BN124',N'Viêm phổi')
	,('DT125','2024-04-13',NULL,'NV186','BN125',N'Suy tim')
	,('DT126','2024-04-13',NULL,'NV185','BN126',N'Rối loạn hành vi')
	,('DT127','2024-04-13',NULL,'NV187','BN127',N'Suy giảm chức năng thần kinh')
	,('DT128','2024-04-13',NULL,'NV172','BN128',N'Căng cơ')
	,('DT129','2024-04-13',NULL,'NV156','BN129',N'Căng cơ')
	,('DT130','2024-04-13',NULL,'NV157','BN130',N'Chàm')
	,('DT131','2024-04-13',NULL,'NV171','BN131',N'Psoriasis')
	,('DT132','2024-04-13',NULL,'NV188','BN132',N'Tăng cortisol')
	,('DT133','2024-04-13',NULL,'NV158','BN133',N'Chấn thương cơ và xương')
	,('DT134','2024-04-13',NULL,'NV173','BN134',N'Chấn thương gối')
	,('DT135','2024-04-13',NULL,'NV189','BN135',N'Tăng cortisol')
	,('DT136','2024-04-13',NULL,'NV159','BN136',N'Rối loạn kinh nguyệt')
	,('DT137','2024-04-13',NULL,'NV174','BN137',N'U xơ tử cung')
	,('DT138','2024-04-13',NULL,'NV190','BN138',N'Ung thư tử cung')
	,('DT139','2024-04-13',NULL,'NV160','BN139',N'Đau dây thần kinh')
	,('DT140','2024-04-13',NULL,'NV175','BN140',N'Đau đầu')
	,('DT141','2024-04-13',NULL,'NV191','BN141',N'Rối loạn chức năng thần kinh')
	,('DT142','2024-04-13',NULL,'NV161','BN142',N'Sâu răng')
	,('DT143','2024-04-13',NULL,'NV176','BN143',N'Tắc nghẽn đường hô hấp khi ngủ')
	,('DT144','2024-04-13',NULL,'NV192','BN144',N'Sâu răng')
	,('DT145','2024-04-13',NULL,'NV162','BN145',N'Viêm phổi')
	,('DT146','2024-04-13',NULL,'NV177','BN146',N'Nhồi máu cơ tim')
	,('DT147','2024-04-13',NULL,'NV193','BN147',N'Đột quỵ')
	,('DT148','2024-04-13',NULL,'NV079','BN148',N'Ung thư dạ dày')
	,('DT149','2024-04-13',NULL,'NV164','BN149',N'Nhồi máu cơ tim')
	,('DT150','2024-04-13',NULL,'NV180','BN150',N'Thoái hóa đốt sống cổ')
-----Chen DL cho ChiTietDonThuoc
go
insert into ChiTietDonThuoc (MaDonThuoc,MaThuoc,SoLuong, CachDung, TongTien)
values
	  ('DT001','TH200',3,N'1 ngày 3 lần',NULL)
	 ,('DT001','TH001',3,N'1 ngày 3 lần',NULL)
	 ,('DT001','TH002',3,N'1 ngày 3 lần',NULL)
	 ,('DT001.1','TH200',3,N'1 ngày 3 lần',NULL)
	 ,('DT001.1','TH001',3,N'1 ngày 3 lần',NULL)
	 ,('DT001.1','TH002',3,N'1 ngày 3 lần',NULL)

	 ,('DT002','TH100',3,N'1 ngày 3 lần',NULL)
	 ,('DT002','TH077',3,N'1 ngày 3 lần',NULL)
	 ,('DT003','TH100',3,N'1 ngày 3 lần',NULL)
	 ,('DT003','TH077',3,N'1 ngày 3 lần',NULL)
	 ,('DT004','TH112',3,N'1 ngày 3 lần',NULL)
	 ,('DT004','TH012',3,N'1 ngày 3 lần',NULL)
	 ,('DT005','TH100',3,N'1 ngày 3 lần',NULL)
	 ,('DT005','TH077',3,N'1 ngày 3 lần',NULL)
	 ,('DT005','TH115',3,N'1 ngày 3 lần',NULL)
	 ,('DT006','TH134',3,N'1 ngày 3 lần',NULL)
	 ,('DT006','TH030',3,N'1 ngày 3 lần',NULL)
	 ,('DT007','TH029',3,N'1 ngày 3 lần',NULL)
	 ,('DT007','TH028',2,N'1 ngày 2 lần',NULL)
	 ,('DT008','TH045',2,N'1 ngày 2 lần',NULL)
	 ,('DT008','TH065',2,N'1 ngày 1 lần',NULL)
	 ,('DT008','TH046',4,N'1 ngày 2 lần',NULL)
	 ,('DT009','TH002',6,N'1 ngày 3 lần',NULL)
	 ,('DT009','TH001',3,N'1 ngày 3 lần',NULL)
	 ,('DT009','TH099',6,N'1 ngày 3 lần',NULL)
	 ,('DT010','TH072',9,N'1 ngày 3 lần',NULL)
	 ,('DT010','TH092',3,N'1 ngày 3 lần',NULL)
	 ,('DT010','TH082',3,N'1 ngày 3 lần',NULL)
	 ,('DT011','TH067',6,N'1 ngày 3 lần',NULL)
	 ,('DT011','TH033',3,N'1 ngày 3 lần',NULL)
	 ,('DT011','TH051',6,N'1 ngày 3 lần',NULL)
	 ,('DT012','TH065',3,N'1 ngày 3 lần',NULL)
	 ,('DT012','TH110',3,N'1 ngày 3 lần',NULL)
	 ,('DT012','TH109',3,N'1 ngày 3 lần',NULL)
	 ,('DT013','TH100',3,N'1 ngày 3 lần',NULL)
	 ,('DT013','TH098',3,N'1 ngày 3 lần',NULL)
	 ,('DT013','TH182',6,N'1 ngày 3 lần',NULL)
	 ,('DT014','TH188',9,N'1 ngày 3 lần',NULL)
	 ,('DT014','TH190',3,N'1 ngày 3 lần',NULL)
	 ,('DT014','TH192',3,N'1 ngày 3 lần',NULL)
	 ,('DT015','TH167',6,N'1 ngày 3 lần',NULL)
	 ,('DT015','TH179',9,N'1 ngày 3 lần',NULL)
	 ,('DT016','TH142',6,N'1 ngày 3 lần',NULL)
	 ,('DT016','TH136',9,N'1 ngày 3 lần',NULL)
	 ,('DT017','TH134',3,N'1 ngày 3 lần',NULL)
	 ,('DT017','TH012',9,N'1 ngày 3 lần',NULL)
	 ,('DT017','TH011',6,N'1 ngày 3 lần',NULL)
	 ,('DT018','TH009',3,N'1 ngày 3 lần',NULL)
	 ,('DT018','TH008',3,N'1 ngày 3 lần',NULL)
	 ,('DT018','TH010',6,N'1 ngày 3 lần',NULL)
	 ,('DT018','TH020',9,N'1 ngày 3 lần',NULL)
	 ,('DT019','TH012',6,N'1 ngày 3 lần',NULL)
	 ,('DT019','TH022',3,N'1 ngày 3 lần',NULL)
	 ,('DT019','TH020',9,N'1 ngày 3 lần',NULL)
	 ,('DT020','TH004',9,N'1 ngày 3 lần',NULL)
	 ,('DT020','TH012',6,N'1 ngày 3 lần',NULL)
	 ,('DT020','TH015',3,N'1 ngày 3 lần',NULL)
	 ,('DT021','TH013',3,N'1 ngày 3 lần',NULL)
	 ,('DT021','TH014',3,N'1 ngày 3 lần',NULL)
	 ,('DT021','TH015',3,N'1 ngày 3 lần',NULL)
	 ,('DT022','TH016',6,N'1 ngày 3 lần',NULL)
	 ,('DT022','TH089',6,N'1 ngày 3 lần',NULL)
	 ,('DT023','TH030',9,N'1 ngày 3 lần',NULL)
	 ,('DT023','TH026',9,N'1 ngày 3 lần',NULL)
	 ,('DT023','TH020',9,N'1 ngày 3 lần',NULL)
	 ,('DT023','TH022',9,N'1 ngày 3 lần',NULL)
	 ,('DT024','TH021',3,N'1 ngày 3 lần',NULL)
	 ,('DT024','TH049',6,N'1 ngày 3 lần',NULL)
	 ,('DT024','TH134',9,N'1 ngày 3 lần',NULL)
	 ,('DT025','TH123',9,N'1 ngày 3 lần',NULL)
	 ,('DT025','TH099',9,N'1 ngày 3 lần',NULL)
	 ,('DT025','TH076',6,N'1 ngày 3 lần',NULL)
	 ,('DT026','TH034',6,N'1 ngày 3 lần',NULL)
	 ,('DT026','TH144',9,N'1 ngày 3 lần',NULL)
	 ,('DT026','TH193',3,N'1 ngày 3 lần',NULL)
	 ,('DT027','TH192',3,N'1 ngày 3 lần',NULL)
	 ,('DT027','TH188',6,N'1 ngày 3 lần',NULL)
	 ,('DT028','TH187',9,N'1 ngày 3 lần',NULL)
	 ,('DT028','TH200',6,N'1 ngày 3 lần',NULL)
	 ,('DT028','TH114',3,N'1 ngày 3 lần',NULL)
	 ,('DT029','TH126',6,N'1 ngày 3 lần',NULL)
	 ,('DT029','TH124',9,N'1 ngày 3 lần',NULL)
	 ,('DT030','TH113',6,N'1 ngày 3 lần',NULL)
	 ,('DT030','TH143',6,N'1 ngày 3 lần',NULL)
	 ,('DT030','TH123',6,N'1 ngày 3 lần',NULL)
	 ,('DT030','TH173',6,N'1 ngày 3 lần',NULL)
	 ,('DT002.1', 'TH100', 3, N'1 ngày 3 lần', NULL)
	 ,('DT002.1', 'TH077', 3, N'1 ngày 3 lần', NULL)
	 ,('DT003.1', 'TH100', 3, N'1 ngày 3 lần', NULL)
	 ,('DT003.1', 'TH077', 3, N'1 ngày 3 lần', NULL)
	 ,('DT004.1', 'TH112', 3, N'1 ngày 3 lần', NULL)
	 ,('DT004.1', 'TH012', 3, N'1 ngày 3 lần', NULL)
	 ,('DT005.1', 'TH100', 3, N'1 ngày 3 lần', NULL)
	 ,('DT005.1', 'TH077', 3, N'1 ngày 3 lần', NULL)
	 ,('DT005.1', 'TH115', 3, N'1 ngày 3 lần', NULL)
	 ,('DT006.1', 'TH134', 3, N'1 ngày 3 lần', NULL)
 	 ,('DT006.1','TH030',3,N'1 ngày 3 lần',NULL)
	 ,('DT007.1', 'TH029', 3, N'1 ngày 3 lần', NULL)
	 ,('DT007.1', 'TH028', 2, N'1 ngày 2 lần', NULL)
	 ,('DT008.1', 'TH045', 2, N'1 ngày 2 lần', NULL)
	 ,('DT008.1', 'TH065', 2, N'1 ngày 1 lần', NULL)
	 ,('DT008.1', 'TH046', 4, N'1 ngày 2 lần', NULL)
	 ,('DT009.1', 'TH002', 6, N'1 ngày 3 lần', NULL)
	 ,('DT009.1', 'TH001', 3, N'1 ngày 3 lần', NULL)
	 ,('DT009.1', 'TH099', 6, N'1 ngày 3 lần', NULL)
	 ,('DT010.1', 'TH072', 9, N'1 ngày 3 lần', NULL)
	 ,('DT010.1', 'TH092', 3, N'1 ngày 3 lần', NULL)
	 ,('DT010.1', 'TH082', 3, N'1 ngày 3 lần', NULL)
	 ,('DT011.1', 'TH067', 6, N'1 ngày 3 lần', NULL)
	 ,('DT011.1', 'TH033', 3, N'1 ngày 3 lần', NULL)
	 ,('DT011.1', 'TH051', 6, N'1 ngày 3 lần', NULL)
	 ,('DT012.1', 'TH065', 3, N'1 ngày 3 lần', NULL)
	 ,('DT012.1', 'TH110', 3, N'1 ngày 3 lần', NULL)
	 ,('DT012.1', 'TH109', 3, N'1 ngày 3 lần', NULL)
	 ,('DT013.1', 'TH100', 3, N'1 ngày 3 lần', NULL)
	 ,('DT013.1', 'TH098', 3, N'1 ngày 3 lần', NULL)
	 ,('DT013.1', 'TH182', 6, N'1 ngày 3 lần', NULL)
	 ,('DT014.1', 'TH188', 9, N'1 ngày 3 lần', NULL)
	 ,('DT014.1', 'TH190', 3, N'1 ngày 3 lần', NULL)
	 ,('DT014.1', 'TH192', 3, N'1 ngày 3 lần', NULL)
	 ,('DT015.1', 'TH167', 6, N'1 ngày 3 lần', NULL)
	 ,('DT015.1', 'TH179', 9, N'1 ngày 3 lần', NULL)
	 ,('DT016.1', 'TH142', 6, N'1 ngày 3 lần', NULL)
	 ,('DT016.1', 'TH136', 9, N'1 ngày 3 lần', NULL)
	 ,('DT017.1', 'TH134', 3, N'1 ngày 3 lần', NULL)
	 ,('DT017.1', 'TH012', 9, N'1 ngày 3 lần', NULL)
	 ,('DT017.1', 'TH011', 6, N'1 ngày 3 lần', NULL)
	 ,('DT018.1', 'TH009', 3, N'1 ngày 3 lần', NULL)
	 ,('DT018.1', 'TH008', 3, N'1 ngày 3 lần', NULL)
	 ,('DT018.1', 'TH010', 6, N'1 ngày 3 lần', NULL)
	 ,('DT018.1', 'TH020', 9, N'1 ngày 3 lần', NULL)
	 ,('DT019.1', 'TH012', 6, N'1 ngày 3 lần', NULL)
	 ,('DT019.1', 'TH022', 3, N'1 ngày 3 lần', NULL)
	 ,('DT019.1', 'TH020', 9, N'1 ngày 3 lần', NULL)
	 ,('DT020.1', 'TH004', 9, N'1 ngày 3 lần', NULL)
	 ,('DT020.1', 'TH012', 6, N'1 ngày 3 lần', NULL)
	 ,('DT020.1', 'TH015', 3, N'1 ngày 3 lần', NULL)
	 ,('DT021.1', 'TH013', 3, N'1 ngày 3 lần', NULL)
	 ,('DT021.1', 'TH014', 3, N'1 ngày 3 lần', NULL)
	 ,('DT021.1', 'TH015', 3, N'1 ngày 3 lần', NULL)
	 ,('DT022.1', 'TH016', 6, N'1 ngày 3 lần', NULL)
	 ,('DT022.1', 'TH089', 6, N'1 ngày 3 lần', NULL)
	 ,('DT023.1', 'TH030', 9, N'1 ngày 3 lần', NULL)
	 ,('DT023.1', 'TH026', 9, N'1 ngày 3 lần', NULL)
	 ,('DT023.1', 'TH020', 9, N'1 ngày 3 lần', NULL)
	 ,('DT023.1', 'TH022', 9, N'1 ngày 3 lần', NULL)
	 ,('DT024.1', 'TH021', 3, N'1 ngày 3 lần', NULL)
	 ,('DT024.1', 'TH049', 6, N'1 ngày 3 lần', NULL)
	 ,('DT024.1', 'TH134', 9, N'1 ngày 3 lần', NULL)
	 ,('DT025.1', 'TH123', 9, N'1 ngày 3 lần', NULL)
	 ,('DT025.1', 'TH099', 9, N'1 ngày 3 lần', NULL)
	 ,('DT025.1', 'TH076', 6, N'1 ngày 3 lần', NULL)
	 ,('DT026.1', 'TH034', 6, N'1 ngày 3 lần', NULL)
	 ,('DT026.1', 'TH144', 9, N'1 ngày 3 lần', NULL)
	 ,('DT026.1', 'TH193', 3, N'1 ngày 3 lần', NULL)
	 ,('DT027.1', 'TH192', 3, N'1 ngày 3 lần', NULL)
	 ,('DT027.1', 'TH188', 6, N'1 ngày 3 lần', NULL)
	 ,('DT028.1', 'TH187', 9, N'1 ngày 3 lần', NULL)
	 ,('DT028.1', 'TH200', 6, N'1 ngày 3 lần', NULL)
	 ,('DT028.1', 'TH114', 3, N'1 ngày 3 lần', NULL)
	 ,('DT029.1', 'TH126', 6, N'1 ngày 3 lần', NULL)
	 ,('DT029.1', 'TH124', 9, N'1 ngày 3 lần', NULL)
	 ,('DT030.1', 'TH113', 6, N'1 ngày 3 lần', NULL)
	 ,('DT030.1', 'TH143', 6, N'1 ngày 3 lần', NULL)
	 ,('DT030.1', 'TH123', 6, N'1 ngày 3 lần', NULL)
	 ,('DT030.1', 'TH173', 6, N'1 ngày 3 lần', NULL)
	 ,('DT031','TH008',3,N'1 ngày 3 lần',NULL)
	 ,('DT031','TH018',3,N'1 ngày 3 lần',NULL)
	 ,('DT031','TH038',3,N'1 ngày 3 lần',NULL)
	 ,('DT032','TH048',3,N'1 ngày 3 lần',NULL)
	 ,('DT032','TH028',3,N'1 ngày 3 lần',NULL)
	 ,('DT032','TH078',3,N'1 ngày 3 lần',NULL)
	 ,('DT032','TH098',3,N'1 ngày 3 lần',NULL)
	 ,('DT033','TH007',6,N'1 ngày 3 lần',NULL)
	 ,('DT033','TH017',6,N'1 ngày 3 lần',NULL)
	 ,('DT033','TH027',6,N'1 ngày 3 lần',NULL)
	 ,('DT033','TH037',6,N'1 ngày 3 lần',NULL)
	 ,('DT034','TH056',9,N'1 ngày 3 lần',NULL)
	 ,('DT034','TH066',9,N'1 ngày 3 lần',NULL)
	 ,('DT034','TH086',9,N'1 ngày 3 lần',NULL)
	 ,('DT035','TH093',3,N'1 ngày 3 lần',NULL)
	 ,('DT035','TH033',3,N'1 ngày 3 lần',NULL)
	 ,('DT035','TH073',3,N'1 ngày 3 lần',NULL)
	 ,('DT035','TH053',3,N'1 ngày 3 lần',NULL)
	 ,('DT036','TH034',9,N'1 ngày 3 lần',NULL)
	 ,('DT036','TH084',9,N'1 ngày 3 lần',NULL)
	 ,('DT036','TH094',9,N'1 ngày 3 lần',NULL)
	 ,('DT036','TH044',9,N'1 ngày 3 lần',NULL)
	 ,('DT037','TH052',6,N'1 ngày 3 lần',NULL)
	 ,('DT037','TH051',3,N'1 ngày 3 lần',NULL)
	 ,('DT037','TH054',3,N'1 ngày 3 lần',NULL)
	 ,('DT038','TH087',3,N'1 ngày 3 lần',NULL)
	 ,('DT038','TH023',3,N'1 ngày 3 lần',NULL)
	 ,('DT039','TH183',3,N'1 ngày 3 lần',NULL)
	 ,('DT039','TH128',6,N'1 ngày 3 lần',NULL)
	 ,('DT039','TH112',3,N'1 ngày 3 lần',NULL)
	 ,('DT040','TH123',3,N'1 ngày 3 lần',NULL)
	 ,('DT040','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT040','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT041','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT041','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT042','TH123',3,N'1 ngày 3 lần',NULL)
	 ,('DT042','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT042','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT043','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT043','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT044','TH123',3,N'1 ngày 3 lần',NULL)
	 ,('DT044','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT044','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT045','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT045','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT045','TH123',3,N'1 ngày 3 lần',NULL)
	 ,('DT046','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT046','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT046','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT047','TH120',6,N'1 ngày 3 lần',NULL)
	 ,('DT047','TH130',6,N'1 ngày 3 lần',NULL)
	 ,('DT047','TH090',6,N'1 ngày 3 lần',NULL)
	 ,('DT048','TH200',6,N'1 ngày 3 lần',NULL)
	 ,('DT048','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT048','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT049','TH123',3,N'1 ngày 3 lần',NULL)
	 ,('DT049','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT050','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT050','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT050','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT051','TH156',6,N'1 ngày 3 lần',NULL)
	 ,('DT051','TH133',6,N'1 ngày 3 lần',NULL)
	 ,('DT051','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT052','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT052','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT052','TH123',3,N'1 ngày 3 lần',NULL)
	 ,('DT053','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT053','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT054','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT054','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT054','TH136',6,N'1 ngày 3 lần',NULL)
	 ,('DT055','TH087',6,N'1 ngày 3 lần',NULL)
	 ,('DT055','TH136',6,N'1 ngày 3 lần',NULL)
	 ,('DT056','TH129',9,N'1 ngày 3 lần',NULL)
	 ,('DT056','TH139',6,N'1 ngày 3 lần',NULL)
	 ,('DT056','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT057','TH007',6,N'1 ngày 3 lần',NULL)
	 ,('DT057','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT058','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT058','TH133',6,N'1 ngày 3 lần',NULL)
	 ,('DT058','TH139',6,N'1 ngày 3 lần',NULL)
	 ,('DT059','TH124',6,N'1 ngày 3 lần',NULL)
	 ,('DT059','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT060','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT060','TH101',6,N'1 ngày 3 lần',NULL)
	 ,('DT060','TH102',6,N'1 ngày 3 lần',NULL)
	 ,('DT061','TH103',6,N'1 ngày 3 lần',NULL)
	 ,('DT061','TH104',6,N'1 ngày 3 lần',NULL)
	 ,('DT061','TH105',9,N'1 ngày 3 lần',NULL)
	 ,('DT062','TH106',6,N'1 ngày 3 lần',NULL)
	 ,('DT062','TH107',6,N'1 ngày 3 lần',NULL)
	 ,('DT063','TH108',6,N'1 ngày 3 lần',NULL)
	 ,('DT063','TH109',6,N'1 ngày 3 lần',NULL)
	 ,('DT063','TH110',9,N'1 ngày 3 lần',NULL)
	 ,('DT064','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT064','TH112',6,N'1 ngày 3 lần',NULL)
	 ,('DT065','TH113',6,N'1 ngày 3 lần',NULL)
	 ,('DT065','TH114',6,N'1 ngày 3 lần',NULL)
	 ,('DT066','TH115',9,N'1 ngày 3 lần',NULL)
	 ,('DT066','TH116',6,N'1 ngày 3 lần',NULL)
	 ,('DT066','TH117',6,N'1 ngày 3 lần',NULL)
	 ,('DT067','TH118',6,N'1 ngày 3 lần',NULL)
	 ,('DT067','TH119',6,N'1 ngày 3 lần',NULL)
	 ,('DT068','TH113',6,N'1 ngày 3 lần',NULL)
	 ,('DT068','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT069','TH001',6,N'1 ngày 3 lần',NULL)
	 ,('DT069','TH002',6,N'1 ngày 3 lần',NULL)
	 ,('DT069','TH006',9,N'1 ngày 3 lần',NULL)
	 ,('DT070','TH098',6,N'1 ngày 3 lần',NULL)
	 ,('DT070','TH009',6,N'1 ngày 3 lần',NULL)
	 ,('DT070','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT071','TH166',6,N'1 ngày 3 lần',NULL)
	 ,('DT071','TH122',6,N'1 ngày 3 lần',NULL)
	 ,('DT071','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT072','TH198',6,N'1 ngày 3 lần',NULL)
	 ,('DT072','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT072','TH098',9,N'1 ngày 3 lần',NULL)
	 ,('DT073','TH109',6,N'1 ngày 3 lần',NULL)
	 ,('DT073','TH138',6,N'1 ngày 3 lần',NULL)
	 ,('DT073','TH140',6,N'1 ngày 3 lần',NULL)
	 ,('DT074','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT074','TH013',6,N'1 ngày 3 lần',NULL)
	 ,('DT074','TH018',6,N'1 ngày 3 lần',NULL)
	 ,('DT075','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT075','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT076','TH188',6,N'1 ngày 3 lần',NULL)
	 ,('DT076','TH177',6,N'1 ngày 3 lần',NULL)
	 ,('DT076','TH166',6,N'1 ngày 3 lần',NULL)
	 ,('DT077','TH155',6,N'1 ngày 3 lần',NULL)
	 ,('DT077','TH144',9,N'1 ngày 3 lần',NULL)
	 ,('DT077','TH133',6,N'1 ngày 3 lần',NULL)
	 ,('DT078','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT078','TH122',6,N'1 ngày 3 lần',NULL)
	 ,('DT078','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT079','TH100',6,N'1 ngày 3 lần',NULL)
	 ,('DT079','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT079','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT079','TH198',6,N'1 ngày 3 lần',NULL)
	 ,('DT080','TH197',6,N'1 ngày 3 lần',NULL)
	 ,('DT080','TH196',6,N'1 ngày 3 lần',NULL)
	 ,('DT080','TH195',6,N'1 ngày 3 lần',NULL)
	 ,('DT081','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT081','TH194',9,N'1 ngày 3 lần',NULL)
	 ,('DT082','TH193',6,N'1 ngày 3 lần',NULL)
	 ,('DT082','TH192',6,N'1 ngày 3 lần',NULL)
	 ,('DT082','TH191',6,N'1 ngày 3 lần',NULL)
	 ,('DT083','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT083','TH165',6,N'1 ngày 3 lần',NULL)
	 ,('DT083','TH124',6,N'1 ngày 3 lần',NULL)
	 ,('DT084','TH197',6,N'1 ngày 3 lần',NULL)
	 ,('DT084','TH127',6,N'1 ngày 3 lần',NULL)
	 ,('DT084','TH137',6,N'1 ngày 3 lần',NULL)
	 ,('DT085','TH175',6,N'1 ngày 3 lần',NULL)
	 ,('DT085','TH097',6,N'1 ngày 3 lần',NULL)
	 ,('DT086','TH002',6,N'1 ngày 3 lần',NULL)
	 ,('DT086','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT086','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT087','TH007',6,N'1 ngày 3 lần',NULL)
	 ,('DT087','TH009',6,N'1 ngày 3 lần',NULL)
	 ,('DT087','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT088','TH109',6,N'1 ngày 3 lần',NULL)
	 ,('DT088','TH108',9,N'1 ngày 3 lần',NULL)
	 ,('DT088','TH010',6,N'1 ngày 3 lần',NULL)
	 ,('DT089','TH019',6,N'1 ngày 3 lần',NULL)
	 ,('DT089','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT089','TH189',6,N'1 ngày 3 lần',NULL)
	 ,('DT090','TH154',6,N'1 ngày 3 lần',NULL)
	 ,('DT090','TH163',6,N'1 ngày 3 lần',NULL)
	 ,('DT091','TH153',6,N'1 ngày 3 lần',NULL)
	 ,('DT091','TH112',6,N'1 ngày 3 lần',NULL)
	 ,('DT092','TH121',6,N'1 ngày 3 lần',NULL)
	 ,('DT092','TH022',6,N'1 ngày 3 lần',NULL)
	 ,('DT092','TH098',6,N'1 ngày 3 lần',NULL)
	 ,('DT093','TH189',6,N'1 ngày 3 lần',NULL)
	 ,('DT093','TH157',9,N'1 ngày 3 lần',NULL)
	 ,('DT093','TH156',6,N'1 ngày 3 lần',NULL)
	 ,('DT094','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT094','TH120',6,N'1 ngày 3 lần',NULL)
	 ,('DT095','TH112',6,N'1 ngày 3 lần',NULL)
	 ,('DT095','TH134',6,N'1 ngày 3 lần',NULL)
	 ,('DT096','TH154',9,N'1 ngày 3 lần',NULL)
	 ,('DT096','TH174',6,N'1 ngày 3 lần',NULL)
	 ,('DT096','TH173',6,N'1 ngày 3 lần',NULL)
	 ,('DT097','TH182',6,N'1 ngày 3 lần',NULL)
	 ,('DT097','TH193',6,N'1 ngày 3 lần',NULL)
	 ,('DT098','TH184',6,N'1 ngày 3 lần',NULL)
	 ,('DT098','TH128',6,N'1 ngày 3 lần',NULL)
	 ,('DT098','TH153',6,N'1 ngày 3 lần',NULL)
	 ,('DT099','TH164',6,N'1 ngày 3 lần',NULL)
	 ,('DT099','TH155',6,N'1 ngày 3 lần',NULL)
	 ,('DT100','TH133',6,N'1 ngày 3 lần',NULL)
	 ,('DT100','TH144',6,N'1 ngày 3 lần',NULL)
	 ,('DT101','TH166',6,N'1 ngày 3 lần',NULL)
	 ,('DT101','TH143',9,N'1 ngày 3 lần',NULL)
	 ,('DT101','TH175',6,N'1 ngày 3 lần',NULL)
	 ,('DT102','TH138',6,N'1 ngày 3 lần',NULL)
	 ,('DT102','TH193',6,N'1 ngày 3 lần',NULL)
	 ,('DT102','TH103',6,N'1 ngày 3 lần',NULL)
	 ,('DT103','TH104',6,N'1 ngày 3 lần',NULL)
	 ,('DT103','TH105',9,N'1 ngày 3 lần',NULL)
	 ,('DT104','TH009',6,N'1 ngày 3 lần',NULL)
	 ,('DT104','TH035',6,N'1 ngày 3 lần',NULL)
	 ,('DT104','TH189',6,N'1 ngày 3 lần',NULL)
	 ,('DT105','TH175',6,N'1 ngày 3 lần',NULL)
	 ,('DT105','TH184',6,N'1 ngày 3 lần',NULL)
	 ,('DT106','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT106','TH175',6,N'1 ngày 3 lần',NULL)
	 ,('DT106','TH178',6,N'1 ngày 3 lần',NULL)
	 ,('DT107','TH179',6,N'1 ngày 3 lần',NULL)
	 ,('DT107','TH165',6,N'1 ngày 3 lần',NULL)
	 ,('DT108','TH164',6,N'1 ngày 3 lần',NULL)
	 ,('DT108','TH167',6,N'1 ngày 3 lần',NULL)
	 ,('DT109','TH134',9,N'1 ngày 3 lần',NULL)
	 ,('DT109','TH135',6,N'1 ngày 3 lần',NULL)
	 ,('DT109','TH163',6,N'1 ngày 3 lần',NULL)
	 ,('DT110','TH153',6,N'1 ngày 3 lần',NULL)
	 ,('DT110','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT111','TH178',6,N'1 ngày 3 lần',NULL)
	 ,('DT111','TH165',9,N'1 ngày 3 lần',NULL)
	 ,('DT111','TH112',6,N'1 ngày 3 lần',NULL)
	 ,('DT112','TH111',6,N'1 ngày 3 lần',NULL)
	 ,('DT112','TH110',6,N'1 ngày 3 lần',NULL)
	 ,('DT113','TH134',6,N'1 ngày 3 lần',NULL)
	 ,('DT113','TH195',6,N'1 ngày 3 lần',NULL)
	 ,('DT114','TH187',6,N'1 ngày 3 lần',NULL)
	 ,('DT114','TH183',6,N'1 ngày 3 lần',NULL)
	 ,('DT115','TH193',6,N'1 ngày 3 lần',NULL)
	 ,('DT115','TH138',6,N'1 ngày 3 lần',NULL)
	 ,('DT115','TH155',6,N'1 ngày 3 lần',NULL)
	 ,('DT116','TH177',6,N'1 ngày 3 lần',NULL)
	 ,('DT116','TH183',6,N'1 ngày 3 lần',NULL)
	 ,('DT117','TH185',9,N'1 ngày 3 lần',NULL)
	 ,('DT117','TH189',6,N'1 ngày 3 lần',NULL)
	 ,('DT118','TH163',6,N'1 ngày 3 lần',NULL)
	 ,('DT118','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT118','TH165',6,N'1 ngày 3 lần',NULL)
	 ,('DT119','TH173',6,N'1 ngày 3 lần',NULL)
	 ,('DT119','TH184',9,N'1 ngày 3 lần',NULL)
	 ,('DT120','TH192',6,N'1 ngày 3 lần',NULL)
	 ,('DT120','TH145',6,N'1 ngày 3 lần',NULL)
	 ,('DT121','TH200',6,N'1 ngày 3 lần',NULL)
	 ,('DT121','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT122','TH120',6,N'1 ngày 3 lần',NULL)
	 ,('DT122','TH130',6,N'1 ngày 3 lần',NULL)
	 ,('DT123','TH122',6,N'1 ngày 3 lần',NULL)
	 ,('DT123','TH134',6,N'1 ngày 3 lần',NULL)
	 ,('DT123','TH176',6,N'1 ngày 3 lần',NULL)
	 ,('DT124','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT124','TH123',6,N'1 ngày 3 lần',NULL)
	 ,('DT125','TH125',6,N'1 ngày 3 lần',NULL)
	 ,('DT125','TH127',9,N'1 ngày 3 lần',NULL)
	 ,('DT125','TH135',6,N'1 ngày 3 lần',NULL)
	 ,('DT126','TH137',6,N'1 ngày 3 lần',NULL)
	 ,('DT126','TH019',6,N'1 ngày 3 lần',NULL)
	 ,('DT126','TH023',6,N'1 ngày 3 lần',NULL)
	 ,('DT127','TH021',6,N'1 ngày 3 lần',NULL)
	 ,('DT127','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT128','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT128','TH191',6,N'1 ngày 3 lần',NULL)
	 ,('DT129','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT129','TH191',6,N'1 ngày 3 lần',NULL)
	 ,('DT130','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT130','TH189',6,N'1 ngày 3 lần',NULL)
	 ,('DT131','TH133',6,N'1 ngày 3 lần',NULL)
	 ,('DT131','TH145',6,N'1 ngày 3 lần',NULL)
	 ,('DT132','TH167',6,N'1 ngày 3 lần',NULL)
	 ,('DT132','TH145',6,N'1 ngày 3 lần',NULL)
	 ,('DT132','TH146',6,N'1 ngày 3 lần',NULL)
	 ,('DT133','TH155',6,N'1 ngày 3 lần',NULL)
	 ,('DT133','TH187',9,N'1 ngày 3 lần',NULL)
	 ,('DT133','TH177',6,N'1 ngày 3 lần',NULL)
	 ,('DT134','TH188',6,N'1 ngày 3 lần',NULL)
	 ,('DT134','TH133',6,N'1 ngày 3 lần',NULL)
	 ,('DT135','TH144',6,N'1 ngày 3 lần',NULL)
	 ,('DT135','TH134',6,N'1 ngày 3 lần',NULL)
	 ,('DT136','TH135',9,N'1 ngày 3 lần',NULL)
	 ,('DT136','TH165',6,N'1 ngày 3 lần',NULL)
	 ,('DT137','TH175',6,N'1 ngày 3 lần',NULL)
	 ,('DT137','TH183',6,N'1 ngày 3 lần',NULL)
	 ,('DT137','TH132',6,N'1 ngày 3 lần',NULL)
	 ,('DT138','TH167',6,N'1 ngày 3 lần',NULL)
	 ,('DT138','TH189',6,N'1 ngày 3 lần',NULL)
	 ,('DT140','TH165',6,N'1 ngày 3 lần',NULL)
	 ,('DT140','TH166',6,N'1 ngày 3 lần',NULL)
	 ,('DT141','TH113',6,N'1 ngày 3 lần',NULL)
	 ,('DT141','TH115',6,N'1 ngày 3 lần',NULL)
	 ,('DT142','TH152',6,N'1 ngày 3 lần',NULL)
	 ,('DT142','TH098',6,N'1 ngày 3 lần',NULL)
	 ,('DT143','TH198',9,N'1 ngày 3 lần',NULL)
	 ,('DT143','TH122',6,N'1 ngày 3 lần',NULL)
	 ,('DT144','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT144','TH113',6,N'1 ngày 3 lần',NULL)
	 ,('DT144','TH185',6,N'1 ngày 3 lần',NULL)
	 ,('DT145','TH196',6,N'1 ngày 3 lần',NULL)
	 ,('DT145','TH185',6,N'1 ngày 3 lần',NULL)
	 ,('DT145','TH186',6,N'1 ngày 3 lần',NULL)
	 ,('DT146','TH187',6,N'1 ngày 3 lần',NULL)
	 ,('DT146','TH189',9,N'1 ngày 3 lần',NULL)
	 ,('DT146','TH190',6,N'1 ngày 3 lần',NULL)
	 ,('DT147','TH191',6,N'1 ngày 3 lần',NULL)
	 ,('DT147','TH192',6,N'1 ngày 3 lần',NULL)
	 ,('DT147','TH193',6,N'1 ngày 3 lần',NULL)
	 ,('DT148','TH194',6,N'1 ngày 3 lần',NULL)
	 ,('DT148','TH195',9,N'1 ngày 3 lần',NULL)
	 ,('DT149','TH196',6,N'1 ngày 3 lần',NULL)
	 ,('DT149','TH197',6,N'1 ngày 3 lần',NULL)
	 ,('DT150','TH198',6,N'1 ngày 3 lần',NULL)
	 ,('DT150','TH199',6,N'1 ngày 3 lần',NULL)
	 ,('DT150','TH200',6,N'1 ngày 3 lần',NULL)

go
UPDATE ChiTietDonThuoc
SET [TongTien] =  SoLuong * (SELECT DonGiaThuoc from Thuoc WHERE Thuoc.MaThuoc = ChiTietDonThuoc.MaThuoc);

go
UPDATE DonThuoc
SET [TongTienThuoc] = (SELECT SUM(TongTien) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaDonThuoc = DonThuoc.MaDonThuoc);

--Tính tiền khi có BHYT
go
Update DonThuoc
set TongTienThuoc =
case
WHEN EXISTS (SELECT * FROM TheBHYT WHERE TheBHYT.MaBN = DonThuoc.MaBN) THEN 
            TongTienThuoc * 0.2 -- Giảm 80% khi có BHYT
        ELSE 
            TongTienThuoc -- Giữ nguyên nếu không có BHYT
end;



go
-- STORE
-- Tính tiền thuốc của ChiTietDonThuoc
create proc tinhTienThuoc(@MaThuoc nvarchar(12))
as
begin
UPDATE ChiTietDonThuoc
SET [TongTien] =  SoLuong * (SELECT DonGiaThuoc from Thuoc WHERE Thuoc.MaThuoc = @MaThuoc)
end

go
--Tính tổng tiền thuốc của đơn thuốc
create proc tinhTongTien(@MaDonThuoc nvarchar(12))
as
begin
UPDATE DonThuoc
SET [TongTienThuoc] = (SELECT SUM(TongTien) FROM ChiTietDonThuoc WHERE ChiTietDonThuoc.MaDonThuoc = @MaDonThuoc);
end

go
-- Thêm chi tiết đơn thuốc
create proc themChiTietDT(@MaDonThuoc nvarchar(12), @MaThuoc nvarchar(12), @SoLuong int, @CachDung nvarchar(500))
as
begin
begin TRANSACTION;

Insert into ChiTietDonThuoc(MaDonThuoc, MaThuoc, SoLuong, CachDung)
values (@MaDonThuoc, @MaThuoc, @SoLuong, @CachDung)
exec tinhTienThuoc @MaThuoc
exec tinhTongTien @MaDonThuoc

COMMIT;
end;

go 
-- Xóa chi tiết đơn thuốc và cập nhật tổng tiền của đơn thuốc
create proc xoaChiTietDT(@MaDonThuoc nvarchar(12), @MaThuoc nvarchar(12))
as
begin
begin TRANSACTION;

-- Xóa chi tiết đơn thuốc
DELETE FROM ChiTietDonThuoc WHERE MaDonThuoc = @MaDonThuoc AND MaThuoc = @MaThuoc;

-- Cập nhật tổng tiền của đơn thuốc
exec tinhTongTien @MaDonThuoc;

COMMIT;
end;

go
-- Cập nhật chi tiết đơn thuốc và tổng tiền của đơn thuốc
create proc capNhatChiTietDT(@MaDonThuoc nvarchar(12), @MaThuoc nvarchar(12), @SoLuong int, @CachDung nvarchar(500))
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



go
-- Thêm đơn thuốc
create proc ThemDonThuoc(
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


go
--- Thông tin đơn thuốc của bệnh nhân
create proc ThongTinDonThuoc(@MaDonThuoc nvarchar(12))
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

go

-- Danh sách bệnh nhân theo khoa 
create proc LayDanhSachBenhNhanTheoKhoa(@MaKhoa nvarchar(12))
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

go
----- lấy danh sách nhân viên theo khoa
create proc LayDanhSachNhanVienTheoKhoa(@MaKhoa nvarchar(12))
as
Begin
Select NhanVien.MaNV, NhanVien.HoTenNV, NhanVien.GioiTinh, NhanVien.NgaySinh, ChucVu.TenChucVu, ChuyenNganh.TenChuyenNganh, Khoa.TenKhoa
From NhanVien
JOIN Khoa on NhanVien.MaKhoa = Khoa.MaKhoa
JOIN ChuyenNganh on NhanVien.MaChuyenNganh = ChuyenNganh.MaChuyenNganh
JOIN ChucVu on NhanVien.MaChucVu = ChucVu.MaChucVu
Where NhanVien.MaKhoa = @MaKhoa
End


go

---- lấy thông tin sổ bệnh án
create proc LaySoBenhAnCuaBenhNhan(@MaSBA nvarchar(12))
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


go

--- Danh sách bệnh nhân đang được điều trị tại bệnh viện
create proc DanhSachBenhNhanDieuTri(@NgayBatDau DATETIME, @NgayKetThuc DATETIME)
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


go

--- Danh sách bệnh nhân khám bệnh tại bệnh viện
create proc BaoCaoKhamBenh(@NgayBatDau DATETIME, @NgayKetThuc DATETIME)
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

go
--- Danh sách bệnh nhân khám bệnh tại bệnh viện theo Khoa
create proc BaoCaoKhamBenhTheoKhoa(@NgayBatDau DATETIME, @NgayKetThuc DATETIME, @MaKhoa NVARCHAR(12))
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

go
---Sử dụng dịch vụ
create proc SuDungDichVu(@MaBN nvarchar(12), @MaPhieuKham nvarchar(12))
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

go
CREATE PROCEDURE BaoCaoDoanhThu(@NgayBD DATETIME, @NgayKT DATETIME)
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
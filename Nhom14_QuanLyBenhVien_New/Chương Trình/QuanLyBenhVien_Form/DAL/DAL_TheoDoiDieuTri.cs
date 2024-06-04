using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    
    public class DAL_TheoDoiDieuTri
    {
        public static DAL_TheoDoiDieuTri instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_TheoDoiDieuTri Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_TheoDoiDieuTri();
                }
                return instance;
            }
        }

        //Hiển thị TheoDoiDieuTri lên datagridview
        public IQueryable HienThiBangTDDT()
        {
            IQueryable tddt = from td in dc.TheoDoiDieuTris
                              orderby td.NgayTheoDoi descending
                              select td;
            return tddt;
        }

        //Hiển thị combobox BenhNhan
        public IQueryable HienThiComboboxBenhNhan()
        {
            IQueryable benhNhan = from bn in dc.PhanGiuongs
                                  select bn;
            return benhNhan;
        }

        //Hiển thị combobox NhanVien
        public IQueryable HienThiComboboxNhanVien(string maBN)
        {

            IQueryable nhanVien = from nv in dc.NhanViens
                                  join pb in dc.PhongBenhs
                                  on nv.MaKhoa equals pb.MaKhoa
                                  join pg in dc.PhanGiuongs
                                  on pb.MaPhong equals pg.MaPhong
                                  where pg.MaBN == maBN && nv.MaChucVu == "CV4"
                                  select nv;
            return nhanVien;
        }

        //Hiển thị tên NhanVien theo combobox NhanVien
        public string HienThiTenNhanVien(string maNV)
        {
            var nhanVien = (from nv in dc.NhanViens
                            where nv.MaNV == maNV
                            select nv.HoTenNV).FirstOrDefault();
            return nhanVien;
        }

        //Hiển thị tên BenhNhan theo combobox BenhNhan
        public string HienThiTenBenhNhan(string maBN)
        {
            var benhNhan = (from bn in dc.BenhNhans
                            where bn.MaBN == maBN
                            select bn.HoTenBN).FirstOrDefault();
            return benhNhan;
        }

        //Thêm theo dõi điều trị
        public bool ThemTDDT(string maBN, DateTime ngayTheoDoi, string chiSoCanNang, string chiSoHuyetAp, string chiSoNhipTho, string yLenh, string maNV)
        {
            //Kiểm tra trùng khóa chính
            if (dc.TheoDoiDieuTris.Any(tddt => tddt.MaBN == maBN))
            {
                return false;
            }
            try
            {
                TheoDoiDieuTri tddt = new TheoDoiDieuTri
                {
                    MaBN = maBN,
                    NgayTheoDoi = ngayTheoDoi,
                    ChiSoCanNang = chiSoCanNang,
                    ChiSoHuyetAp = chiSoHuyetAp,
                    ChiSoNhipTho = chiSoNhipTho,
                    YLenh = yLenh,
                    MaNV = maNV
                };
                dc.TheoDoiDieuTris.InsertOnSubmit(tddt);
                return true;
            }
            finally
            {
                dc.SubmitChanges();//Lưu dữ liệu
            }
        }

        public bool XoaTDDT(string maBN, string maNV)
        {
            try
            {
                var delete = from tddt in dc.TheoDoiDieuTris
                             where tddt.MaBN == maBN && tddt.MaNV == maNV
                             select tddt;
                foreach (var i in delete)
                {
                    dc.TheoDoiDieuTris.DeleteOnSubmit(i);
                    dc.SubmitChanges();//Lưu dữ liệu
                }
                return true;
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Number == 547)//Kiểm tra ràng buộc
                {
                    return false;
                }
            }
            return false;
        }

        //Sửa theo dõi điều trị
        public void SuaTDDT(string maBN, DateTime ngayTheoDoi, string chiSoCanNang, string chiSoHuyetAp, string chiSoNhipTho, string yLenh, string maNV)
        {
            var update = dc.TheoDoiDieuTris.SingleOrDefault(tddt => tddt.MaBN == maBN && tddt.MaNV == maNV);
            ET_TheoDoiDieuTri et = new ET_TheoDoiDieuTri(maBN, ngayTheoDoi, chiSoCanNang, chiSoHuyetAp, chiSoNhipTho, yLenh, maNV);
            update.NgayTheoDoi = et.NgayTheoDoi;
            update.ChiSoCanNang = et.ChiSoCanNang;
            update.ChiSoHuyetAp = et.ChiSoHuyetAp;
            update.ChiSoNhipTho = et.ChiSoNhipTho;
            update.YLenh = et.YLenh;
            dc.SubmitChanges();//Lưu dữ liệu
        }
    }
}

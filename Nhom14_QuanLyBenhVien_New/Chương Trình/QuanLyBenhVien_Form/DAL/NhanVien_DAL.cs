using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class NhanVien_DAL
    {
        private static NhanVien_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static NhanVien_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new NhanVien_DAL();
                }
                return instance;
            }
        }


        //Tải dữ liệu lên dgv
        public IQueryable load()
        {
            IQueryable nhanVien = from nv in db.NhanViens
                                  select nv;
            return nhanVien;
        }

        //Lấy danh sách chuyên ngành theo khoa
        public IQueryable layDSCN(string maK)
        {
            IQueryable chucVu = from cv in db.ChuyenNganhs
                                where cv.MaKhoa == maK
                                select cv;
            return chucVu;
        }

        //Lấy danh sách chức vụ
        public IQueryable layDSChucVu()
        {
            IQueryable chucVu = from cv in db.ChucVus
                                select cv;
            return chucVu;
        }

        //thêm nhân viên mới
        public bool them(string ma, string ten, string gioiTinh, DateTime ns, string maK, string maCN, string maCV)
        {
            //ktra trung ma
            if (db.NhanViens.Any(e => e.MaNV == ma))
            {
                return false;
            }

            try
            {
                NhanVien nv = new NhanVien
                {
                    MaNV = ma,
                    HoTenNV = ten,
                    GioiTinh = gioiTinh,
                    NgaySinh = ns,
                    MaKhoa = maK,
                    MaChuyenNganh = maCN,
                    MaChucVu = maCV
                };

                db.NhanViens.InsertOnSubmit(nv);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa nhân viên
        public bool xoa(string id)
        {
            NhanVien nv = db.NhanViens.FirstOrDefault(e => e.MaNV == id);

            if (nv != null)
            {
                try
                {
                    db.NhanViens.DeleteOnSubmit(nv);
                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi " + ex.Message);
                }
            }
            return false;
        }

        //sửa thông tin nhân viên
        public bool sua(string ma, string ten, string gioiTinh, DateTime ns, string maK, string maCN, string maCV)
        {
            NhanVien sua = db.NhanViens.Single(e => e.MaNV == ma);
            if (sua != null)
            {
                try
                {
                    sua.HoTenNV = ten;
                    sua.GioiTinh = gioiTinh;
                    sua.NgaySinh = ns;
                    sua.MaKhoa = maK;
                    sua.MaChuyenNganh = maCN;
                    sua.MaChucVu = maCV;

                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi " + ex.Message);
                    return false;
                }

            }
            return false;
        }

        //tìm kiếm
        public IQueryable tim(string ma)
        {
            IQueryable nhanVien = from e in db.NhanViens
                                  where e.MaNV == ma
                                  select new { e.MaNV, e.HoTenNV, e.GioiTinh, e.NgaySinh, e.MaKhoa, e.MaChuyenNganh, e.MaChucVu };
            return nhanVien;
        }

        //Kiểm tra có tồn tại nhân viên không
        public bool kiemTraTonTai(string maNV)
        {
            //ktra trung ma
            if (db.NhanViens.Any(e => e.MaNV == maNV))
            {
                return true;
            }
            return false;
        }

        //Danh sách nhân viên theo khoa
        public IQueryable layDSNVTheoKhoa(string maKhoa)
        {
            IQueryable nhanVien = from nv in db.NhanViens
                                  join khoa in db.Khoas
                                  on nv.MaKhoa equals khoa.MaKhoa
                                  join cn in db.ChuyenNganhs
                                  on nv.MaChuyenNganh equals cn.MaChuyenNganh
                                  join cv in db.ChucVus
                                  on nv.MaChucVu equals cv.MaChucVu
                                  where nv.MaKhoa == maKhoa
                                  select new { nv.MaNV, nv.HoTenNV, nv.GioiTinh, nv.NgaySinh, cv.TenChucVu, cn.TenChuyenNganh };

            return nhanVien;
        }
    }
}

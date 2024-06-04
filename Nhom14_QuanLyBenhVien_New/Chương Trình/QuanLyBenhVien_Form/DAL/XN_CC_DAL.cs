using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class XN_CC_DAL
    {
        private static XN_CC_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static XN_CC_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new XN_CC_DAL();
                }
                return instance;
            }
        }

        //thêm 
        public bool them(string maP, string maDV, DateTime ngayTH, string kq, string maBN, string maNYC)
        {
            //ktra trung ma
            if (db.XN_CCs.Any(e => e.MaPhieu == maP && e.MaDV == maDV && e.MaNVYeuCau == maNYC))
            {
                return false;
            }

            try
            {
                XN_CC xn = new XN_CC
                {
                    MaPhieu = maP,
                    MaDV = maDV,
                    NgayThucHien = ngayTH,
                    KetQua = kq,
                    MaBN = maBN,
                    MaNVYeuCau = maNYC
                };

                db.XN_CCs.InsertOnSubmit(xn);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa
        public bool xoa(string maP)
        {
            XN_CC xn = db.XN_CCs.FirstOrDefault(e => e.MaPhieu == maP);

            if (xn != null)
            {
                try
                {
                    db.XN_CCs.DeleteOnSubmit(xn);
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

        //sửa thông tin
        public bool sua(string maP, string maDV, DateTime ngayTH, string kq)
        {
            XN_CC sua = db.XN_CCs.Single(e => e.MaPhieu == maP);
            if (sua != null)
            {
                try
                {
                    sua.MaDV = maDV;
                    sua.NgayThucHien = ngayTH;
                    sua.KetQua = kq;

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

        //lấy danh sách bệnh nhân
        public IQueryable layDSBN()
        {
            IQueryable benhNhan = from bn in db.BenhNhans
                                  orderby bn.MaBN descending
                                  select bn;
            return benhNhan;
        }

        //Lấy danh sách phòng chức năng
        public IQueryable layDSPCN()
        {
            IQueryable phongXN = from xn in db.PhongKhams
                                 where xn.LoaiPhong == "Phòng Chức Năng" && (xn.TenPhongKham.Contains("xét") || xn.TenPhongKham.Contains("chụp") || xn.TenPhongKham.Contains("điện"))
                                 select xn;
            return phongXN;
        }

        //lấy danh sách nhân viên
        public IQueryable layDSNV(string maPK)
        {
            IQueryable nhanvVien = from nv in db.NhanViens
                                   join pk in db.PhongKhams
                                   on nv.MaKhoa equals pk.MaKhoa
                                   where pk.MaPhongKham == maPK && nv.MaChucVu == "CV3"
                                   select new { nv.MaNV, nv.HoTenNV };
            return nhanvVien;
                             
        }

        //lấy danh sách dịch vụ
        public IQueryable layDSDV()
        {
            IQueryable dichVu = from dv in db.DichVus
                                where dv.TenDV.Contains("xét nghiệm") || dv.TenDV.Contains("chụp")
                                select dv;
            return dichVu;
        }

        //Lấy dữ liệu cho dgv
        public IQueryable hienThiDuLieuXNCC(string maBN)
        {
            IQueryable xncc = from xn in db.XN_CCs
                              join th in db.ThucHienXNCCs
                              on xn.MaPhieu equals th.MaPhieu
                              join pk in db.PhongKhams
                              on th.MaPhongKham equals pk.MaPhongKham
                              where xn.MaBN == maBN
                              select new { xn.MaPhieu, xn.MaDV,  xn.NgayThucHien, pk.TenPhongKham, xn.KetQua, xn.MaBN, th.MaNV, th.MaPhongKham};
            return xncc;
        }

        //Lấy danh sách tên dịch vụ
        public string hienThiTenDV(string maDV)
        {
            var dichVu = (from dv in db.DichVus
                            where dv.MaDV == maDV
                            select dv.TenDV).FirstOrDefault();
            return dichVu;
        }

        //Lấy tên nv yêu cầu
        public string hienThiTenNVYC(string maNV)
        {
            var nhanVien = (from nv in db.NhanViens
                          where nv.MaNV == maNV
                            select nv.HoTenNV).FirstOrDefault();
            return nhanVien;
        }

        //Lấy tên bệnh nhân
        public string hienThiTenBN(string maBN)
        {
            var benhNhan = (from bn in db.BenhNhans
                            where bn.MaBN == maBN
                            select bn.HoTenBN).FirstOrDefault();
            return benhNhan;
        }

    }
}

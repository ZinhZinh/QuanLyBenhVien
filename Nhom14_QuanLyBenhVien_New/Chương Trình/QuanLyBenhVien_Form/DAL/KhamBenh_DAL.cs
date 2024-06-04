using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class KhamBenh_DAL
    {
        private static KhamBenh_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static KhamBenh_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new KhamBenh_DAL();
                }
                return instance;
            }
        }


        //Thêm lần khám bệnh mới
        public bool them(string maBN, string maPK, string maNV, string maPhieuKB)
        {
            //ktra trung ma
            if (db.KhamBenhs.Any(e => e.MaBN == maBN && e.MaPhieuKB == maPhieuKB && e.MaPhongKham == maPK && e.MaNV == maNV))
            {
                return false;
            }
            try
            {
                KhamBenh kb = new KhamBenh
                {
                    MaBN = maBN,
                    MaPhongKham = maPK,
                    MaNV = maNV,
                    MaPhieuKB = maPhieuKB
                };
                db.KhamBenhs.InsertOnSubmit(kb);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
            }

            return false;
        }

        //Lấy danh sách phiếu khám bệnh
        public IQueryable layDSPKB()
        {
            IQueryable phieu = from pkb in db.PhieuKhamBenhs
                               orderby pkb.MaPhieuKB descending
                               select pkb;
            return phieu;
        }


        //lấy danh sách bệnh nhân
        public IQueryable layDSBN(string maPhieuKB)
        {
            IQueryable benhNhan = from bn in db.BenhNhans
                                  join pkb in db.PhieuKhamBenhs
                                  on bn.MaBN equals pkb.MaBN
                                  where pkb.MaPhieuKB == maPhieuKB
                                  select bn;
            return benhNhan;
        }

        //lấy danh sách phòng khám theo khoa
        public IQueryable layDSPK(string maK)
        {
            IQueryable phongKham = from pk in db.PhongKhams
                                   where pk.MaKhoa == maK
                                   select pk;
            return phongKham;
        }

        //Lấy danh sách nhân viên theo khoa 
        public IQueryable layDSNV(string maK)
        {
            IQueryable nhanVien = from nv in db.NhanViens
                                   where nv.MaKhoa == maK && nv.MaChucVu == "CV3"
                                   select nv;
            return nhanVien;
        }
    }
}

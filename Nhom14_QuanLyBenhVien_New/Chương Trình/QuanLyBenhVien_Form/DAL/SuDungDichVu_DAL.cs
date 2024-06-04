using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class SuDungDichVu_DAL
    {
        private static SuDungDichVu_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static SuDungDichVu_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SuDungDichVu_DAL();
                }
                return instance;
            }
        }

        //Tải dữ liệu lên dgv
        public IQueryable load(string maBN, string maPKB)
        {
            IQueryable dv = from sd in db.BenhNhan_DichVus
                            join d in db.DichVus
                            on sd.MaDV equals d.MaDV
                            where sd.MaBN == maBN && sd.MaPhieuKB == maPKB
                            select new { sd.MaBN, sd.MaDV, d.TenDV, d.DonGiaDichVu };
            return dv;
        }

        //thêm 
        public bool them(string maBN, string maDV, string maPhieu, string maNYC)
        {
            //ktra trung ma
            if (db.BenhNhan_DichVus.Any(e => e.MaDV == maDV && e.MaBN == maBN && e.MaPhieuKB == maPhieu && e.MaNVYeuCau == maNYC))
            {
                return false;
            }

            try
            {
                BenhNhan_DichVu sddichVu = new BenhNhan_DichVu
                {
                    MaBN = maBN,
                    MaDV = maDV,
                    MaPhieuKB = maPhieu,
                    MaNVYeuCau = maNYC
                };

                db.BenhNhan_DichVus.InsertOnSubmit(sddichVu);
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
        public bool xoa(string maBN, string maDV, string maPhieu)
        {
            BenhNhan_DichVu dv = db.BenhNhan_DichVus.FirstOrDefault(e => e.MaDV == maDV && e.MaBN == maBN && e.MaPhieuKB == maPhieu);

            if (dv != null)
            {
                try
                {
                    db.BenhNhan_DichVus.DeleteOnSubmit(dv);
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


        //Lấy danh sách phiếu khám bênhk
        public IQueryable layDSPKB()
        {
            IQueryable phieu = from pkb in db.PhieuKhamBenhs
                               orderby pkb.MaPhieuKB descending
                               select pkb;
            return phieu;
        }

        //lấy danh sách bệnh nhân
        public IQueryable layDSBN(string maPhieu)
        {
            IQueryable benhNhan = from bn in db.BenhNhans
                                  join pkb in db.PhieuKhamBenhs
                                  on bn.MaBN equals pkb.MaBN
                                  where pkb.MaPhieuKB == maPhieu
                                  select bn;
            return benhNhan;
        }

        //lấy tên bệnh nhân
        public string hienThiTenBenhNhan(string maBN)
        {
            var benhNhan = (from bn in db.BenhNhans
                            where bn.MaBN == maBN
                            select bn.HoTenBN).FirstOrDefault();
            return benhNhan;
        }

        //Danh sách giường bệnh trống
        public IQueryable layDSGiuongConTrong(string maPB)
        {
            IQueryable giuongTrong = from gb in db.GiuongBenhs
                                     where gb.MaPhong == maPB &&
                                           !db.PhanGiuongs.Any(pg => pg.MaGiuong == gb.MaGiuong && pg.MaPhong == gb.MaPhong)
                                     select new
                                     {
                                         gb.MaGiuong,
                                         gb.SoGiuong
                                     };
            return giuongTrong;
        }

        //Lấy danh sách phòng bệnh
        public IQueryable layDSPhongBenh()
        {
            IQueryable phongBenh = from pb in db.PhongBenhs
                                   select pb;
            return phongBenh;
        }
    }
}

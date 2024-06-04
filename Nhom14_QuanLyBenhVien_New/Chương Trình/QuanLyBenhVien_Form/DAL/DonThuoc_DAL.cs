using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class DonThuoc_DAL
    {
        private static DonThuoc_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DonThuoc_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DonThuoc_DAL();
                }
                return instance;
            }
        }




        //thêm đơn thuốc mới
        public bool them(string maDT, DateTime ngayKe, string maNV, string maBN, string chuanDoan)
        {
            //ktra trung ma
            if (db.DonThuocs.Any(e => e.MaDonThuoc == maDT))
            {
                return false;
            }

            try
            {
                db.ThemDonThuoc(maDT, ngayKe, maNV, maBN, chuanDoan);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //Lấy tổng tiền của đơn thuốc
        public double? layTongTienDonThuoc(string maDT)
        {
            var tongTien = (from dt in db.DonThuocs
                            where dt.MaDonThuoc == maDT
                            select dt.TongTienThuoc).FirstOrDefault();

            return tongTien;
        }

        //Tra cứu đơn thuốc
        public IQueryable traCuuDonThuoc(string maBN)
        {
            IQueryable donThuoc = from dt in db.DonThuocs
                                  join ct in db.ChiTietDonThuocs
                                  on dt.MaDonThuoc equals ct.MaDonThuoc
                                  join t in db.Thuocs
                                  on ct.MaThuoc equals t.MaThuoc
                                  where dt.MaBN == maBN
                                  select new { dt.MaDonThuoc, dt.NgayGioKeDon, t.TenThuoc, ct.CachDung, ct.SoLuong, t.DonGiaThuoc, ct.TongTien, dt.MaNV };

            return donThuoc;
        }
    }
}

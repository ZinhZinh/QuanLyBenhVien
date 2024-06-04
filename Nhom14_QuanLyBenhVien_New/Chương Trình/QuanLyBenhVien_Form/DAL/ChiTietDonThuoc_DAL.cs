using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class ChiTietDonThuoc_DAL
    {
        private static ChiTietDonThuoc_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);


        public static ChiTietDonThuoc_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ChiTietDonThuoc_DAL();
                }
                return instance;
            }
        }


        //thêm chi tiết đơn thuốc mới
        public bool them(string maDT, string maThuoc, int sL, string cachDung)
        {
            //ktra trung ma
            if (db.ChiTietDonThuocs.Any(e => e.MaThuoc == maThuoc && e.MaDonThuoc == maDT))
            {
                return false;
            }

            try
            {
                db.themChiTietDT(maDT, maThuoc, sL, cachDung);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa chi tiết đơn thuốc
        public bool xoa(string maDT, string maThuoc)
        {
            ChiTietDonThuoc chiTiet = db.ChiTietDonThuocs.FirstOrDefault(e => e.MaDonThuoc == maDT && e.MaThuoc == maThuoc);

            if (chiTiet != null)
            {
                try
                {
                    db.xoaChiTietDT(maDT, maThuoc);
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

        //sửa thông tin chi tiết đơn thuốc
        public bool sua(string maDT, string maThuoc, int sL, string cachDung)
        {
            ChiTietDonThuoc sua = db.ChiTietDonThuocs.Single(e => e.MaDonThuoc == maDT && e.MaThuoc == maThuoc);
            if (sua != null)
            {
                try
                {
                    db.capNhatChiTietDT(maDT, maThuoc, sL, cachDung);

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

        //Lấy danh sách thông tin thuốc (Mathuoc, TenThuoc, SoLuong, TongTien thuốc)
        public IQueryable layDSTTThuoc(string maDT)
        {
            IQueryable thuoc = from ct in db.ChiTietDonThuocs
                               join dt in db.DonThuocs
                               on ct.MaDonThuoc equals dt.MaDonThuoc
                               join t in db.Thuocs
                               on ct.MaThuoc equals t.MaThuoc
                               where ct.MaDonThuoc == maDT
                               select new { ct.MaThuoc, t.TenThuoc, t.DonGiaThuoc, ct.SoLuong, ct.TongTien, ct.CachDung };
            return thuoc;
        }

        public IQueryable layTTThuoc(string maDT)
        {
            IQueryable thuoc = from ct in db.ChiTietDonThuocs
                               where ct.MaDonThuoc == maDT
                               select ct;
            return thuoc;
        }

    }
}

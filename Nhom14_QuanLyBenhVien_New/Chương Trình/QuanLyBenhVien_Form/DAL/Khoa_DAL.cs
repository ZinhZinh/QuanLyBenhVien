using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class Khoa_DAL
    {
        private static Khoa_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static Khoa_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Khoa_DAL();
                }
                return instance;
            }
        }

        //Tải dữ liệu lên dgv
        public IQueryable load()
        {
            IQueryable khoa = db.Khoas.Select(n => n);
            return khoa;
        }

        //thêm Khoa
        public bool them(string maK, string tenK)
        {
            //ktra trung ma
            if (db.Khoas.Any(e => e.MaKhoa == maK || e.TenKhoa == tenK))
            {
                return false;
            }

            try
            {
                Khoa khoa = new Khoa
                {
                    MaKhoa = maK,
                    TenKhoa = tenK
                };

                db.Khoas.InsertOnSubmit(khoa);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa khoa
        public bool xoa(string id)
        {
            Khoa khoa = db.Khoas.FirstOrDefault(e => e.MaKhoa == id);

            if (khoa != null)
            {
                try
                {
                    db.Khoas.DeleteOnSubmit(khoa);
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

        //sửa thông tin Khoa
        public bool sua(string maK, string tenK)
        {
            Khoa sua = db.Khoas.Single(e => e.MaKhoa == maK);
            if (sua != null)
            {
                try
                {
                    sua.TenKhoa = tenK;

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
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class ThucHienXNCC_DAL
    {
        private static ThucHienXNCC_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);


        public static ThucHienXNCC_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ThucHienXNCC_DAL();
                }
                return instance;
            }
        }

        //thêm 
        public bool them(string maNV, string maP, string maPK)
        {
            //ktra trung ma
            if (db.ThucHienXNCCs.Any(e => e.MaPhieu == maP && e.MaNV == maNV && e.MaPhongKham == maPK))
            {
                return false;
            }

            try
            {
                ThucHienXNCC th = new ThucHienXNCC
                {
                    MaPhieu = maP,
                    MaNV = maNV,
                    MaPhongKham = maPK
                };

                db.ThucHienXNCCs.InsertOnSubmit(th);
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
            ThucHienXNCC xn = db.ThucHienXNCCs.FirstOrDefault(e => e.MaPhieu == maP);

            if (xn != null)
            {
                try
                {
                    db.ThucHienXNCCs.DeleteOnSubmit(xn);
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

    }
}

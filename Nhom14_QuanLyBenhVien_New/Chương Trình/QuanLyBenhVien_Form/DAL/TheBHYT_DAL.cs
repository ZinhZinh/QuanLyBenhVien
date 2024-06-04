using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class TheBHYT_DAL
    {
        private static TheBHYT_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static TheBHYT_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new TheBHYT_DAL();
                }
                return instance;
            }
        }

        //thêm thẻ BHYT
        public bool them(string maBHYT, string maBN, DateTime ngayCap, DateTime ngayHH)
        {
            //ktra trung ma
            if (db.TheBHYTs.Any(e => e.MaBHYT == maBHYT))
            {
                return false;
            }

            try
            {
                TheBHYT bhyt = new TheBHYT
                {
                    MaBHYT = maBHYT,
                    MaBN = maBN,
                    NgayCap = ngayCap,
                    NgayHetHan = ngayHH
                };

                db.TheBHYTs.InsertOnSubmit(bhyt);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa thẻ BHYT
        public bool xoa(string id)
        {
            TheBHYT bhyt = db.TheBHYTs.FirstOrDefault(e => e.MaBHYT == id);

            if (bhyt != null)
            {
                try
                {
                    db.TheBHYTs.DeleteOnSubmit(bhyt);
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

        //sửa thông tin thẻ BHYT
        public bool sua(string maBHYT, string maBN, DateTime ngayCap, DateTime ngayHH)
        {
            TheBHYT sua = db.TheBHYTs.Single(e => e.MaBHYT == maBHYT);
            if (sua != null)
            {
                try
                {
                    sua.NgayCap = ngayCap;
                    sua.NgayHetHan = ngayHH;

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

        //tìm thẻ BHYT của bệnh nhân
        public TheBHYT timTheBHYTTheoMaBN(string maBN)
        {
            TheBHYT bhyt = db.TheBHYTs.FirstOrDefault(e => e.MaBN == maBN);
            return bhyt;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class ChuyenNganh_DAL
    {
        private static ChuyenNganh_DAL instance;

        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static ChuyenNganh_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ChuyenNganh_DAL();
                }
                return instance;
            }
        }


        //Tải dữ liệu lên dgv
        public IQueryable load()
        {
            IQueryable cn = db.ChuyenNganhs.Select(n => n);
            return cn;
        }

        //thêm chuyên ngành
        public bool them(string maCN, string tenCN, string maKhoa)
        {
            //ktra trung ma
            if (db.ChuyenNganhs.Any(e => e.MaChuyenNganh == maCN))
            {
                return false;
            }

            try
            {
                ChuyenNganh cn = new ChuyenNganh
                {
                    MaChuyenNganh = maCN,
                    TenChuyenNganh = tenCN,
                    MaKhoa = maKhoa
                };

                db.ChuyenNganhs.InsertOnSubmit(cn);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa chuyên ngành
        public bool xoa(string id)
        {
            ChuyenNganh cn = db.ChuyenNganhs.FirstOrDefault(e => e.MaChuyenNganh == id);

            if (cn != null)
            {
                try
                {
                    db.ChuyenNganhs.DeleteOnSubmit(cn);
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

        //sửa thông tin tchuyên ngành
        public bool sua(string maCN, string tenCN, string maKhoa)
        {
            ChuyenNganh sua = db.ChuyenNganhs.Single(e => e.MaChuyenNganh == maCN);
            if (sua != null)
            {
                try
                {
                    sua.TenChuyenNganh = tenCN;
                    sua.MaKhoa = maKhoa;

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

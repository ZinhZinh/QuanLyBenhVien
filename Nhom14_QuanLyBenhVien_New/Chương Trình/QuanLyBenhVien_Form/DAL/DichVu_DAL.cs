using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class DichVu_DAL
    {
        private static DichVu_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DichVu_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DichVu_DAL();
                }
                return instance;
            }
        }

        //Tải dữ liệu lên dgv
        public IQueryable load()
        {
            IQueryable dv = db.DichVus.Select(n => n);
            return dv;
        }

        //thêm dịch vụ
        public bool them(string maDV, string tenDV, float gia)
        {
            //ktra trung ma
            if (db.DichVus.Any(e => e.MaDV == maDV || e.TenDV == tenDV))
            {
                return false;
            }

            try
            {
                DichVu dichVu = new DichVu
                {
                    MaDV = maDV,
                    TenDV = tenDV,
                    DonGiaDichVu = gia
                };

                db.DichVus.InsertOnSubmit(dichVu);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }

        //xóa dịch vụ
        public bool xoa(string id)
        {
            DichVu dv = db.DichVus.FirstOrDefault(e => e.MaDV == id);

            if (dv != null)
            {
                try
                {
                    db.DichVus.DeleteOnSubmit(dv);
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

        //sửa thông tin dịch vụ
        public bool sua(string maDV, string tenDV, float gia)
        {
            DichVu sua = db.DichVus.Single(e => e.MaDV == maDV);
            if (sua != null)
            {
                try
                {
                    sua.TenDV = tenDV;
                    sua.DonGiaDichVu = gia;

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

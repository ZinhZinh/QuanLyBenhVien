using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class DAL_PhieuKhamBenh
    {
        public static DAL_PhieuKhamBenh instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_PhieuKhamBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_PhieuKhamBenh();
                }
                return instance;
            }
        }

        //Hiển thị PhieuKhamBenh lên datagridview
        public IQueryable HienThiBangPKB()
        {
            IQueryable phieu = from pkb in dc.PhieuKhamBenhs
                               orderby pkb.MaPhieuKB descending
                               select pkb;
            return phieu;
        }

        //Hiển thị combobox BenhNhan
        public IQueryable HienThiComboboxBenhNhan()
        {
            IQueryable benhNhan = from bn in dc.BenhNhans
                                  select bn;
            return benhNhan;
        }

        //Thêm PhieuKhamBenh
        public bool ThemPKB(string maPhieuKB, string maBN, DateTime ngayKham)
        {
            if (dc.PhieuKhamBenhs.Any(pkb => pkb.MaPhieuKB == maPhieuKB))
            {
                return false;
            }
            try
            {
                PhieuKhamBenh phieu = new PhieuKhamBenh
                {
                    MaPhieuKB = maPhieuKB,
                    MaBN = maBN,
                    NgayKham = ngayKham
                };
                dc.PhieuKhamBenhs.InsertOnSubmit(phieu);
                return true;
            }
            finally
            {
                dc.SubmitChanges();
            }
        }

        //Xóa phiếu khám bệnh
        public bool XoaPhieuKB(string maPhieuKB)
        {
            try
            {
                var delete = from ba in dc.PhieuKhamBenhs
                             where ba.MaPhieuKB == maPhieuKB
                             select ba;
                foreach (var i in delete)
                {
                    dc.PhieuKhamBenhs.DeleteOnSubmit(i);
                    dc.SubmitChanges(); //Lưu dữ liệu
                }
                return true;
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Number == 547) //Kiểm tra ràng buộc
                {
                    return false;
                }
            }
            return false;
        }

    }
}

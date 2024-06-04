using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_ChucVu
    {
        public static DAL_ChucVu instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_ChucVu Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_ChucVu();
                }
                return instance;
            }
        }

        //Hiển thị ChucVu lên datagridview
        public IQueryable HienThiBangChucVu()
        {
            IQueryable chucVu = from cv in dc.ChucVus
                                select cv;
            return chucVu;
        }

        //Thêm chức vụ
        public bool ThemChucVu(string maCV, string tenCV)
        {
            //Kiểm tra trùng mã 
            if (dc.ChucVus.Any(chucVu => chucVu.MaChucVu == maCV))
            {
                return false;
            }
            try
            {
                ChucVu chucVu = new ChucVu
                {
                    MaChucVu = maCV,
                    TenChucVu = tenCV
                };
                dc.ChucVus.InsertOnSubmit(chucVu);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa Chức Vụ
        public bool XoaChucVu(string maCV)
        {
            try
            {
                var delete = from cv in dc.ChucVus
                             where cv.MaChucVu == maCV
                             select cv;
                foreach (var i in delete)
                {
                    dc.ChucVus.DeleteOnSubmit(i); 
                    dc.SubmitChanges(); //Lưu dữ liệu
                }
                return true;
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Number == 547) //Kiểm tra lỗi ràng buộc 
                {
                    return false;
                }
            }
            return false;
        }

        //Sửa chức vụ
        public void SuaChucVu(string maCV, string tenCV)
        {
            var update = dc.ChucVus.Single(chucVu => chucVu.MaChucVu == maCV);
            ET_ChucVu et = new ET_ChucVu(maCV, tenCV);
            update.MaChucVu = et.MaCV;
            update.TenChucVu = et.TenCV;
            dc.SubmitChanges(); //Lưu dữ liệu
        }
    }
}

using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_GiuongBenh
    {
        public static DAL_GiuongBenh instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_GiuongBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_GiuongBenh();
                }
                return instance;
            }
        }

        //Hiển thị GiuongBenh lên datagridview
        public IQueryable HienThiBangGiuongBenh()
        {
            IQueryable giuongBenh = from gb in dc.GiuongBenhs
                                   select gb;
            return giuongBenh;
        }

        //Hiển thị combobox PhongBenh
        public IQueryable HienThiComboboxPhongBenh()
        {
            IQueryable phongBenh = from pb in dc.PhongBenhs
                                   select pb;
            return phongBenh;
        }

        //Thêm giường bệnh
        public bool ThemGiuongBenh(string maGiuong, string soGiuong, string maPhong)
        {
            //Kiểm tra trùng khóa chính
            if (dc.GiuongBenhs.Any(giuongBenh => giuongBenh.MaGiuong == maGiuong))
            {
                return false;
            }
            try
            {
                GiuongBenh giuongBenh = new GiuongBenh
                {
                    MaGiuong = maGiuong,
                    SoGiuong = soGiuong,
                    MaPhong = maPhong
                };
                dc.GiuongBenhs.InsertOnSubmit(giuongBenh);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa giường bệnh
        public bool XoaGiuongBenh(string maGiuong)
        {
            try
            {
                var delete = from gb in dc.GiuongBenhs
                             where gb.MaGiuong == maGiuong
                             select gb;
                foreach (var i in delete)
                {
                    dc.GiuongBenhs.DeleteOnSubmit(i);
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
        
        //Sửa giường bệnh
        public void SuaGiuongBenh(string maGiuong, string soGiuong, string maPhong)
        {
            var update = dc.GiuongBenhs.Single(giuongBenh => giuongBenh.MaGiuong == maGiuong);
            ET_GiuongBenh et = new ET_GiuongBenh(maGiuong, soGiuong, maPhong);
            update.SoGiuong = et.SoGiuong;
            var phong = dc.PhongBenhs.SingleOrDefault(pb => pb.MaPhong == maPhong); //Sửa, update lại combobox PhongBenh
            if (phong != null)
            {
                update.PhongBenh = phong;
            }
            else
            {
                throw new Exception("Phòng bệnh này không tồn tại");
            }
            dc.SubmitChanges(); //Lưu dữ liệu
        }
    }
}

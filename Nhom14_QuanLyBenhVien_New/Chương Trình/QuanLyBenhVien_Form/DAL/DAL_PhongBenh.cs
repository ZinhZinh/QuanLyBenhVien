using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_PhongBenh
    {
        public static DAL_PhongBenh instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_PhongBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_PhongBenh();
                }
                return instance;
            }
        }

        //Hiển thị PhongBenh lên datagridview
        public IQueryable HienThiBangPhongBenh()
        {
            IQueryable phongBenh = from pb in dc.PhongBenhs
                                   select pb;
            return phongBenh;
        }

        //Hiển thị combobox Khoa
        public IQueryable HienThiComboboxKhoa()
        {
            IQueryable khoa = from k in dc.Khoas
                              select k;
            return khoa;
        }

        //Lấy danh sách loại phòng gợi ý
        public List<string> LayDSLoaiPhong()
        {
            var loaiPhong = (from lp in dc.PhongBenhs
                             select lp.Loai).ToList();
            return loaiPhong;
        }

        //Thêm phòng bệnh
        public bool ThemPhongBenh(string maPhongBenh, string tenPhongBenh, string loaiPhong, string maKhoa)
        {
            //Kiểm tra trùng khóa chính
            if (dc.PhongBenhs.Any(phongBenh => phongBenh.MaPhong == maPhongBenh))
            {
                return false;
            }
            try
            {
                PhongBenh phongBenh = new PhongBenh
                {
                    MaPhong = maPhongBenh,
                    TenPhong = tenPhongBenh,
                    Loai = loaiPhong,
                    MaKhoa = maKhoa
                };
                dc.PhongBenhs.InsertOnSubmit(phongBenh);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa phòng bệnh
        public bool XoaPhongBenh(string maPhongBenh)
        {
            try
            {
                var delete = from pb in dc.PhongBenhs
                             where pb.MaPhong == maPhongBenh
                             select pb;
                foreach (var i in delete)
                {
                    dc.PhongBenhs.DeleteOnSubmit(i);
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

        //Sửa phòng bệnh
        public void SuaPhongBenh(string maPhongBenh, string tenPhongBenh, string loaiPhong, string maKhoa)
        {
            var update = dc.PhongBenhs.Single(phongBenh => phongBenh.MaPhong == maPhongBenh);
            ET_PhongBenh et = new ET_PhongBenh(maPhongBenh, tenPhongBenh, loaiPhong, maKhoa);
            update.TenPhong = et.TenPhongBenh;
            update.Loai = et.LoaiPhong;
            var khoa = dc.Khoas.SingleOrDefault(k => k.MaKhoa == maKhoa); //Sửa, update lại combobox Khoa
            if (khoa != null)
            {
                update.Khoa = khoa;
            }
            else
            {
                throw new Exception("Khoa này không tồn tại");
            }
            dc.SubmitChanges(); //Lưu dữ liệu
        }
    }
}

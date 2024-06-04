using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_PhongKham
    {
        public static DAL_PhongKham instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_PhongKham Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_PhongKham();
                }
                return instance;
            }
        }

        //Hiển thị PhongKham lên datagridview
        public IQueryable HienThiBangPhongKham()
        {
            IQueryable phongKham = from pk in dc.PhongKhams
                                   select pk;
            return phongKham;
        }

        //Hiển thị combobox Khoa
        public IQueryable HienThiComboboxKhoa()
        {
            IQueryable khoa = from k in dc.Khoas
                              select k;
            return khoa;
        }

        //Lấy danh sách gợi ý Loại Phòng Khám
        public List<string> LayDSLoaiPhongKham()
        {
            var loaiPhongKham = (from lpk in dc.PhongKhams
                                select lpk.LoaiPhong).ToList();
            return loaiPhongKham;
        }

        //Thêm phòng khám
        public bool ThemPhongKham(string maPhongKham, string tenPhongKham, string maKhoa, string loaiPhong)
        {
            //Kiểm tra trùng khóa chính
            if (dc.PhongKhams.Any(phongKham => phongKham.MaPhongKham == maPhongKham))
            {
                return false;
            }
            try
            {
                PhongKham phongKham = new PhongKham
                {
                    MaPhongKham = maPhongKham,
                    TenPhongKham = tenPhongKham,
                    MaKhoa = maKhoa,
                    LoaiPhong = loaiPhong
                };
                dc.PhongKhams.InsertOnSubmit(phongKham);
                return true;
            }
            finally
            {
                dc.SubmitChanges();//Lưu dữ liệu
            }
        }

        //Xóa phòng khám
        public bool XoaPhongKham(string maPhongKham)
        {
            try
            {
                var delete = from pk in dc.PhongKhams
                             where pk.MaPhongKham == maPhongKham
                             select pk;
                foreach (var i in delete)
                {
                    dc.PhongKhams.DeleteOnSubmit(i);
                    dc.SubmitChanges();//Lưu dữ liệu
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

        //Sửa phòng khám
        public void SuaPhongKham(string maPhongKham, string tenPhongKham, string maKhoa, string loaiPhong)
        {
            var update = dc.PhongKhams.Single(phongKham => phongKham.MaPhongKham == maPhongKham);
            ET_PhongKham et = new ET_PhongKham(maPhongKham, tenPhongKham, maKhoa, loaiPhong);
            update.TenPhongKham = et.TenPhongKham;         
            var khoa = dc.Khoas.SingleOrDefault(k => k.MaKhoa == maKhoa); //Sửa, update lại combobox Khoa
            if (khoa != null)
            {
                update.Khoa = khoa;
            }
            else
            {
                throw new Exception("Khoa này không tồn tại");
            }
            update.LoaiPhong = et.LoaiPhong;
            dc.SubmitChanges();//Lưu dữ liệu
        }
    }
}

using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_PhanGiuong
    {
        public static DAL_PhanGiuong instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_PhanGiuong Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_PhanGiuong();
                }
                return instance;
            }
        }

        //Hiển thị PhanGiuong lên datagridview
        public IQueryable HienThiBangPhanGiuong()
        {
            IQueryable phanGiuong = from pg in dc.PhanGiuongs
                                    orderby pg.NgayNhan descending
                                    select pg;
            return phanGiuong;
        }

        //Hiển thị combobox BenhNhan
        public IQueryable HienThiComboboxBenhNhan()
        {
            IQueryable benhNhan = from bn in dc.BenhNhans
                                  select bn;
            return benhNhan;
        }

        //Hiển thị combobox GiuongBenh
        public IQueryable HienThiComboboxGiuongBenh(string maPhongBenh)
        {
            IQueryable giuongBenh = from gb in dc.GiuongBenhs
                                    where gb.MaPhong == maPhongBenh &&
                                          !dc.PhanGiuongs.Any(pg => pg.MaGiuong == gb.MaGiuong && pg.MaPhong == gb.MaPhong)
                                    select new
                                    {
                                        gb.MaGiuong,
                                        gb.SoGiuong
                                    };
            return giuongBenh;
        }

        //Hiển thị combobox PhongBenh
        public IQueryable HienThiComboboxPhongBenh()
        {
            IQueryable phongBenh = from pb in dc.PhongBenhs
                                   select pb;
            return phongBenh;
        }

        //Hiển thị Tên Bệnh Nhân theo combobox Bệnh Nhân
        public string HienThiTenBenhNhan(string maBN)
        {
            var benhNhan = (from bn in dc.BenhNhans
                        where bn.MaBN == maBN
                        select bn.HoTenBN).FirstOrDefault();
            return benhNhan;
        }

        //Hiển thị Tên Phòng Bệnh theo combobox Phòng Bệnh
        public string HienThiTenPhongBenh(string maPhongBenh)
        {
            var phongBenh = (from pb in dc.PhongBenhs
                            where pb.MaPhong == maPhongBenh
                            select pb.TenPhong).FirstOrDefault();
            return phongBenh;
        }

        //Hiển thị Số Giường theo combobox Giường Bệnh
        public string HienThiSoGiuong(string maGiuongBenh)
        {
            var soGiuong = (from sg in dc.GiuongBenhs
                            where sg.MaGiuong == maGiuongBenh
                            select sg.SoGiuong).FirstOrDefault();
            return soGiuong;
        }

        //Thêm phân giường
        public bool ThemPhanGiuong(string maBN, DateTime ngayNhan, DateTime ngayTra, string maPhong, string maGiuong, string maNVYC)
        {
            //Kiểm tra trùng khóa chính
            if (dc.PhanGiuongs.Any(phanGiuong => phanGiuong.MaBN == maBN))
            {
                return false;
            }
            try
            {
                PhanGiuong phanGiuong = new PhanGiuong
                {
                    MaBN = maBN,
                    NgayNhan = ngayNhan,
                    MaPhong = maPhong,
                    MaGiuong = maGiuong,
                    MaNVYeuCau = maNVYC
                };
                dc.PhanGiuongs.InsertOnSubmit(phanGiuong);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa phân giường
        public bool XoaPhanGiuong(string maBN)
        {
            try
            {
                var delete = from pk in dc.PhanGiuongs
                             where pk.MaBN == maBN
                             select pk;
                foreach (var i in delete)
                {
                    dc.PhanGiuongs.DeleteOnSubmit(i);
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

        //Sửa phân giường
        public void SuaPhanGiuong(string maBN, DateTime ngayNhan, DateTime ngayTra, string maPhong, string maGiuong)
        {
            var update = dc.PhanGiuongs.Single(phanGiuong => phanGiuong.MaBN == maBN);
            ET_PhanGiuong et = new ET_PhanGiuong(maBN, ngayNhan, ngayTra, maPhong, maGiuong);
            update.NgayNhan = et.NgayNhan;
            update.NgayTra = et.NgayTra;
            var phong = dc.PhongBenhs.SingleOrDefault(pb => pb.MaPhong == maPhong); //Sửa, update combobox PhongBenh
            if (phong != null)
            {
                update.PhongBenh = phong;
            }
            else
            {
                throw new Exception("Phòng này không tồn tại");
            }
            var giuong = dc.GiuongBenhs.SingleOrDefault(gb => gb.MaGiuong == maGiuong); //Sửa, update combobox GiuongBenh
            if (giuong != null)
            {
                update.GiuongBenh = giuong;
            }
            else
            {
                throw new Exception("Giường này không tồn tại");
            }
            dc.SubmitChanges(); //Lưu dữ liệu
        }
    }
}

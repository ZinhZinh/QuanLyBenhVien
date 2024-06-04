using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_PhauThuat
    {
        public static DAL_PhauThuat instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_PhauThuat Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_PhauThuat();
                }
                return instance;
            }
        }

        //Hiển thị PhauThuat lên datagridview
        public IQueryable HienThiBangPhauThuat()
        {
            IQueryable phauThuat = from pt in dc.PhauThuats
                                   select pt;
            return phauThuat;
        }

        //Hiển thị combobox BenhNhan
        public IQueryable HienThiComboboxBenhNhan()
        {
            IQueryable benhNhan = from bn in dc.BenhNhans
                                  select bn;
            return benhNhan;
        }
        //Hiển thị combobox PhauThuat
        public IQueryable HienThiComboboxPhauThuat()
        {
            IQueryable phauThuat = from pt in dc.LoaiPhauThuats
                                   select pt;
            return phauThuat;
        }

        //Hiển thị combobox NhanVien
        public IQueryable HienThiComboboxNhanVien(string maPhongKham)
        {
            IQueryable nhanVien = from nv in dc.NhanViens
                                  join pk in dc.PhongKhams
                                  on nv.MaKhoa equals pk.MaKhoa
                                  where pk.MaPhongKham == maPhongKham && nv.MaChucVu != "CV4"
                                  select nv;
            return nhanVien;
        }

        //Hiển thị combobox PhongPhauThuat
        public IQueryable HienThiComboboxPhongPhauThuat()
        {
            IQueryable phongPT = from ppt in dc.PhongKhams
                                 where ppt.LoaiPhong == "Phòng Chức Năng" && (ppt.TenPhongKham.Contains("phẫu thuật") || ppt.TenPhongKham.Contains("cấp cứu"))
                                 select ppt;
            return phongPT;
        }

        //Hiển thị tên bệnh nhân theo combobox bệnh nhân
        public string HienThiTenBenhNhan(string maBN)
        {
            var benhNhan = (from bn in dc.BenhNhans
                            where bn.MaBN == maBN
                            select bn.HoTenBN).FirstOrDefault();
            return benhNhan;
        }

        //Hiển thị tên nhân viên theo combobox nhân viên
        public string HienThiTenNhanVien(string maNV)
        {
            var nhanVien = (from nv in dc.NhanViens
                            where nv.MaNV == maNV
                            select nv.HoTenNV).FirstOrDefault();
            return nhanVien;
        }

        //Thêm phẫu thuật
        public bool ThemPhauThuat(string maNV, string maPT, string maBN, DateTime ngayPhauThuat, string maPhongKham, string maNVYC)
        {
            //Kiểm tra trùng khóa chính
            if (dc.PhauThuats.Any(phauThuat => phauThuat.MaBN == maBN && phauThuat.NgayPT == ngayPhauThuat && phauThuat.MaPT == maPT && phauThuat.MaPhongKham == maPhongKham && phauThuat.MaNV == maNV))
            {
                return false;
            }
            try
            {
                PhauThuat phauThuat = new PhauThuat
                {
                    MaNV = maNV,
                    MaPT = maPT,
                    MaBN = maBN,
                    NgayPT = ngayPhauThuat,
                    MaNVYeuCau = maNVYC,
                    MaPhongKham = maPhongKham
                };
                dc.PhauThuats.InsertOnSubmit(phauThuat);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa phẫu thuật
        public bool XoaPhauThuat(string maBN)
        {
            try
            {
                var delete = from pt in dc.PhauThuats
                             where pt.MaBN == maBN
                             select pt;
                foreach (var i in delete)
                {
                    dc.PhauThuats.DeleteOnSubmit(i);
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

        //public void SuaPhauThuat(string maNV, string maPT, string maBN, DateTime ngayPhauThuat, string maPhongKham)
        //{
        //    var update = dc.PhauThuats.SingleOrDefault(pt => pt.MaBN == maBN && pt.MaPT == maPT && pt.MaNV == maNV && pt.MaPhongKham == maPhongKham);

        //    if (update == null)
        //    {
        //        throw new InvalidOperationException("No matching PhauThuat found.");
        //    }

        //    // Tiếp tục cập nhật chỉ khi `update` không phải là `null`
        //    var nhanVien = dc.NhanViens.SingleOrDefault(nv => nv.MaNV == maNV);
        //    if (nhanVien != null)
        //    {
        //        update.NhanVien = nhanVien;
        //    }
        //    else
        //    {
        //        throw new Exception("Nhân viên không tồn tại");
        //    }

        //    var loaiPT = dc.LoaiPhauThuats.SingleOrDefault(lpt => lpt.MaPT == maPT);
        //    if (loaiPT != null)
        //    {
        //        update.LoaiPhauThuat = loaiPT;
        //    }
        //    else
        //    {
        //        throw new Exception("Loại phẫu thuật không tồn tại");
        //    }

        //    var benhNhan = dc.BenhNhans.SingleOrDefault(bn => bn.MaBN == maBN);
        //    if (benhNhan != null)
        //    {
        //        update.BenhNhan = benhNhan;
        //    }
        //    else
        //    {
        //        throw new Exception("Bệnh nhân không tồn tại");
        //    }

        //    update.NgayPT = ngayPhauThuat;

        //    var phongKham = dc.PhongKhams.SingleOrDefault(pk => pk.MaPhongKham == maPhongKham);
        //    if (phongKham != null)
        //    {
        //        update.PhongKham = phongKham;
        //    }
        //    else
        //    {
        //        throw new Exception("Phòng khám này không tồn tại");
        //    }
        //    dc.SubmitChanges();
        //}
    }
}

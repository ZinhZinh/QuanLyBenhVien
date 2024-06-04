using ET;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_SoBenhAn
    {
        public static DAL_SoBenhAn instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_SoBenhAn Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_SoBenhAn();
                }
                return instance;
            }
        }
        
        //Hiển thị SoBenhAn lên datagridview
        public IQueryable HienThiBangSoBA()
        {
            IQueryable soBA = from ba in dc.SoBenhAns
                              orderby ba.MaSoBenhAn descending
                              select ba;
            return soBA;
        }

        //Hiển thị combobox BenhNhan
        public IQueryable HienThiComboboxBenhNhan()
        {
            IQueryable benhNhan = from bn in dc.BenhNhans
                                  select bn;
            return benhNhan;
        }

        //Hiển thị combobox NhanVien
        public IQueryable HienThiComboboxNhanVien()
        {
            IQueryable nhanVien = from nv in dc.NhanViens
                                  select nv;
            return nhanVien;
        }

        //Hiển thị combobox PhieuKhamBenh
        public IQueryable HienThiComboboxPhieuKB(string maBN)
        {
            IQueryable khamBenh = from kb in dc.KhamBenhs
                                  where kb.MaBN == maBN
                                  select kb;
            return khamBenh;
        }

        //Hiển thị tên BenhNhan theo combobox BenhNhan
        public string HienThiTenBenhNhan(string maBN)
        {
            var soBA = (from bn in dc.BenhNhans
                       where bn.MaBN == maBN
                       select bn.HoTenBN).FirstOrDefault();                            
            return soBA;
        }

        //Hiển thị tên NhanVien theo combobox NhanVien
        public string HienThiTenNhanVien(string maNV)
        {
            var soBA = (from ba in dc.NhanViens
                        where ba.MaNV == maNV
                        select ba.HoTenNV).FirstOrDefault();
            return soBA;
        }

        //Thêm sổ bệnh án
        public bool ThemSoBenhAn(string maSoBenhAn, string trieuChung, string tieuSuBenhLy, string thongTinLamSang, string chuanDoan, string maBN, string maNV, DateTime ngayLap, string maPhieuKB)
        {
            //Kiểm tra trùng khóa chính
            if (dc.SoBenhAns.Any(soBA => soBA.MaSoBenhAn == maSoBenhAn))
            {
                return false;
            }
            try
            {
                SoBenhAn soBenhAn = new SoBenhAn
                {
                    MaSoBenhAn = maSoBenhAn,
                    TrieuChung = trieuChung,
                    TieuSuBenhLy = tieuSuBenhLy,
                    ThongTinLamSang = thongTinLamSang,
                    ChanDoan = chuanDoan,
                    MaBN = maBN,
                    MaNV = maNV,
                    NgayLap = ngayLap,
                    MaPhieuKB = maPhieuKB
                };
                dc.SoBenhAns.InsertOnSubmit(soBenhAn);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa sổ bệnh án
        public bool XoaSoBenhAn(string maSoBenhAn)
        {
            try
            {
                var delete = from ba in dc.SoBenhAns
                             where ba.MaSoBenhAn == maSoBenhAn
                             select ba;
                foreach (var i in delete)
                {
                    dc.SoBenhAns.DeleteOnSubmit(i);
                    dc.SubmitChanges();//Lưu dữ liệu
                }
                return true;
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Number == 547)//Kiểm tra ràng buộc
                {
                    return false;
                }
            }
            return false;
        }

        //Sửa sổ bệnh án 
        public void SuaSoBenhAn(string maSoBenhAn, string trieuChung, string tieuSuBenhLy, string thongTinLamSang, string chuanDoan, string maBN, string maNV, DateTime ngayLap, string maPhieuKB)
        {
            var update = dc.SoBenhAns.Single(soBA => soBA.MaSoBenhAn == maSoBenhAn);
            ET_SoBenhAn et = new ET_SoBenhAn(maSoBenhAn, trieuChung, tieuSuBenhLy, thongTinLamSang, chuanDoan, maBN, maNV, ngayLap, maPhieuKB);
            update.TrieuChung = et.TrieuChung;
            update.TieuSuBenhLy = et.TieuSuBenhLy;
            update.ThongTinLamSang = et.ThongTinLamSang;
            update.ChanDoan = et.ChuanDoan;
            var benhNhan = dc.BenhNhans.SingleOrDefault(bn => bn.MaBN == maBN); //Sửa, update lại combobox BenhNhan
            if (benhNhan != null)
            {
                update.BenhNhan = benhNhan;
            }
            else
            {
                throw new Exception("Bệnh nhân này không tồn tại");
            }
            var nhanVien = dc.NhanViens.SingleOrDefault(nv => nv.MaNV == maNV);//Sửa, update lại combobox NhanVien
            if (nhanVien != null)
            {
                update.NhanVien = nhanVien;
            }
            else
            {
                throw new Exception("Nhân viên này không tồn tại");
            }
            update.NgayLap = et.NgayLap;
            var khamBenh = dc.KhamBenhs.SingleOrDefault(kb => kb.MaPhieuKB == maPhieuKB);//Sửa, update lại combobox PhieuKhamBenh
            if (khamBenh != null)
            {
                update.MaPhieuKB = maPhieuKB;
            }
            else
            {
                throw new Exception("Mã phiếu khám bệnh này không tồn tại");
            }
            dc.SubmitChanges();//Lưu dữ liệu
        }
    }
}

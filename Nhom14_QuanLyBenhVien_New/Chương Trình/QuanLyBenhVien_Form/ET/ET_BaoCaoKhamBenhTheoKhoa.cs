using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_BaoCaoKhamBenhTheoKhoa
    {
        public ET_BaoCaoKhamBenhTheoKhoa(string maBN, string hoTenBN, string gioiTinh, DateTime ngaySinh, string ngheNghiep, string diaChi, string sdt, string sdtNN, string tenPK, string chuanDoan, string tenKhoa)
        {
            MaBN = maBN;
            HoTenBN = hoTenBN;
            GioiTinh = gioiTinh;
            NgaySinh = ngaySinh;
            NgheNghiep = ngheNghiep;
            DiaChi = diaChi;
            SoDT = sdt;
            SoDTNN = sdtNN;
            TenPhongKham = tenPK;
            ChanDoan = chuanDoan;
            TenKhoa = tenKhoa;
        }

        public string MaBN { get; set; }
        public string HoTenBN { get; set; }
        public string GioiTinh { get; set; }
        public DateTime NgaySinh { get; set; }
        public string NgheNghiep { get; set; }
        public string DiaChi { get; set; }
        public string SoDT { get; set; }
        public string SoDTNN { get; set; }
        public string TenPhongKham { get; set; }
        public string ChanDoan { get; set; }
        public string TenKhoa { get; set; }
    }
}

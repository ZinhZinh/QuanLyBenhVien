using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_ThongTinDonThuoc
    {
        public ET_ThongTinDonThuoc(string hoTenBN, DateTime ngaySinh, string diaChi, string gioiTinh, string hoTenNV, string maDonThuoc, DateTime ngayGioKeDon, string chanDoan, float tongTienTruocGiam, float tongTienSauGiam, string tenThuoc, int soLuong, string cachDung, string maBHYT)
        {
            HoTenBN = hoTenBN;
            NgaySinh = ngaySinh;
            DiaChi = diaChi;
            GioiTinh = gioiTinh;
            HoTenNV = hoTenNV;
            MaDonThuoc = maDonThuoc;
            NgayGioKeDon = ngayGioKeDon;
            ChanDoan = chanDoan;
            TongTienTruocGiam = tongTienTruocGiam;
            TongTienSauGiam = tongTienSauGiam;
            TenThuoc = tenThuoc;
            SoLuong = soLuong;
            CachDung = cachDung;
            MaBHYT = maBHYT;
        }

        public string HoTenBN {  get; set; }
        public DateTime NgaySinh {  get; set; }
        public string DiaChi { get; set; }
        public string GioiTinh {  get; set; }
        public string HoTenNV { get; set; }
        public string MaDonThuoc {  get; set; }
        public DateTime NgayGioKeDon {  get; set; }
        public string ChanDoan {  get; set; }
        public float TongTienTruocGiam { get; set; }
        public float TongTienSauGiam {  get; set; }
        public string TenThuoc { get; set; }
        public int SoLuong {  get; set; }
        public string CachDung {  get; set; }
        public string MaBHYT {  get; set; }
    }
}

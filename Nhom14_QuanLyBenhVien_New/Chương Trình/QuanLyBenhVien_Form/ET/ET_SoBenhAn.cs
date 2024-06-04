using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_SoBenhAn
    {
        private string maSoBenhAn;
        private string trieuChung;
        private string tieuSuBenhLy;
        private string thongTinLamSang;
        private string chuanDoan;
        private string maBN;
        private string maNV;
        private DateTime ngayLap;
        private string maPhieuKB;

        public ET_SoBenhAn(string maSoBenhAn, string trieuChung, string tieuSuBenhLy, string thongTinLamSang, string chuanDoan, string maBN, string maNV, DateTime ngayLap, string maPhieuKB)
        {
            this.maSoBenhAn = maSoBenhAn;
            this.trieuChung = trieuChung;
            this.tieuSuBenhLy = tieuSuBenhLy;
            this.thongTinLamSang = thongTinLamSang;
            this.chuanDoan = chuanDoan;
            this.maBN = maBN;
            this.maNV = maNV;
            this.ngayLap = ngayLap;
            this.maPhieuKB = maPhieuKB;
        }

        public string MaSoBenhAn { get => maSoBenhAn; set => maSoBenhAn = value; }
        public string TrieuChung { get => trieuChung; set => trieuChung = value; }
        public string TieuSuBenhLy { get => tieuSuBenhLy; set => tieuSuBenhLy = value; }
        public string ThongTinLamSang { get => thongTinLamSang; set => thongTinLamSang = value; }
        public string ChuanDoan { get => chuanDoan; set => chuanDoan = value; }
        public string MaBN { get => maBN; set => maBN = value; }
        public string MaNV { get => maNV; set => maNV = value; }
        public DateTime NgayLap { get => ngayLap; set => ngayLap = value; }

        public string MaPhieuKB { get => maPhieuKB; set => maPhieuKB = value; }
    }
}

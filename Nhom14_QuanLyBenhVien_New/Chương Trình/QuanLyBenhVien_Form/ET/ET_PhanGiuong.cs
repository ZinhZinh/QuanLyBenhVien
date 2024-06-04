using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_PhanGiuong
    {
        private string maBN;
        private DateTime ngayNhan;
        private DateTime ngayTra;
        private string maPhong;
        private string maGiuong;

        public ET_PhanGiuong(string maBN, DateTime ngayNhan, DateTime ngayTra, string maPhong, string maGiuong)
        {
            this.maBN = maBN;
            this.ngayNhan = ngayNhan;
            this.ngayTra = ngayTra;
            this.maPhong = maPhong;
            this.maGiuong = maGiuong;
        }

        public string MaBN { get => maBN; set => maBN = value; }
        public DateTime NgayNhan { get => ngayNhan; set => ngayNhan = value; }
        public DateTime NgayTra { get => ngayTra; set => ngayTra = value; }
        public string MaPhong { get => maPhong; set => maPhong = value; }
        public string MaGiuong { get => maGiuong; set => maGiuong = value; }
    }
}

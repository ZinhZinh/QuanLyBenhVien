using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_GiuongBenh
    {
        private string maGiuong;
        private string soGiuong;
        private string maPhong;

        public ET_GiuongBenh(string maGiuong, string soGiuong, string maPhong)
        {
            this.maGiuong = maGiuong;
            this.soGiuong = soGiuong;
            this.maPhong = maPhong;
        }

        public string MaGiuong { get => maGiuong; set => maGiuong = value; }
        public string SoGiuong { get => soGiuong; set => soGiuong = value; }
        public string MaPhong { get => maPhong; set => maPhong = value; }
    }
}

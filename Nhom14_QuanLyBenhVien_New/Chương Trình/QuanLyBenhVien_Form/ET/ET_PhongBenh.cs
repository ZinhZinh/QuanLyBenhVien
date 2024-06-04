using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_PhongBenh
    {
        private string maPhongBenh;
        private string tenPhongBenh;
        private string loaiPhong;
        private string maKhoa;

        public ET_PhongBenh(string maPhongBenh, string tenPhongBenh, string loaiPhong, string maKhoa)
        {
            this.maPhongBenh = maPhongBenh;
            this.tenPhongBenh = tenPhongBenh;
            this.loaiPhong = loaiPhong;
            this.maKhoa = maKhoa;
        }

        public string MaPhongBenh { get => maPhongBenh; set => maPhongBenh = value; }
        public string TenPhongBenh { get => tenPhongBenh; set => tenPhongBenh = value; }
        public string LoaiPhong { get => loaiPhong; set => loaiPhong = value; }
        public string MaKhoa { get => maKhoa; set => maKhoa = value; }
    }
}

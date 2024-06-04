using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_PhongKham
    {
        private string maPhongKham;
        private string tenPhongKham;
        private string maKhoa;
        private string loaiPhong;

        public ET_PhongKham(string maPhongKham, string tenPhongKham, string maKhoa, string loaiPhong)
        {
            this.maPhongKham = maPhongKham;
            this.tenPhongKham = tenPhongKham;
            this.maKhoa = maKhoa;
            this.loaiPhong = loaiPhong;
        }

        public string MaPhongKham { get => maPhongKham; set => maPhongKham = value; }
        public string TenPhongKham { get => tenPhongKham; set => tenPhongKham = value; }
        public string MaKhoa { get => maKhoa; set => maKhoa = value; }
        public string LoaiPhong { get => loaiPhong; set => loaiPhong = value; }
    }
}

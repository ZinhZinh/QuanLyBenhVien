using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_KhamBenh
    {
        private string maBN;
        private string maPhongKham;
        private string maNV;

        public ET_KhamBenh(string maBN, string maPhongKham, string maNV)
        {
            this.maBN = maBN;
            this.maPhongKham = maPhongKham;
            this.maNV = maNV;
        }

        public string MaBN { get => maBN; set => maBN = value; }
        public string MaPhongKham { get => maPhongKham; set => maPhongKham = value; }
        public string MaNV { get => maNV; set => maNV = value; }
    }
}

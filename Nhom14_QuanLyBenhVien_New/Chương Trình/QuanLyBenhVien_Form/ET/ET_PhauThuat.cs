using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_PhauThuat
    {
        private string maNV;
        private string maPT;
        private string maBN;
        private DateTime ngayPhauThuat;
        private string maPhongKham;

        public ET_PhauThuat(string maNV, string maPT, string maBN, DateTime ngayPhauThuat, string maPhongKham)
        {
            this.maNV = maNV;
            this.maPT = maPT;
            this.maBN = maBN;
            this.ngayPhauThuat = ngayPhauThuat;
            this.maPhongKham = maPhongKham;
        }

        public string MaNV { get => maNV; set => maNV = value; }
        public string MaPT { get => maPT; set => maPT = value; }
        public string MaBN { get => maBN; set => maBN = value; }
        public DateTime NgayPhauThuat { get => ngayPhauThuat; set => ngayPhauThuat = value; }
        public string MaPhongKham { get => maPhongKham; set => maPhongKham = value; }
    }
}

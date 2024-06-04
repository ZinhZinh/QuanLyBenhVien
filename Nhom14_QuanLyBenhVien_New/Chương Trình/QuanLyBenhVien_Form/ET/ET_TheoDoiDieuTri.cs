using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_TheoDoiDieuTri
    {
        private string maBN;
        private DateTime ngayTheoDoi;
        private string chiSoCanNang;
        private string chiSoHuyetAp;
        private string chiSoNhipTho;
        private string yLenh;
        private string maNV;

        public ET_TheoDoiDieuTri(string maBN, DateTime ngayTheoDoi, string chiSoCanNang, string chiSoHuyetAp, string chiSoNhipTho, string yLenh, string maNV)
        {
            this.maBN = maBN;
            this.ngayTheoDoi = ngayTheoDoi;
            this.chiSoCanNang = chiSoCanNang;
            this.chiSoHuyetAp = chiSoHuyetAp;
            this.chiSoNhipTho = chiSoNhipTho;
            this.yLenh = yLenh;
            this.maNV = maNV;
        }

        public string MaBN { get => maBN; set => maBN = value; }
        public DateTime NgayTheoDoi { get => ngayTheoDoi; set => ngayTheoDoi = value; }
        public string ChiSoCanNang { get => chiSoCanNang; set => chiSoCanNang = value; }
        public string ChiSoHuyetAp { get => chiSoHuyetAp; set => chiSoHuyetAp = value; }
        public string ChiSoNhipTho { get => chiSoNhipTho; set => chiSoNhipTho = value; }
        public string YLenh { get => yLenh; set => yLenh = value; }
        public string MaNV { get => maNV; set => maNV = value; }
    }
}

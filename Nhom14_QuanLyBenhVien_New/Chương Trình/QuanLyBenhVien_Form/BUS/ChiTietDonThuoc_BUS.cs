using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class ChiTietDonThuoc_BUS
    {
        private static ChiTietDonThuoc_BUS instance;
        private ChiTietDonThuoc_DAL dal = new ChiTietDonThuoc_DAL();

        public static ChiTietDonThuoc_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ChiTietDonThuoc_BUS();
                }
                return instance;
            }
        }

        private ChiTietDonThuoc_BUS() { }

        //thêm chi tiết đơn thuốc
        public string them(string maDT, string maThuoc, int sL, string cachDung)
        {
            if (dal.them(maDT, maThuoc, sL, cachDung))
            {
                return "Thêm thuốc thành công";
            }
            else
            {
                return "Thêm thuốc không thành công";
            }
        }

        //Xóa chi tiết đơn thuốc
        public string xoa(string maDT, string maThuoc)
        {
            if (dal.xoa(maDT, maThuoc))
            {
                return "Xóa thuốc thành công";
            }
            else
            {
                return "Xóa không thành công";
            }
        }

        //Sửa thông tin chi tiết đơn thuốc
        public string sua(string maDT, string maThuoc, int sL, string cachDung)
        {
            if (dal.sua(maDT, maThuoc, sL, cachDung))
            {
                return "Sửa thành công";
            }
            else
            {
                return "Sửa không thành công";
            }
        }

        //Lấy danh sách thông tin thuốc (Mathuoc, TenThuoc, SoLuong, TongTien thuốc)
        public void layDSTTThuoc(DataGridView data, string maDT)
        {
            data.DataSource = dal.layDSTTThuoc(maDT);
        }

        public void layTTThuoc(DataGridView data, string maDT)
        {
            data.DataSource = dal.layTTThuoc(maDT);
        }

    }
}

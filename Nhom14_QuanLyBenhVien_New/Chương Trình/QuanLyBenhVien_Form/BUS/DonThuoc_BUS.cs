using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class DonThuoc_BUS
    {
        private static DonThuoc_BUS instance;
        private DonThuoc_DAL dal = new DonThuoc_DAL();

        public static DonThuoc_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DonThuoc_BUS();
                }
                return instance;
            }
        }

        private DonThuoc_BUS() { }

        //thêm đơn thuốc
        public string them(string maDT, DateTime ngayKe, string maNV, string maBN, string chuanDoan)
        {
            if (dal.them(maDT, ngayKe, maNV, maBN, chuanDoan))
            {
                return "Thêm đơn thuốc thành công";
            }
            else
            {
                return "Thêm đơn thuốc không thành công";
            }
        }

        //Lấy tổng tiền của đơn thuốc
        public void layTongTienDonThuoc(string maDT, TextBox txt)
        {
            double? tongTien = dal.layTongTienDonThuoc(maDT);
            if (tongTien.HasValue)
            {
                txt.Text = tongTien.Value.ToString();
            }
            else
            {
                //rỗng
                txt.Text = string.Empty;
            }

        }

        //Tra cứu đơn thuốc
        public void traCuuDonThuoc(String maBN, DataGridView data)
        {
            if (BenhNhan_DAL.Instance.kiemTraTonTai(maBN))
            {
                data.DataSource = dal.traCuuDonThuoc(maBN);
            }
            else
            {
                MessageBox.Show("Không tìm thấy đơn thuốc của bệnh nhân này!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
        }
    }
}

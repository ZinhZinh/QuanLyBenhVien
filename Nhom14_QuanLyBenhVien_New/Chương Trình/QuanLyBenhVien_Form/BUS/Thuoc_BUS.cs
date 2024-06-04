using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class Thuoc_BUS
    {
        private static Thuoc_BUS instance;
        private Thuoc_DAL dal = new Thuoc_DAL();

        public static Thuoc_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Thuoc_BUS();
                }
                return instance;
            }
        }

        private Thuoc_BUS() { }

        //Tải dữ liệu lên dgv
        public void load(DataGridView data)
        {
            data.DataSource = dal.load();
        }

        //Thêm thuốc
        public string them(string ma, string ten, string dvt, string xuatXu, float gia)
        {
            if (dal.them(ma, ten, dvt, xuatXu, gia))
            {
                return "Thêm thành công";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        //Xóa thuốc
        public string xoa(string id, Button btn)
        {
            if (dal.xoa(id))
            {
                btn.Enabled = false;
                return "Xóa thành công";
            }
            else
            {
                return "Xóa không thành công";
            }
        }

        //Sửa
        public string sua(string ma, string ten, string dvt, string xuatXu, float gia, Button btn)
        {
            if (dal.sua(ma, ten, dvt, xuatXu, gia))
            {
                btn.Enabled = false;
                return "Sửa thành công";
            }
            else
            {
                return "Sửa không thành công";
            }
        }

        //Tìm kiếm
        public void timKiem(DataGridView data, string id)
        {
            if (dal.kiemTraTonTai(id))
            {
                data.DataSource = dal.tim(id);
            }
            else
            {
                MessageBox.Show("Không tìm thấy thuốc này!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }

        //Lấy danh sách thuốc cho listbox
        public List<string> layDSThuocChoListBox(string keyword)
        {
            List<string> dsTenThuoc = new List<string>();
            List<Thuoc> dsThuoc = dal.layDSThuocChoListBox(keyword);

            foreach (var thuoc in dsThuoc)
            {
                dsTenThuoc.Add(thuoc.TenThuoc);
            }

            return dsTenThuoc;
        }

        //lấy thuốc theo tên
        public string[] layThuocTheoTen(string tenThuoc)
        {
            Thuoc thuoc = dal.layThuocTheoTen(tenThuoc);

            if (thuoc != null)
            {
                return new string[] { thuoc.MaThuoc, thuoc.TenThuoc, thuoc.XuatXu, thuoc.DonGiaThuoc.ToString() };
            }

            return null;
        }


    }
}

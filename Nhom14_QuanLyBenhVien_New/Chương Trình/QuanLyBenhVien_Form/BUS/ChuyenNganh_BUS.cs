using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class ChuyenNganh_BUS
    {
        private static ChuyenNganh_BUS instance;
        private ChuyenNganh_DAL dal = new ChuyenNganh_DAL();
        private Khoa_DAL khoa = new Khoa_DAL();

        public static ChuyenNganh_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ChuyenNganh_BUS();
                }
                return instance;
            }
        }

        private ChuyenNganh_BUS() { }

        //tải dữ liệu lên dgv
        public void load(DataGridView data)
        {
            data.DataSource = dal.load();
        }

        //Tải dữ liệu lên cboKhoa
        public void layDSKhoa(ComboBox data)
        {
            data.DataSource = khoa.load();
        }

        //thêm Khoa
        public string them(string maCN, string tenCN, string maK)
        {
            if (dal.them(maCN, tenCN, maK))
            {
                return "Thêm thành công";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        //Xóa Khoa
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

        //Sửa thông tin khoa
        public string sua(string maCN, string tenCN, string maK, Button btn)
        {
            if (dal.sua(maCN, tenCN, maK))
            {
                btn.Enabled = false;
                return "Sửa thành công";
            }
            else
            {
                return "Sửa không thành công";
            }
        }

    }
}

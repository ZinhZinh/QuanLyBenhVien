using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class Khoa_BUS
    {
        private static Khoa_BUS instance;
        private Khoa_DAL dal = new Khoa_DAL();

        public static Khoa_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Khoa_BUS();
                }
                return instance;
            }
        }

        private Khoa_BUS() { }

        //tải dữ liệu lên dgv
        public void load(DataGridView data)
        {
            data.DataSource = dal.load();
        }

        //thêm Khoa
        public string them(string maK, string tenK)
        {
            if (dal.them(maK, tenK))
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
        public string sua(string maK, string tenK, Button btn)
        {
            if (dal.sua(maK, tenK))
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

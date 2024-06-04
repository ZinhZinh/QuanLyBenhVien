using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class DichVu_BUS
    {
        private static DichVu_BUS instance;
        private DichVu_DAL dal = new DichVu_DAL();

        public static DichVu_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DichVu_BUS();
                }
                return instance;
            }
        }

        private DichVu_BUS() { }

        //tải dữ liệu lên dgv
        public void load(DataGridView data)
        {
            data.DataSource = dal.load();
        }

        //thêm dịch vụ
        public string them(string maDV, string tenDV, float gia)
        {
            if (dal.them(maDV, tenDV, gia))
            {
                return "Thêm dịch vụ thành công";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        //Xóa dịch vụ
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
        public string sua(string maDV, string tenDV, float gia, Button btn)
        {
            if (dal.sua(maDV, tenDV, gia))
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

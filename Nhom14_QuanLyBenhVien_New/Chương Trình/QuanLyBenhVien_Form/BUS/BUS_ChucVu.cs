using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_ChucVu
    {
        public static BUS_ChucVu instance;
        public DAL_ChucVu dal = new DAL_ChucVu();

        public static BUS_ChucVu Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_ChucVu();
                }
                return instance;
            }
        }

        //Hiển thị ChucVu lên datagridview
        public void HienThiChucVu(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangChucVu();
        }

        //Thêm chức vụ
        public void ThemChucVu(string maCV, string tenCV)
        {
            if (dal.ThemChucVu(maCV, tenCV) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa chức vụ
        public void XoaChucVu(string maCV)
        {
            if (dal.XoaChucVu(maCV) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa chức vụ
        public void SuaChucVu(string maCV, string tenCV)
        {
            dal.SuaChucVu(maCV, tenCV);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

    }
}

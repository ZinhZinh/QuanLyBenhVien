using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_GiuongBenh
    {
        public static BUS_GiuongBenh instance;
        private DAL_GiuongBenh dal = new DAL_GiuongBenh();

        public static BUS_GiuongBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_GiuongBenh();
                }
                return instance;
            }
        }

        //Hiển thị giường bệnh lên datagridview
        public void HienThiGiuongBenh(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangGiuongBenh();
        }

        //Hiển thị combobox PhongBenh
        public void HienThiComboboxPhongBenh(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxPhongBenh();
            cbo.ValueMember = "MaPhong";
            cbo.DisplayMember = "TenPhong";
        }

        //Thêm giường bệnh
        public void ThemGiuongBenh(string maGiuong, string soGiuong, string maPhong)
        {
            if (dal.ThemGiuongBenh(maGiuong, soGiuong, maPhong) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa giường bệnh
        public void XoaGiuongBenh(string maGiuong)
        {
            if (dal.XoaGiuongBenh(maGiuong) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa giường bệnh
        public void SuaGiuongBenh(string maGiuong, string soGiuong, string maPhong)
        {
            dal.SuaGiuongBenh(maGiuong, soGiuong, maPhong);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

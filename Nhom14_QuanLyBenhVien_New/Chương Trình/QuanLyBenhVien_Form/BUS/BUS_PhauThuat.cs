using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_PhauThuat
    {
        public static BUS_PhauThuat instance;
        private DAL_PhauThuat dal = new DAL_PhauThuat();

        public static BUS_PhauThuat Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_PhauThuat();
                }
                return instance;
            }
        }

        //Hiển thị bảng phẫu thuật
        public void HienThiPT(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangPhauThuat();
        }

        //Hiển thị combobox bệnh nhân
        public void HienThiComboboxBenhNhan(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxBenhNhan();
            cbo.ValueMember = "MaBN";
            cbo.DisplayMember = "MaBN";
        }

        //Hiển thị combobox loại phẫu thuật
        public void HienThiComboboxLoaiPhauThuat(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxPhauThuat();
            cbo.ValueMember = "MaPT";
            cbo.DisplayMember = "TenPT";
        }

        //Hiển thị combobox nhân viên
        public void HienThiComboboxNhanVien(ComboBox cbo, string maPhongKham)
        {
            cbo.DataSource = dal.HienThiComboboxNhanVien(maPhongKham);
            cbo.ValueMember = "MaNV";
            cbo.DisplayMember = "MaNV";
        }
        
        //Hiển thị combobox phòng phẫu thuật
        public void HienThiComboboxPhongPT(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxPhongPhauThuat();
            cbo.ValueMember = "MaPhongKham";
            cbo.DisplayMember = "TenPhongKham";
        }

        //Hiển thị tên bệnh nhân theo combobox bệnh nhân
        public void HienThiTenBenhNhan(TextBox txt, string maBN)
        {
            txt.Text = dal.HienThiTenBenhNhan(maBN);
        }

        //Hiển thị tên bệnh nhân theo combobox nhân viên
        public void HienThiTenNhanVien(TextBox txt, string maNV)
        {
            txt.Text = dal.HienThiTenNhanVien(maNV);
        }

        //Thêm phẫu thuật
        public void ThemPhauThuat(string maNV, string maPT, string maBN, DateTime ngayPhauThuat, string maPhongKham, string maNVYC)
        {
            if (dal.ThemPhauThuat(maNV, maPT, maBN, ngayPhauThuat, maPhongKham, maNVYC) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa phẫu thuật
        public void XoaPhauThuat(string maBN)
        {
            if (dal.XoaPhauThuat(maBN) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //public void SuaPhauThuat(string maNV, string maPT, string maBN, DateTime ngayPhauThuat, string maPhongKham)
        //{
        //    DAL_PhauThuat.Instance.SuaPhauThuat(maNV, maPT, maBN, ngayPhauThuat, maPhongKham);
        //    MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //}
    }
}

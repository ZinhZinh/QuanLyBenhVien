using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_PhanGiuong
    {
        public static BUS_PhanGiuong instance;
        private DAL_PhanGiuong dal = new DAL_PhanGiuong();


        public static BUS_PhanGiuong Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_PhanGiuong();
                }
                return instance;
            }
        }

        //Hiển thị bảng phân giường
        public void HienThiPhanGiuong(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangPhanGiuong();
        }

        //Hiển thị combobox bệnh nhân
        public void HienThiComboboxBenhNhan(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxBenhNhan();
            cbo.ValueMember = "MaBN";
            cbo.DisplayMember = "MaBN";
        }

        //Hiển thị combobox phòng bệnh
        public void HienThiComboboxPhongBenh(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxPhongBenh();
            cbo.ValueMember = "MaPhong";
            cbo.DisplayMember = "MaPhong";
        }

        //Hiển thị combobox giường bệnh
        public void HienThiComboboxGiuongBenh(ComboBox cbo, string maPhongBenh)
        {
            cbo.DataSource = dal.HienThiComboboxGiuongBenh(maPhongBenh);
            cbo.ValueMember = "MaGiuong";
            cbo.DisplayMember = "MaGiuong";
        }

        //Hiển thị tên bệnh nhân theo combobox bệnh nhân
        public void HienThiTenBenhNhan(TextBox txt, string maBN)
        {
            txt.Text = dal.HienThiTenBenhNhan(maBN);
        }
        //Hiển thị tên phòng bệnh theo combobox phòng bệnh
        public void HienThiTenPhongBenh(TextBox txt, string maPB)
        {
            txt.Text = dal.HienThiTenPhongBenh(maPB);
        }

        //Hiển thị số giường theo combobox giường bệnh
        public void HienThiSoGiuong(TextBox txt, string maGB)
        {
            txt.Text = dal.HienThiSoGiuong(maGB);
        }

        //Thêm phân giường
        public void ThemPhanGiuong(string maBN, DateTime ngayNhan, DateTime ngayTra, string maPhong, string maGiuong, string maNVYC)
        {
            if (dal.ThemPhanGiuong(maBN, ngayNhan, ngayTra, maPhong, maGiuong, maNVYC) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa phân giường
        public void XoaPhanGiuong(string maBN)
        {
            if (dal.XoaPhanGiuong(maBN) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa phân giường
        public void SuaPhanGiuong(string maBN, DateTime ngayNhan, DateTime ngayTra, string maPhong, string maGiuong)
        {
            dal.SuaPhanGiuong(maBN, ngayNhan, ngayTra, maPhong, maGiuong);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

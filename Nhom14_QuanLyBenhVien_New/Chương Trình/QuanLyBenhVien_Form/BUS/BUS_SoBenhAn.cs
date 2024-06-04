using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_SoBenhAn
    {
        public static BUS_SoBenhAn instance;
        private DAL_SoBenhAn dal = new DAL_SoBenhAn();

        public static BUS_SoBenhAn Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_SoBenhAn();
                }
                return instance;
            }
        }

        //Hiển thị bảng sổ bệnh án
        public void HienThiSoBenhAn(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangSoBA();
        }

        //Hiển thị tên bệnh nhân theo combobox BenhNhan
        public void HienThiTenBenhNhan(TextBox txtBN, string maBN)
        {
            txtBN.Text = dal.HienThiTenBenhNhan(maBN);
        }

        //Hiển thị tên nhân viên theo combobox NhanVien
        public void HienThiTenNhanVien(TextBox txtNV, string maNV)
        {
            txtNV.Text = dal.HienThiTenNhanVien(maNV);
        }

        //Them sổ bệnh án
        public void ThemSoBenhAn(string maSoBenhAn, string trieuChung, string tieuSuBenhLy, string thongTinLamSang, string chuanDoan, string maBN, string maNV, DateTime ngayLap, string maPhieuKB)
        {
            if (dal.ThemSoBenhAn(maSoBenhAn, trieuChung, tieuSuBenhLy, thongTinLamSang, chuanDoan, maBN, maNV, ngayLap, maPhieuKB) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa sổ bệnh án 
        public void XoaSoBenhAn(string maSoBenhAn)
        {
            if (dal.XoaSoBenhAn(maSoBenhAn) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa sổ bệnh án
        public void SuaSoBenhAn(string maSoBenhAn, string trieuChung, string tieuSuBenhLy, string thongTinLamSang, string chuanDoan, string maBN, string maNV, DateTime ngayLap, string maPhieuKB)
        {
            dal.SuaSoBenhAn(maSoBenhAn, trieuChung, tieuSuBenhLy, thongTinLamSang, chuanDoan, maBN, maNV, ngayLap, maPhieuKB);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        //Hiển thị combobox BenhNhan
        public void HienThiComboboxBenhNhan(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxBenhNhan();
            cbo.ValueMember = "MaBN";
            cbo.DisplayMember = "MaBN";

        }

        //Hiển thị combobox NhanVien
        public void HienThiComboboxNhanVien(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxNhanVien();
            cbo.ValueMember = "MaNV";
            cbo.DisplayMember = "MaNV";
        }

        //Hiển thị combobox PhieuKB
        public void HienThiComboboxPhieuKB(ComboBox cbo, string maBN)
        {
            cbo.DataSource = dal.HienThiComboboxPhieuKB(maBN);
            cbo.ValueMember = "MaPhieuKB";
            cbo.DisplayMember = "MaPhieuKB";
        }
    }
}


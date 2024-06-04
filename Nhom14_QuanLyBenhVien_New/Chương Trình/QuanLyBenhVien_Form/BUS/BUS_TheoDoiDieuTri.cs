using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_TheoDoiDieuTri
    {
        public static BUS_TheoDoiDieuTri instance;
        private DAL_TheoDoiDieuTri dal = new DAL_TheoDoiDieuTri();

        public static BUS_TheoDoiDieuTri Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_TheoDoiDieuTri();
                }
                return instance;
            }
        }

        //Hien thi bang TDDT
        public void HienThiTDDT(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangTDDT();
        }

        //Hiển thị combobox BenhNhan
        public void HienThiComboboxBenhNhan(ComboBox cbo)
        {
            cbo.DataSource = DAL_TheoDoiDieuTri.Instance.HienThiComboboxBenhNhan();
            cbo.ValueMember = "MaBN";
            cbo.DisplayMember = "MaBN";
        }

        //Hiển thị combobox NhanVien
        public void HienThiComboboxNhanVien(ComboBox cbo, string maBN)
        {
            cbo.DataSource = dal.HienThiComboboxNhanVien(maBN);
            cbo.ValueMember = "MaNV";
            cbo.DisplayMember = "MaNV";
        }

        //Hiển thị tên bệnh nhân theo combobox BenhNhan
        public void HienThiTenBenhNhan(TextBox txt, string maBN)
        {
            txt.Text = dal.HienThiTenBenhNhan(maBN);
        }

        //Hiển thị tên nhân viên theo combobox NhanVien
        public void HienThiTenNhanVien(TextBox txt, string maNV)
        {
            txt.Text = dal.HienThiTenNhanVien(maNV);
        }

        //Thêm TDDT
        public void ThemTDDT(string maBN, DateTime ngayTheoDoi, string chiSoCanNang, string chiSoHuyetAp, string chiSoNhipTho, string yLenh, string maNV)
        {
            if (dal.ThemTDDT(maBN, ngayTheoDoi, chiSoCanNang, chiSoHuyetAp, chiSoNhipTho, yLenh, maNV) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xoa TDDT
        public void XoaTDDT(string maBN, string maNV)
        {
            if (dal.XoaTDDT(maBN,maNV) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa TDDT
        public void SuaTDDT(string maBN, DateTime ngayTheoDoi, string chiSoCanNang, string chiSoHuyetAp, string chiSoNhipTho, string yLenh, string maNV)
        {
            dal.SuaTDDT(maBN, ngayTheoDoi, chiSoCanNang, chiSoHuyetAp, chiSoNhipTho, yLenh, maNV);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

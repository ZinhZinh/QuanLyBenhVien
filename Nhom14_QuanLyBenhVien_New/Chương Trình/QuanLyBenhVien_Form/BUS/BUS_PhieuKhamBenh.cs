using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_PhieuKhamBenh
    {
        public static BUS_PhieuKhamBenh instance;
        private DAL_PhieuKhamBenh dal = new DAL_PhieuKhamBenh();


        public static BUS_PhieuKhamBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_PhieuKhamBenh();
                }
                return instance;
            }
        }

        //Hiển thị bảng phiếu khám bệnh
        public void HienThiPKB(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangPKB();
        }

        //Hiển thị combobox bệnh nhân
        public void HienThiComboboxBenhNhan(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxBenhNhan();
            cbo.ValueMember = "MaBN";
            cbo.DisplayMember = "MaBN";
        }

        //Thêm phiếu khám bệnh
        public void ThemPKB(string maPhieuKB, string maBN, DateTime ngayKham)
        {
            if (dal.ThemPKB(maPhieuKB,maBN, ngayKham) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa phiếu khám bệnh
        public void XoaPKB(string maPhieuKB)
        {
            if (dal.XoaPhieuKB(maPhieuKB) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}

using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBenhVien
{
    public partial class frmTraCuuGiuongBenh : Form
    {
        public frmTraCuuGiuongBenh()
        {
            InitializeComponent();
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            SuDungDichVu_BUS.Instance.layDSGiuongTrong(cboPhongBenh.SelectedValue.ToString(), dgvDSGiuong);
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void frmTraCuuGiuongBenh_Load(object sender, EventArgs e)
        {
            SuDungDichVu_BUS.Instance.layDSPhongBenh(cboPhongBenh);
            cboPhongBenh.DisplayMember = "TenPhong";
            cboPhongBenh.ValueMember = "MaPhong";
        }
    }
}

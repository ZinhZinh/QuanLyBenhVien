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
    public partial class frmTraCuuDonThuoc : Form
    {
        public frmTraCuuDonThuoc()
        {
            InitializeComponent();
        }
        private frmMain frmMain;
        public frmTraCuuDonThuoc(frmMain frmMain)
        {
            InitializeComponent();
            this.frmMain = frmMain;
        }



        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            if (txtMaBN.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                //tải dữ liệu
                DonThuoc_BUS.Instance.traCuuDonThuoc(txtMaBN.Text, dgvTCDT);
            }
        }

        private void txtMaBN_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMaBN.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMaBN.Text = txtMaBN.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMaBN.Text = txtMaBN.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMaBN.SelectionStart = txtMaBN.Text.Length;
        }

        private void txtMaBN_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void frmTraCuuDonThuoc_Load(object sender, EventArgs e)
        {
            btnIn.Enabled = false;
        }

        string maDT;
        private void btnIn_Click(object sender, EventArgs e)
        {
            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmSoBA từ frmMain
            mainForm.openChildForm(new frmInDonThuoc(maDT));
        }

        private void dgvTCDT_Click(object sender, EventArgs e)
        {
            btnIn.Enabled = true;

            int dong = dgvTCDT.CurrentCell.RowIndex;
            maDT = dgvTCDT.Rows[dong].Cells[0].Value.ToString();
        }
    }
}

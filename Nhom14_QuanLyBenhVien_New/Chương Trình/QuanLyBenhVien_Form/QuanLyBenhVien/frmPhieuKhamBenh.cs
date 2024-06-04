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
    public partial class frmPhieuKhamBenh : Form
    {
        public frmPhieuKhamBenh()
        {
            InitializeComponent();
        }

        //Constructor nhận mã bệnh nhân
        public frmPhieuKhamBenh(string maBN)
        {
            InitializeComponent();
            //lấy mã bệnh nhân
            txtMaBN.Text = maBN;
        }

        public bool KiemTraNhap()
        {
            if (txtMaPhieuKB.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void frmPhieuKhamBenh_Load(object sender, EventArgs e)
        {
            BUS_PhieuKhamBenh.Instance.HienThiPKB(dgvPhieuKB);
            dgvPhieuKB.Columns[3].Visible = false;
        }

        private void btnThemPKB_Click(object sender, EventArgs e)
        {
            if (KiemTraNhap() == true)
            {
                BUS_PhieuKhamBenh.Instance.ThemPKB(txtMaPhieuKB.Text, txtMaBN.Text, Convert.ToDateTime(dtpNgayKham.Value));
                BUS_PhieuKhamBenh.Instance.HienThiPKB(dgvPhieuKB);
            }
        }

        private void btnXoaPKB_Click(object sender, EventArgs e)
        {
            if (dgvPhieuKB.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_PhieuKhamBenh.Instance.XoaPKB(txtMaPhieuKB.Text);
                    BUS_PhieuKhamBenh.Instance.HienThiPKB(dgvPhieuKB);
                }
            }
        }

        private void dgvPhieuKB_Click(object sender, EventArgs e)
        {
            if (dgvPhieuKB.CurrentRow != null && !dgvPhieuKB.Rows[dgvPhieuKB.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvPhieuKB.CurrentCell.RowIndex;
                txtMaPhieuKB.Text = dgvPhieuKB.Rows[dong].Cells[0].Value.ToString();
                txtMaBN.Text = dgvPhieuKB.Rows[dong].Cells[1].Value.ToString();
                dtpNgayKham.Text = dgvPhieuKB.Rows[dong].Cells[2].Value.ToString();
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaPhieuKB.Clear();
            txtMaPhieuKB.Focus();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void txtMaPhieuKB_TextChanged(object sender, EventArgs e)
        {
            if (txtMaPhieuKB.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaPhieuKB.Text = txtMaPhieuKB.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaPhieuKB.SelectionStart = txtMaPhieuKB.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtMaPhieuKB_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != '.' || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt ngoài .", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btnKhamBenh_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maPKB = txtMaPhieuKB.Text;
            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB))
            {
                MessageBox.Show("Vui lòng nhập mã bệnh nhân hoặc mã phiếu khám bệnh.");
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmSoBA từ frmMain
            mainForm.openChildForm(new frmKhamBenh(maBN, maPKB));
        }
    }
}

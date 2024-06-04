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
    public partial class frmChucVu : Form
    {
        public frmChucVu()
        {
            InitializeComponent();
        }

        private void frmChucVu_Load(object sender, EventArgs e)
        {
            BUS_ChucVu.Instance.HienThiChucVu(dgvCV);
        }

        public bool KiemTraNhap()
        {
            if (txtMaCV.Text.Length == 0 || txtTenCV.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin cho Chức Vụ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        public bool KiemTraMa(string maCV)
        {
            if (maCV.Equals(dgvCV.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (KiemTraNhap() == true)
            {
                //Thêm chức vụ và load lại datagridview
                BUS_ChucVu.Instance.ThemChucVu(txtMaCV.Text, txtTenCV.Text);
                BUS_ChucVu.Instance.HienThiChucVu(dgvCV);
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvCV.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_ChucVu.Instance.XoaChucVu(txtMaCV.Text);
                    BUS_ChucVu.Instance.HienThiChucVu(dgvCV);
                }
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            DialogResult dialog = MessageBox.Show("Bạn có muốn sửa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (dialog == DialogResult.Yes)
            {
                if (KiemTraNhap() == true && KiemTraMa(txtMaCV.Text) == true)
                {
                    BUS_ChucVu.Instance.SuaChucVu(txtMaCV.Text, txtTenCV.Text);
                    BUS_ChucVu.Instance.HienThiChucVu(dgvCV);
                }
                else
                {
                    MessageBox.Show("Bạn không được sửa mã " + dgvCV.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaCV.Text = dgvCV.CurrentRow.Cells[0].Value.ToString();
                }
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaCV.Clear();
            txtTenCV.Clear();
            txtMaCV.Focus();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void dgvCV_Click(object sender, EventArgs e)
        {
            if (dgvCV.CurrentRow != null && !dgvCV.Rows[dgvCV.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvCV.CurrentCell.RowIndex;
                txtMaCV.Text = dgvCV.Rows[dong].Cells[0].Value.ToString();
                txtTenCV.Text = dgvCV.Rows[dong].Cells[1].Value.ToString();
            }
                
        }

        private void txtMaCV_TextChanged(object sender, EventArgs e)
        {
            if (txtMaCV.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaCV.Text = txtMaCV.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaCV.SelectionStart = txtMaCV.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenCV_TextChanged(object sender, EventArgs e)
        {
            if (txtTenCV.Text.Length > 100)
            {
                // Cắt bớt ký tự thừa
                txtTenCV.Text = txtTenCV.Text.Substring(0, 100);

                // Đặt con trỏ chuột ở cuối văn bản
                txtTenCV.SelectionStart = txtTenCV.Text.Length;

                MessageBox.Show("Tên chức vụ tối đa là 100 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtTenCV.Text)
            {
                // Nếu là ký tự chữ
                if (char.IsLetter(c))
                {
                    filteredText += c;
                }
                else if (c == ' ' && !filteredText.EndsWith(" "))
                {
                    // Nếu là khoảng trắng và chưa có khoảng trắng ở cuối filteredText
                    filteredText += c;
                }
                else
                {
                    hasInvalidChar = true;
                }
            }

            // Kiểm tra xem có ký tự không hợp lệ ở cuối chuỗi không
            if (hasInvalidChar)
            {
                txtTenCV.Text = filteredText;
                txtTenCV.SelectionStart = txtTenCV.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtMaCV_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenCV_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}

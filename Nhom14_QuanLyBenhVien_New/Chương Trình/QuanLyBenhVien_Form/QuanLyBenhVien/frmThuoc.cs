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
    public partial class frmThuoc : Form
    {
        public frmThuoc()
        {
            InitializeComponent();
        }
        private void frmThuoc_Load(object sender, EventArgs e)
        {
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            load();
        }

        private void load()
        {
            Thuoc_BUS.Instance.load(dgvThuoc);
        }

        //thêm thuốc
        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMa.Text == "" || txtGia.Text == "" || txtDVT.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string kq = Thuoc_BUS.Instance.them(txtMa.Text.Trim(), txtTen.Text, txtDVT.Text, txtXX.Text, float.Parse(txtGia.Text));
                MessageBox.Show(kq, "Thông báo");
                load();
            }
                
        }

        //xóa thuốc
        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMa.Text.Trim();
                string kq = Thuoc_BUS.Instance.xoa(id, btnXoa);
                MessageBox.Show(kq, "Thông báo");
                load();
            }
        }

        //sửa thông tin thuốc
        private void btnSua_Click(object sender, EventArgs e)
        {
            string kq = Thuoc_BUS.Instance.sua(txtMa.Text.Trim(), txtTen.Text, txtDVT.Text, txtXX.Text, float.Parse(txtGia.Text), btnSua);
            MessageBox.Show(kq, "Thông báo");
            load();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void txtMa_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMa.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMa.Text = txtMa.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMa.Text = txtMa.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMa.SelectionStart = txtMa.Text.Length;
        }

        private void txtTen_TextChanged(object sender, EventArgs e)
        {
            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtTen.Text)
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
                txtTen.Text = filteredText;
                txtTen.SelectionStart = txtTen.Text.Length;
                MessageBox.Show("Không được nhập số, ký tự đặc biệt hoặc có nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtMa_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtDVT_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtXX_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar))
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtGia_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập số
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtTim_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtTim.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtTim.Text = txtTim.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtTim.Text = txtTim.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtTim.SelectionStart = txtTim.Text.Length;
        }

        private void txtTim_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void dgvThuoc_Click(object sender, EventArgs e)
        {
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            txtMa.Enabled = false;

            if (dgvThuoc.CurrentRow != null && dgvThuoc.Rows[dgvThuoc.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvThuoc.CurrentCell.RowIndex;
                txtMa.Text = dgvThuoc.Rows[dong].Cells[0].Value.ToString();
                txtTen.Text = dgvThuoc.Rows[dong].Cells[1].Value.ToString();
                txtDVT.Text = dgvThuoc.Rows[dong].Cells[2].Value.ToString();
                txtXX.Text = dgvThuoc.Rows[dong].Cells[3].Value.ToString();
                txtGia.Text = dgvThuoc.Rows[dong].Cells[4].Value.ToString();
            }
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            Thuoc_BUS.Instance.timKiem(dgvThuoc, txtTim.Text);
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            txtMa.Enabled = true;
            txtMa.Clear();
            txtTen.Clear();
            txtDVT.Clear();
            txtXX.Clear();
            txtGia.Clear();
            load();
        }

        private void txtXX_TextChanged(object sender, EventArgs e)
        {
            if (txtXX.Text.Length > 20)
            {
                // Cắt bớt ký tự thừa
                txtXX.Text = txtXX.Text.Substring(0, 20);

                // Đặt con trỏ chuột ở cuối văn bản
                txtXX.SelectionStart = txtXX.Text.Length;

                MessageBox.Show("Xuất xứ gồm 20 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtXX.Text)
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
                txtXX.Text = filteredText;
                txtXX.SelectionStart = txtXX.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }
    }
}

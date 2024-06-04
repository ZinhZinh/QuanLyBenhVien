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
    public partial class frmKhoa : Form
    {
        public frmKhoa()
        {
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        //Thêm khoa
        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMaKhoa.Text == "" || txtTenKhoa.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {              
                string kq = Khoa_BUS.Instance.them(txtMaKhoa.Text.Trim(), txtTenKhoa.Text);
                MessageBox.Show(kq, "Thông báo");
                load();
                ChuyenNganh_BUS.Instance.layDSKhoa(cboKhoa);
            }
        }

        //Xóa khoa
        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMaKhoa.Text.Trim();
                string kq = Khoa_BUS.Instance.xoa(id, btnXoa);
                MessageBox.Show(kq, "Thông báo");
                load();
                ChuyenNganh_BUS.Instance.layDSKhoa(cboKhoa);
            }
        }

        //Sửa thông tin khoa
        private void btnSua_Click(object sender, EventArgs e)
        {
            string kq = Khoa_BUS.Instance.sua(txtMaKhoa.Text.Trim(), txtTenKhoa.Text, btnSua);
            MessageBox.Show(kq, "Thông báo");
            load();
            ChuyenNganh_BUS.Instance.layDSKhoa(cboKhoa);
        }

        //Thêm chuyên ngành mới
        private void btnThemCN_Click(object sender, EventArgs e)
        {
            if (txtMaCN.Text == "" || txtTenCN.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string kq = ChuyenNganh_BUS.Instance.them(txtMaCN.Text.Trim(), txtTenCN.Text, cboKhoa.SelectedValue.ToString());
                MessageBox.Show(kq, "Thông báo");
                load();
            }
        }

        //Xóa chuyên ngành
        private void btnXoaCN_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMaCN.Text.Trim();
                string kq = ChuyenNganh_BUS.Instance.xoa(id, btnXoaCN);
                MessageBox.Show(kq, "Thong bao");
                load();
            }
        }

        //Sửa thông tin chuyên ngành
        private void btnSuaCN_Click(object sender, EventArgs e)
        {
            string kq = ChuyenNganh_BUS.Instance.sua(txtMaCN.Text.Trim(), txtTenCN.Text, cboKhoa.SelectedValue.ToString(), btnSua);
            MessageBox.Show(kq, "Thông báo");
            load();
        }

        private void txtMaKhoa_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMaKhoa.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMaKhoa.Text = txtMaKhoa.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMaKhoa.Text = txtMaKhoa.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMaKhoa.SelectionStart = txtMaKhoa.Text.Length;
        }

        private void txtMaKhoa_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtTenKhoa_TextChanged(object sender, EventArgs e)
        {
            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtTenKhoa.Text)
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
                txtTenKhoa.Text = filteredText;
                txtTenKhoa.SelectionStart = txtTenKhoa.Text.Length;
                MessageBox.Show("Không được nhập số, ký tự đặc biệt hoặc có nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtMaCN_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMaCN.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMaCN.Text = txtMaCN.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMaCN.Text = txtMaCN.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMaCN.SelectionStart = txtMaCN.Text.Length;
        }

        private void txtMaCN_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtTenCN_TextChanged(object sender, EventArgs e)
        {
            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtTenCN.Text)
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
                txtTenCN.Text = filteredText;
                txtTenCN.SelectionStart = txtTenCN.Text.Length;
                MessageBox.Show("Không được nhập số, ký tự đặc biệt hoặc có nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        //Chọn dữ liệu dgvKhoa
        private void dgvKhoa_Click(object sender, EventArgs e)
        {
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            txtMaKhoa.Enabled = false;
            if (dgvKhoa.CurrentRow != null && !dgvKhoa.Rows[dgvKhoa.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvKhoa.CurrentCell.RowIndex;
                txtMaKhoa.Text = dgvKhoa.Rows[dong].Cells[0].Value.ToString();
                txtTenKhoa.Text = dgvKhoa.Rows[dong].Cells[1].Value.ToString();
            }
            
        }

        //Chọn dữ liệu dgvCN
        private void dgvCN_Click(object sender, EventArgs e)
        {
            btnSuaCN.Enabled = true;
            btnXoaCN.Enabled = true;
            txtMaCN.Enabled = false;
            if (dgvCN.CurrentRow != null && !dgvCN.Rows[dgvCN.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvCN.CurrentCell.RowIndex;
                txtMaCN.Text = dgvCN.Rows[dong].Cells[0].Value.ToString();
                txtTenCN.Text = dgvCN.Rows[dong].Cells[1].Value.ToString();
                cboKhoa.SelectedValue = dgvCN.Rows[dong].Cells[2].Value.ToString();
            }
        }

        private void load()
        {
            Khoa_BUS.Instance.load(dgvKhoa);
            ChuyenNganh_BUS.Instance.load(dgvCN);
        }

        private void frmKhoa_Load(object sender, EventArgs e)
        {
            load();
            btnSua.Enabled = false;
            btnXoa.Enabled = false;
            btnSuaCN.Enabled = false;
            btnXoaCN.Enabled = false;
            ChuyenNganh_BUS.Instance.layDSKhoa(cboKhoa);
            cboKhoa.DisplayMember = "TenKhoa";
            cboKhoa.ValueMember = "MaKhoa";

            //ẩn dòng cuối
            dgvCN.Columns[3].Visible = false;

        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaKhoa.Clear();
            txtTenKhoa.Clear();
            txtMaCN.Clear();
            txtTenCN.Clear();
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            txtMaCN.Enabled = true;
            txtMaKhoa.Enabled = true;
        }
    }
}

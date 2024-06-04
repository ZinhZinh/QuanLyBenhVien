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
    public partial class frmDichVu : Form
    {
        public frmDichVu()
        {
            InitializeComponent();
        }

        //thêm dịch vụ
        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMa.Text == "" || txtTen.Text == "" || txtGia.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string kq = DichVu_BUS.Instance.them(txtMa.Text.Trim(), txtTen.Text, float.Parse(txtGia.Text));
                MessageBox.Show(kq, "Thông báo");
                load();
            }
        }

        //Xóa dịch vụ
        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMa.Text.Trim();
                string kq = DichVu_BUS.Instance.xoa(id, btnXoa);
                MessageBox.Show(kq, "Thông báo");
                load();
            }
        }

        //Thêm dịch vụ
        private void btnSua_Click(object sender, EventArgs e)
        {
            string kq = DichVu_BUS.Instance.sua(txtMa.Text.Trim(), txtTen.Text, float.Parse(txtGia.Text), btnSua);
            MessageBox.Show(kq, "Thông báo");
            load();
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMa.Clear();
            txtTen.Clear();
            txtGia.Clear();
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            txtMa.Enabled = true;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
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

        private void txtMa_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMa.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);

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
            //// Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;

            //foreach (char c in txtTen.Text)
            //{
            //    // Nếu là ký tự chữ
            //    if (char.IsLetter(c))
            //    {
            //        filteredText += c;
            //    }
            //    else if (c == ' ' && !filteredText.EndsWith(" "))
            //    {
            //        // Nếu là khoảng trắng và chưa có khoảng trắng ở cuối filteredText
            //        filteredText += c;
            //    }
            //    else
            //    {
            //        hasInvalidChar = true;
            //    }
            //}

            //// Kiểm tra xem có ký tự không hợp lệ ở cuối chuỗi không
            //if (hasInvalidChar)
            //{
            //    txtTen.Text = filteredText;
            //    txtTen.SelectionStart = txtTen.Text.Length;
            //    MessageBox.Show("Không được nhập số, ký tự đặc biệt hoặc có nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            //}
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

        private void frmDichVu_Load(object sender, EventArgs e)
        {
            load();
            btnSua.Enabled = false;
            btnXoa.Enabled = false;
        }

        private void load()
        {
            DichVu_BUS.Instance.load(dgvDV);
        }

        private void dgvDV_Click(object sender, EventArgs e)
        {
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            txtMa.Enabled = false;

            if (dgvDV.CurrentRow != null && !dgvDV.Rows[dgvDV.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvDV.CurrentCell.RowIndex;
                txtMa.Text = dgvDV.Rows[dong].Cells[0].Value.ToString();
                txtTen.Text = dgvDV.Rows[dong].Cells[1].Value.ToString();
                txtGia.Text = dgvDV.Rows[dong].Cells[2].Value.ToString();
            }
        }
    }
}

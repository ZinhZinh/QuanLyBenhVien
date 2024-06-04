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
    public partial class frmNhanVien : Form
    {
        public frmNhanVien()
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

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMa.Text == "" || txtTen.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                try
                {
                    //kiểm tra tuổi 
                    int tuoi = DateTime.Now.Year - dtpNgaySinh.Value.Year;
                    if (tuoi < 25 || tuoi > 35)
                    {
                        MessageBox.Show("Độ tuổi không phù hợp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                    string gioiTinh = "";
                    if (radNam.Checked)
                    {
                        gioiTinh = "Nam";
                    }
                    else
                    {
                        gioiTinh = "Nữ";
                    }

                    string kq = NhanVien_BUS.Instance.them(txtMa.Text.Trim(), txtTen.Text, gioiTinh, Convert.ToDateTime(dtpNgaySinh.Text), cboKhoa.SelectedValue.ToString(), cboChuyenNganh.SelectedValue.ToString(), cboCV.SelectedValue.ToString());
                    MessageBox.Show(kq, "Thông báo");
                    load();

                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi " + ex.Message);
                }
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMa.Text.Trim();
                string kq = NhanVien_BUS.Instance.xoa(id, btnXoa);
                MessageBox.Show(kq, "Thông báo");
                load();
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            string gioiTinh = "";
            if (radNam.Checked)
            {
                gioiTinh = "Nam";
            }
            else
            {
                gioiTinh = "Nữ";
            }
            string kq = NhanVien_BUS.Instance.sua(txtMa.Text.Trim(), txtTen.Text, gioiTinh, Convert.ToDateTime(dtpNgaySinh.Text), cboKhoa.SelectedValue.ToString(), cboChuyenNganh.SelectedValue.ToString(), cboCV.SelectedValue.ToString(), btnSua);
            MessageBox.Show(kq, "Thông báo");
            load();
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

        private void dgvNhanVien_Click(object sender, EventArgs e)
        {
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            txtMa.Enabled = false;

            if (dgvNhanVien.CurrentRow != null && !dgvNhanVien.Rows[dgvNhanVien.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvNhanVien.CurrentCell.RowIndex;
                txtMa.Text = dgvNhanVien.Rows[dong].Cells[0].Value.ToString();
                txtTen.Text = dgvNhanVien.Rows[dong].Cells[1].Value.ToString();
                if (dgvNhanVien.Rows[dong].Cells[2].Value.ToString() == "Nam")
                {
                    radNam.Checked = true;
                }
                else
                {
                    radNu.Checked = true;
                }
                dtpNgaySinh.Text = dgvNhanVien.Rows[dong].Cells[3].Value.ToString();
                cboKhoa.SelectedValue = dgvNhanVien.Rows[dong].Cells[4].Value.ToString();
                cboChuyenNganh.SelectedValue = dgvNhanVien.Rows[dong].Cells[5].Value.ToString();
                cboCV.SelectedValue = dgvNhanVien.Rows[dong].Cells[6].Value.ToString();
            }

        }

        private void load()
        {
            NhanVien_BUS.Instance.load(dgvNhanVien);
        }

        private void frmNhanVien_Load(object sender, EventArgs e)
        {
            load();
            btnXoa.Enabled = false;
            btnSua.Enabled = false;

            //lấy dữ liệu cho cboKhoa
            NhanVien_BUS.Instance.layDSKhoa(cboKhoa);
            cboKhoa.DisplayMember = "TenKhoa";
            cboKhoa.ValueMember = "MaKhoa";

            // Lấy dữ liệu cho cboChuyenNganh với khoa đầu tiên trong danh sách
            if (cboKhoa.Items.Count > 0)
            {
                string maKhoa = cboKhoa.SelectedValue.ToString();
                NhanVien_BUS.Instance.layDSCN(cboChuyenNganh, maKhoa);
            }

            cboChuyenNganh.DisplayMember = "TenChuyenNganh";
            cboChuyenNganh.ValueMember = "MaChuyenNganh";


            //lấy dữ liệu cho cboCV
            NhanVien_BUS.Instance.layDSCV(cboCV);
            cboCV.DisplayMember = "TenChucVu";
            cboCV.ValueMember = "MaChucVu";

            //ẩn cột
            dgvNhanVien.Columns[7].Visible = false;
            dgvNhanVien.Columns[8].Visible = false;
            dgvNhanVien.Columns[9].Visible = false;
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

        private void btnTim_Click(object sender, EventArgs e)
        {
            NhanVien_BUS.Instance.timKiem(dgvNhanVien, txtTim.Text);
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMa.Clear();
            txtTen.Clear();
            radNam.Checked = true;
            dtpNgaySinh.Value = DateTime.Now.Date;
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            txtMa.Enabled = true;
            load();
            //ẩn cột
            dgvNhanVien.Columns[7].Visible = false;
            dgvNhanVien.Columns[8].Visible = false;
            dgvNhanVien.Columns[9].Visible = false;
        }

        private void cboKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lấy dữ liệu cho cboChuyenNganh
            NhanVien_BUS.Instance.layDSCN(cboChuyenNganh, cboKhoa.SelectedValue.ToString());
            cboChuyenNganh.DisplayMember = "TenChuyenNganh";
            cboChuyenNganh.ValueMember = "MaChuyenNganh";
        }

        private void dgvNhanVien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

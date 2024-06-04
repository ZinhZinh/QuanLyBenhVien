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
    public partial class frmPhongKham : Form
    {
        public frmPhongKham()
        {
            InitializeComponent();
        }
        //Hàm để xử lí loại phòng khám
        private void SetupAutoComplete()
        {
            try
            {
                List<string> phongKham = BUS_PhongKham.Instance.LayDSLoaiPhongKham();

                txtLoaiPhong.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
                txtLoaiPhong.AutoCompleteSource = AutoCompleteSource.CustomSource;
                AutoCompleteStringCollection data = new AutoCompleteStringCollection();
                data.AddRange(phongKham.ToArray());

                txtLoaiPhong.AutoCompleteCustomSource = data;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không thể tải danh sách loại phòng khám: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnThemPK_Click(object sender, EventArgs e)
        {
            if (KiemTraNhapPK() == true)
            {
                //Thêm phòng khám và load lại datagridview
                BUS_PhongKham.Instance.ThemPhongKham(txtMaPhongKham.Text,txtTenPhongKham.Text,cboKhoa.SelectedValue.ToString(),txtLoaiPhong.Text);
                BUS_PhongKham.Instance.HienThiPhongKham(dgvPhongKham);
            }
        }

        private void btnXoaPK_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvPhongKham.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_PhongKham.Instance.XoaPhongKham(txtMaPhongKham.Text);
                    BUS_PhongKham.Instance.HienThiPhongKham(dgvPhongKham);
                }
            }
        }

        private void btnSuaPK_Click(object sender, EventArgs e)
        { 
                DialogResult dialog = MessageBox.Show("Bạn có muốn sửa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    if (KiemTraNhapPK() == true && KiemTraMa(txtMaPhongKham.Text) == true)
                    {
                        BUS_PhongKham.Instance.SuaPhongKham(txtMaPhongKham.Text, txtTenPhongKham.Text, cboKhoa.SelectedValue.ToString(), txtLoaiPhong.Text);
                        BUS_PhongKham.Instance.HienThiPhongKham(dgvPhongKham);
                    }
                    else
                    {
                        MessageBox.Show("Bạn không được sửa mã " + dgvPhongKham.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtMaPhongKham.Text = dgvPhongKham.CurrentRow.Cells[0].Value.ToString();
                    }
                }  
        }

        private void dgvPhongKham_Click(object sender, EventArgs e)
        {
            if (dgvPhongKham.CurrentRow != null && !dgvPhongKham.Rows[dgvPhongKham.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvPhongKham.CurrentCell.RowIndex;
                txtMaPhongKham.Text = dgvPhongKham.Rows[dong].Cells[0].Value.ToString();
                txtTenPhongKham.Text = dgvPhongKham.Rows[dong].Cells[1].Value.ToString();
                cboKhoa.SelectedValue = dgvPhongKham.Rows[dong].Cells[2].Value.ToString();
                txtLoaiPhong.Text = dgvPhongKham.Rows[dong].Cells[3].Value.ToString();
            }
                       
        }

        public bool KiemTraNhapPK()
        {
            if (txtMaPhongKham.Text.Length == 0 || txtTenPhongKham.Text.Length == 0 || txtLoaiPhong.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin cho Phòng Khám", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void frmPhongKham_KhamBenh_Load(object sender, EventArgs e)
        {
            //Gọi hàm xử lí loại phòng
            SetupAutoComplete();
            //Hiển thị dữ liệu lên combobox Khoa, dữ liệu lên datagridview
            BUS_PhongKham.Instance.HienThiComboboxKhoa(cboKhoa);
            BUS_PhongKham.Instance.HienThiPhongKham(dgvPhongKham);
            dgvPhongKham.Columns[4].Visible = false;
        }

        private void txtMaPhongKham_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenPhongKham_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtLoaiPhong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không nhập số hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtMaPhongKham_TextChanged(object sender, EventArgs e)
        {
            if (txtMaPhongKham.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaPhongKham.Text = txtMaPhongKham.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaPhongKham.SelectionStart = txtMaPhongKham.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenPhongKham_TextChanged(object sender, EventArgs e)
        {
            if (txtTenPhongKham.Text.Length > 50)
            {
                // Cắt bớt ký tự thừa
                txtTenPhongKham.Text = txtTenPhongKham.Text.Substring(0, 50);

                // Đặt con trỏ chuột ở cuối văn bản
                txtTenPhongKham.SelectionStart = txtTenPhongKham.Text.Length;

                MessageBox.Show("Tên phòng khám tối đa là 50 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;
            bool lastWasSpace = false;

            foreach (char c in txtTenPhongKham.Text)
            {
                if (char.IsLetterOrDigit(c)) // Chỉ cho phép chữ số
                {
                    filteredText += c;
                    lastWasSpace = false; // Đánh dấu rằng không phải khoảng trắng
                }
                else if (c == ' ' && !lastWasSpace) // Cho phép một khoảng trắng đơn
                {
                    filteredText += c;
                    lastWasSpace = true; // Đánh dấu là khoảng trắng
                }
                else
                {
                    hasInvalidChar = true; // Ký tự không hợp lệ
                }
            }

            // Nếu có ký tự không hợp lệ, hiển thị cảnh báo và cập nhật TextBox
            if (hasInvalidChar)
            {
                txtTenPhongKham.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
                txtTenPhongKham.SelectionStart = txtTenPhongKham.Text.Length; // Đưa con trỏ đến cuối
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtLoaiPhong_TextChanged(object sender, EventArgs e)
        {
            if (txtLoaiPhong.Text.Length > 50)
            {
                // Cắt bớt ký tự thừa
                txtLoaiPhong.Text = txtLoaiPhong.Text.Substring(0, 50);

                // Đặt con trỏ chuột ở cuối văn bản
                txtLoaiPhong.SelectionStart = txtLoaiPhong.Text.Length;

                MessageBox.Show("Loại phòng khám tối đa là 50 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;
            bool lastWasSpace = false;

            foreach (char c in txtLoaiPhong.Text)
            {
                if (char.IsLetter(c)) // Chỉ cho phép chữ
                {
                    filteredText += c;
                    lastWasSpace = false; // Đánh dấu rằng không phải khoảng trắng
                }
                else if (c == ' ' && !lastWasSpace) // Cho phép một khoảng trắng đơn
                {
                    filteredText += c;
                    lastWasSpace = true; // Đánh dấu là khoảng trắng
                }
                else
                {
                    hasInvalidChar = true; // Ký tự không hợp lệ
                }
            }

            // Nếu có ký tự không hợp lệ, hiển thị cảnh báo và cập nhật TextBox
            if (hasInvalidChar)
            {
                txtLoaiPhong.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
                txtLoaiPhong.SelectionStart = txtLoaiPhong.Text.Length; // Đưa con trỏ đến cuối
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaPhongKham.Clear();
            txtLoaiPhong.Clear();
            txtTenPhongKham.Clear();
            txtMaPhongKham.Focus();
        }

        public bool KiemTraMa(string maPK)
        {
            if (maPK.Equals(dgvPhongKham.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }
    }
}

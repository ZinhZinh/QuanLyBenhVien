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
    public partial class frmPhongBenh_GiuongBenh : Form
    {
        public frmPhongBenh_GiuongBenh()
        {
            InitializeComponent();
        }
        //Hàm để xử lí loại phòng bệnh
        private void SetupAutoComplete()
        {
            try
            {
                List<string> phongBenh = BUS_PhongBenh.Instance.LayDSLoaiPhong();

                txtLoaiPhong.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
                txtLoaiPhong.AutoCompleteSource = AutoCompleteSource.CustomSource;
                AutoCompleteStringCollection data = new AutoCompleteStringCollection();
                data.AddRange(phongBenh.ToArray());

                txtLoaiPhong.AutoCompleteCustomSource = data;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không thể tải danh sách phòng bệnh: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void frmBenhNhan_Load(object sender, EventArgs e)
        {
            //Gọi hàm xử lí loại phòng
            SetupAutoComplete();
            //Hiển thị dữ liệu lên combobox Khoa, dữ liệu lên datagridview
            BUS_PhongBenh.Instance.HienThiComboboxKhoa(cboKhoa);
            BUS_PhongBenh.Instance.HienThiPhongBenh(dgvPhongBenh);
            dgvPhongBenh.Columns[4].Visible = false;

            BUS_GiuongBenh.Instance.HienThiGiuongBenh(dgvGiuongBenh);
            BUS_GiuongBenh.Instance.HienThiComboboxPhongBenh(cboPhongBenh);
            dgvGiuongBenh.Columns[3].Visible = false;
        }

        private void btnThemPB_Click(object sender, EventArgs e)
        {
            if (KiemTraNhapPB() == true)
            {
                //Thêm phòng bệnh và load lại datagridview
                BUS_PhongBenh.Instance.ThemPhongBenh(txtMaPhong.Text, txtTenPhong.Text, txtLoaiPhong.Text, cboKhoa.SelectedValue.ToString());
                BUS_PhongBenh.Instance.HienThiPhongBenh(dgvPhongBenh);
            }
        }

        private void btnXoaPB_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvPhongBenh.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_PhongBenh.Instance.XoaPhongBenh(txtMaPhong.Text);
                    BUS_PhongBenh.Instance.HienThiPhongBenh(dgvPhongBenh);
                }
            }
        }

        private void btnSuaPB_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn sửa không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                if (KiemTraNhapPB() == true && KiemTraMaPB(txtMaPhong.Text) == true)
                {
                    BUS_PhongBenh.Instance.SuaPhongBenh(txtMaPhong.Text, txtTenPhong.Text, txtLoaiPhong.Text, cboKhoa.SelectedValue.ToString());
                    BUS_PhongBenh.Instance.HienThiPhongBenh(dgvPhongBenh);
                }
                else
                {
                    MessageBox.Show("Bạn không được sửa mã " + dgvPhongBenh.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaPhong.Text = dgvPhongBenh.CurrentRow.Cells[0].Value.ToString();
                }
            }

        }


        private void dgvPhongBenh_Click(object sender, EventArgs e)
        {
            if (dgvPhongBenh.CurrentRow != null && !dgvPhongBenh.Rows[dgvPhongBenh.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvPhongBenh.CurrentCell.RowIndex;
                txtMaPhong.Text = dgvPhongBenh.Rows[dong].Cells[0].Value.ToString();
                txtTenPhong.Text = dgvPhongBenh.Rows[dong].Cells[1].Value.ToString();
                txtLoaiPhong.Text = dgvPhongBenh.Rows[dong].Cells[2].Value.ToString();
                cboKhoa.SelectedValue = dgvPhongBenh.Rows[dong].Cells[3].Value.ToString();
            }
                
        }

        private void btnThemGB_Click(object sender, EventArgs e)
        {
            if (KiemTraNhapGB() == true)
            {
                //Thêm phòng bệnh và load lại datagridview
                BUS_GiuongBenh.Instance.ThemGiuongBenh(txtMaGiuong.Text, txtSoGiuong.Text, cboPhongBenh.SelectedValue.ToString());
                BUS_GiuongBenh.Instance.HienThiGiuongBenh(dgvGiuongBenh);
            }
        }

        private void btnXoaGB_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvGiuongBenh.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_GiuongBenh.Instance.XoaGiuongBenh(txtMaGiuong.Text);
                    BUS_GiuongBenh.Instance.HienThiGiuongBenh(dgvGiuongBenh);
                }
            }
        }

        private void btnSuaGB_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn sửa không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                if (KiemTraNhapGB() == true && KiemTraMaGB(txtMaGiuong.Text) == true)
                {
                    BUS_GiuongBenh.Instance.SuaGiuongBenh(txtMaGiuong.Text, txtSoGiuong.Text, cboPhongBenh.SelectedValue.ToString());
                    BUS_GiuongBenh.Instance.HienThiGiuongBenh(dgvGiuongBenh);
                }
                else
                {
                    MessageBox.Show("Bạn không được sửa mã " + dgvGiuongBenh.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaGiuong.Text = dgvGiuongBenh.CurrentRow.Cells[0].Value.ToString();
                }
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

        public bool KiemTraNhapPB()
        {
            if (txtMaPhong.Text.Length == 0 || txtLoaiPhong.Text.Length == 0 || txtTenPhong.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin cho Phòng Bệnh", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        public bool KiemTraNhapGB()
        {
            if (txtMaGiuong.Text.Length == 0 || txtSoGiuong.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin Giường Bệnh", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void dgvGiuongBenh_Click(object sender, EventArgs e)
        {
            if (dgvGiuongBenh.CurrentRow != null && !dgvGiuongBenh.Rows[dgvGiuongBenh.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvGiuongBenh.CurrentCell.RowIndex;
                txtMaGiuong.Text = dgvGiuongBenh.Rows[dong].Cells[0].Value.ToString();
                txtSoGiuong.Text = dgvGiuongBenh.Rows[dong].Cells[1].Value.ToString();
                cboPhongBenh.SelectedValue = dgvGiuongBenh.Rows[dong].Cells[2].Value.ToString();
            }
                
        }

        private void txtMaPhong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenPhong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ' && e.KeyChar != '.')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt ngoài trừ .", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtLoaiPhong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtMaGiuong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtSoGiuong_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaGiuong.Clear();
            txtSoGiuong.Clear();
            txtMaPhong.Clear();
            txtLoaiPhong.Clear();
            txtTenPhong.Clear();
            txtMaPhong.Focus();
        }

        public bool KiemTraMaPB(string maPhongBenh)
        {
            if (maPhongBenh.Equals(dgvPhongBenh.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        public bool KiemTraMaGB(string maGiupngBenh)
        {
            if (maGiupngBenh.Equals(dgvPhongBenh.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }
        private void txtMaGiuong_TextChanged(object sender, EventArgs e)
        {
            if (txtMaGiuong.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaGiuong.Text = txtMaGiuong.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaGiuong.SelectionStart = txtMaGiuong.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtSoGiuong_TextChanged(object sender, EventArgs e)
        {
            if (txtSoGiuong.Text.Length > 10)
            {
                // Cắt bớt ký tự thừa
                txtSoGiuong.Text = txtSoGiuong.Text.Substring(0, 10);

                // Đặt con trỏ chuột ở cuối văn bản
                txtSoGiuong.SelectionStart = txtSoGiuong.Text.Length;

                MessageBox.Show("Số giường tối đa là 10 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;

            //foreach (char c in txtSoGiuong.Text)
            //{
            //    // Nếu là ký tự chữ
            //    if (char.IsLetterOrDigit(c))
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
            //    txtSoGiuong.Text = filteredText;
            //    txtSoGiuong.SelectionStart = txtSoGiuong.Text.Length;
            //    MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            //}
        }

        private void txtMaPhong_TextChanged(object sender, EventArgs e)
        {
            if (txtMaPhong.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaPhong.Text = txtMaPhong.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaPhong.SelectionStart = txtMaPhong.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenPhong_TextChanged(object sender, EventArgs e)
        {
            if (txtTenPhong.Text.Length > 50)
            {
                // Cắt bớt ký tự thừa
                txtTenPhong.Text = txtTenPhong.Text.Substring(0, 50);

                // Đặt con trỏ chuột ở cuối văn bản
                txtTenPhong.SelectionStart = txtTenPhong.Text.Length;

                MessageBox.Show("Tên phòng bệnh tối đa là 50 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;
            //bool lastWasSpace = false;

            //foreach (char c in txtTenPhong.Text)
            //{
            //    if (char.IsLetterOrDigit(c) || c == '.') // Chỉ cho phép chữ số và dấu .
            //    {
            //        filteredText += c;
            //        lastWasSpace = false; // Đánh dấu rằng không phải khoảng trắng
            //    }
            //    else if (c == ' ' && !lastWasSpace) // Cho phép một khoảng trắng đơn
            //    {
            //        filteredText += c;
            //        lastWasSpace = true; // Đánh dấu là khoảng trắng
            //    }
            //    else
            //    {
            //        hasInvalidChar = true; // Ký tự không hợp lệ
            //    }
            //}

            //// Nếu có ký tự không hợp lệ, hiển thị cảnh báo và cập nhật TextBox
            //if (hasInvalidChar)
            //{
            //    txtTenPhong.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
            //    txtTenPhong.SelectionStart = txtTenPhong.Text.Length; // Đưa con trỏ đến cuối
            //    MessageBox.Show("Bạn chỉ được nhập chữ số, khoảng trắng đơn và dấu '.', không nhập ký tự khác.", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}
        }

        private void txtLoaiPhong_TextChanged(object sender, EventArgs e)
        {
            if (txtLoaiPhong.Text.Length > 20)
            {
                // Cắt bớt ký tự thừa
                txtLoaiPhong.Text = txtLoaiPhong.Text.Substring(0, 20);

                // Đặt con trỏ chuột ở cuối văn bản
                txtLoaiPhong.SelectionStart = txtLoaiPhong.Text.Length;

                MessageBox.Show("Loại phòng bệnh tối đa là 20 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            //// Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;

            //foreach (char c in txtLoaiPhong.Text)
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
            //    txtLoaiPhong.Text = filteredText;
            //    txtLoaiPhong.SelectionStart = txtLoaiPhong.Text.Length;
            //    MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            //}
        }
    }
}

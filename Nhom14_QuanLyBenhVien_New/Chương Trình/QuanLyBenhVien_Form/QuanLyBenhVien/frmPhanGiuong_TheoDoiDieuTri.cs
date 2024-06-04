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
    public partial class frmPhanGiuong_TheoDoiDieuTri : Form
    {
        public frmPhanGiuong_TheoDoiDieuTri()
        {
            InitializeComponent();
        }

        //Constructor nhận mã bệnh nhân
        public frmPhanGiuong_TheoDoiDieuTri(string maBN, string maNYC)
        {
            InitializeComponent();

            //Lấy mã bệnh nhân
            txtMaBN.Text = maBN;
            txtMaNYC.Text = maNYC;
        }

        public bool KiemTraMaPG(string maBN)
        {
            if (maBN.Equals(dgvPhanGiuong.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        public bool KiemTraMaTDDT(string maBN, string maNV)
        {
            if (maBN.Equals(dgvPhanGiuong.CurrentRow.Cells[0].Value.ToString()) == true && maNV.Equals(dgvPhanGiuong.CurrentRow.Cells[6].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        public bool KiemTraNhap()
        {
            if (txtChiSoCanNang.Text.Length == 0 || txtChiSoHuyetAp.Text.Length == 0 || txtChiSoNhipTho.Text.Length == 0 || txtYLenh.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin cho Theo Dõi Điều Trị", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void btnSuaPG_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn sửa không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                if (KiemTraMaPG(txtMaBN.Text) == true)
                {
                    BUS_PhanGiuong.Instance.SuaPhanGiuong(txtMaBN.Text, dtpNgayNhan.Value, dtpNgayTra.Value, cboPhongBenh.SelectedValue.ToString(), cboGiuongBenh.SelectedValue.ToString());
                    BUS_PhanGiuong.Instance.HienThiPhanGiuong(dgvPhanGiuong);
                }
                else
                {
                    MessageBox.Show("Bạn không được sửa mã " + dgvPhanGiuong.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaBN.Text = dgvPhanGiuong.CurrentRow.Cells[0].Value.ToString();
                }
            }
        }

        private void frmPhanGiuong_TheoDoiDieuTri_Load(object sender, EventArgs e)
        {
            //Form Phan Giuong
            //BUS_PhanGiuong.Instance.HienThiComboboxBenhNhan(cboBenhNhan);
            BUS_PhanGiuong.Instance.HienThiComboboxPhongBenh(cboPhongBenh);
            BUS_PhanGiuong.Instance.HienThiComboboxGiuongBenh(cboGiuongBenh, cboPhongBenh.SelectedValue.ToString());
            BUS_PhanGiuong.Instance.HienThiTenBenhNhan(txtTenBN, txtMaBN.Text);
            BUS_PhanGiuong.Instance.HienThiTenPhongBenh(txtPhongBenh, cboPhongBenh.SelectedValue.ToString());
            //BUS_PhanGiuong.Instance.HienThiSoGiuong(txtSoGiuong, cboGiuongBenh.SelectedValue.ToString());
            BUS_PhanGiuong.Instance.HienThiPhanGiuong(dgvPhanGiuong);
            dgvPhanGiuong.Columns[8].Visible = false;
            dgvPhanGiuong.Columns[6].Visible = false;
            dgvPhanGiuong.Columns[7].Visible = false;
            dgvPhanGiuong.Columns[9].Visible = false;

            //Form Theo Doi Dieu Tri
            BUS_TheoDoiDieuTri.Instance.HienThiTDDT(dgvTTDT);
            BUS_TheoDoiDieuTri.Instance.HienThiComboboxBenhNhan(cboBenhNhanTDDT);
            BUS_TheoDoiDieuTri.Instance.HienThiComboboxNhanVien(cboNhanVienTDDT, cboBenhNhanTDDT.SelectedValue.ToString());
            
            BUS_TheoDoiDieuTri.Instance.HienThiTenBenhNhan(txtBenhNhanTDDT, cboBenhNhanTDDT.SelectedValue.ToString());
            BUS_TheoDoiDieuTri.Instance.HienThiTenNhanVien(txtNhanVienTDDT, cboNhanVienTDDT.SelectedValue.ToString());
            dgvTTDT.Columns[8].Visible = false;
            dgvTTDT.Columns[7].Visible = false;
        }

        private void cboBenhNhan_SelectedIndexChanged(object sender, EventArgs e)
        {
           // BUS_PhanGiuong.Instance.HienThiTenBenhNhan(txtTenBN, cboBenhNhan.SelectedValue.ToString());
        }

        private void cboPhongBenh_SelectedIndexChanged(object sender, EventArgs e)
        {
            BUS_PhanGiuong.Instance.HienThiTenPhongBenh(txtPhongBenh, cboPhongBenh.SelectedValue.ToString());
            BUS_PhanGiuong.Instance.HienThiComboboxGiuongBenh(cboGiuongBenh, cboPhongBenh.SelectedValue.ToString());
        }

        private void cboGiuongBenh_SelectedIndexChanged(object sender, EventArgs e)
        {
            BUS_PhanGiuong.Instance.HienThiSoGiuong(txtSoGiuong, cboGiuongBenh.SelectedValue.ToString());
        }

        private void dgvPhanGiuong_Click(object sender, EventArgs e)
        {
            if (dgvPhanGiuong.CurrentRow != null && !dgvPhanGiuong.Rows[dgvPhanGiuong.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvPhanGiuong.CurrentCell.RowIndex;
                txtMaBN.Text = dgvPhanGiuong.Rows[dong].Cells[0].Value.ToString();
                dtpNgayNhan.Text = dgvPhanGiuong.Rows[dong].Cells[1].Value.ToString();
                //.Text = dgvPhanGiuong.Rows[dong].Cells[2].Value.ToString();
                cboPhongBenh.Text = dgvPhanGiuong.Rows[dong].Cells[3].Value.ToString();
                cboGiuongBenh.Text = dgvPhanGiuong.Rows[dong].Cells[4].Value.ToString();
                txtMaNYC.Text = dgvPhanGiuong.Rows[dong].Cells[5].Value.ToString();
            }

        }

        private void cboBenhNhanTDDT_SelectedIndexChanged(object sender, EventArgs e)
        {
            BUS_TheoDoiDieuTri.Instance.HienThiTenBenhNhan(txtBenhNhanTDDT, cboBenhNhanTDDT.SelectedValue.ToString());
            BUS_TheoDoiDieuTri.Instance.HienThiComboboxNhanVien(cboNhanVienTDDT, cboBenhNhanTDDT.SelectedValue.ToString());
        }

        private void cboNhanVienTDDT_SelectedIndexChanged(object sender, EventArgs e)
        {
            BUS_TheoDoiDieuTri.Instance.HienThiTenNhanVien(txtNhanVienTDDT, cboNhanVienTDDT.SelectedValue.ToString());
        }

        private void btnThemPG_Click(object sender, EventArgs e)
        {
            //Thêm phân giường và load lại datagridview
            BUS_PhanGiuong.Instance.ThemPhanGiuong(txtMaBN.Text, dtpNgayNhan.Value, dtpNgayTra.Value, cboPhongBenh.SelectedValue.ToString(), cboGiuongBenh.SelectedValue.ToString(), txtMaNYC.Text);
            BUS_PhanGiuong.Instance.HienThiPhanGiuong(dgvPhanGiuong);
            BUS_TheoDoiDieuTri.Instance.HienThiComboboxBenhNhan(cboBenhNhanTDDT);
        }

        private void btnXoaPG_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvPhanGiuong.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_PhanGiuong.Instance.XoaPhanGiuong(txtMaBN.Text);
                    BUS_PhanGiuong.Instance.HienThiPhanGiuong(dgvPhanGiuong);
                }
            }
        }

        private void btnThemGB_Click(object sender, EventArgs e)
        {
            if(KiemTraNhap() == true)
            {
                //Thêm phân giường và load lại datagridview
                BUS_TheoDoiDieuTri.Instance.ThemTDDT(cboBenhNhanTDDT.SelectedValue.ToString(),dtpNgayTheoDoi.Value,txtChiSoCanNang.Text, txtChiSoHuyetAp.Text, txtChiSoNhipTho.Text,txtYLenh.Text,cboNhanVienTDDT.SelectedValue.ToString());
                BUS_TheoDoiDieuTri.Instance.HienThiTDDT(dgvTTDT);
            }
        }

        private void btnXoaGB_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvTTDT.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_TheoDoiDieuTri.Instance.XoaTDDT(cboBenhNhanTDDT.SelectedValue.ToString(),cboNhanVienTDDT.SelectedValue.ToString());
                    BUS_TheoDoiDieuTri.Instance.HienThiTDDT(dgvTTDT);
                }
            }
        }

        private void btnSuaGB_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn sửa không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                //KiemTraMaTDDT(cboBenhNhanTDDT.SelectedValue.ToString(), cboNhanVienTDDT.SelectedValue.ToString()) == true &&
                if (KiemTraNhap() == true)
                {
                    BUS_TheoDoiDieuTri.Instance.SuaTDDT(cboBenhNhanTDDT.SelectedValue.ToString(), dtpNgayTheoDoi.Value, txtChiSoCanNang.Text, txtChiSoHuyetAp.Text, txtChiSoNhipTho.Text, txtYLenh.Text, cboNhanVienTDDT.SelectedValue.ToString());
                    BUS_TheoDoiDieuTri.Instance.HienThiTDDT(dgvTTDT);
                }
                else
                {
                    MessageBox.Show("Bạn không được sửa mã BN hoặc mã NV" , "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    cboBenhNhanTDDT.SelectedValue = dgvTTDT.CurrentRow.Cells[0].Value.ToString();
                }
            }
        }

        private void dgvTTDT_Click(object sender, EventArgs e)
        {
            if (dgvTTDT.CurrentRow != null && !dgvTTDT.Rows[dgvTTDT.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvTTDT.CurrentCell.RowIndex;
                cboBenhNhanTDDT.Text = dgvTTDT.Rows[dong].Cells[0].Value.ToString();
                dtpNgayTheoDoi.Text = dgvTTDT.Rows[dong].Cells[1].Value.ToString();
                txtChiSoCanNang.Text = dgvTTDT.Rows[dong].Cells[2].Value.ToString();
                txtChiSoHuyetAp.Text = dgvTTDT.Rows[dong].Cells[3].Value.ToString();
                txtChiSoNhipTho.Text = dgvTTDT.Rows[dong].Cells[4].Value.ToString();
                txtYLenh.Text = dgvTTDT.Rows[dong].Cells[5].Value.ToString();
                cboNhanVienTDDT.Text = dgvTTDT.Rows[dong].Cells[6].Value.ToString();
                cboBenhNhanTDDT.Enabled = false;
                cboNhanVienTDDT.Enabled = false;
            }    
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtChiSoCanNang.Clear();
            txtChiSoHuyetAp.Clear();
            txtChiSoNhipTho.Clear();
            txtYLenh.Clear();
            cboBenhNhanTDDT.Enabled = true;
            cboNhanVienTDDT.Enabled = true;
            txtChiSoCanNang.Focus();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void txtChiSoCanNang_TextChanged(object sender, EventArgs e)
        {
            if (txtChiSoCanNang.Text.Length > 10)
            {
                // Cắt bớt ký tự thừa
                txtChiSoCanNang.Text = txtChiSoCanNang.Text.Substring(0, 10);

                // Đặt con trỏ chuột ở cuối văn bản
                txtChiSoCanNang.SelectionStart = txtChiSoCanNang.Text.Length;

                MessageBox.Show("Chỉ số cân nặng tối đa gồm 10 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtChiSoCanNang.Text)
            {
                // Nếu là ký tự chữ
                if (char.IsLetterOrDigit(c))
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
                txtChiSoCanNang.Text = filteredText;
                txtChiSoCanNang.SelectionStart = txtChiSoCanNang.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtChiSoHuyetAp_TextChanged(object sender, EventArgs e)
        {
            if (txtChiSoHuyetAp.Text.Length > 10)
            {
                // Cắt bớt ký tự thừa
                txtChiSoHuyetAp.Text = txtChiSoHuyetAp.Text.Substring(0, 10);

                // Đặt con trỏ chuột ở cuối văn bản
                txtChiSoHuyetAp.SelectionStart = txtChiSoHuyetAp.Text.Length;

                MessageBox.Show("Chỉ số huyết áp tối đa gồm 10 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtChiSoHuyetAp.Text)
            {
                // Nếu là ký tự chữ
                if (char.IsLetterOrDigit(c))
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
                txtChiSoHuyetAp.Text = filteredText;
                txtChiSoHuyetAp.SelectionStart = txtChiSoHuyetAp.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtChiSoNhipTho_TextChanged(object sender, EventArgs e)
        {
            if (txtChiSoNhipTho.Text.Length > 10)
            {
                // Cắt bớt ký tự thừa
                txtChiSoNhipTho.Text = txtChiSoNhipTho.Text.Substring(0, 10);

                // Đặt con trỏ chuột ở cuối văn bản
                txtChiSoNhipTho.SelectionStart = txtChiSoNhipTho.Text.Length;

                MessageBox.Show("Chỉ số nhịp thở tối đa gồm 10 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;
            bool lastWasSpace = false;

            foreach (char c in txtChiSoNhipTho.Text)
            {
                if (char.IsLetterOrDigit(c) || c == '/') // Chỉ cho phép chữ số và dấu gạch chéo
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
                txtChiSoNhipTho.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
                txtChiSoNhipTho.SelectionStart = txtChiSoNhipTho.Text.Length; // Đưa con trỏ đến cuối
                MessageBox.Show("Bạn chỉ được nhập chữ số, khoảng trắng đơn và dấu '/', không nhập ký tự khác.", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtYLenh_TextChanged(object sender, EventArgs e)
        {
            if (txtYLenh.Text.Length > 500)
            {
                // Cắt bớt ký tự thừa
                txtYLenh.Text = txtYLenh.Text.Substring(0, 500);

                // Đặt con trỏ chuột ở cuối văn bản
                txtYLenh.SelectionStart = txtYLenh.Text.Length;

                MessageBox.Show("Y lệnh tối đa gồm 500 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtYLenh.Text)
            {
                // Nếu là ký tự chữ và số 
                if (char.IsLetterOrDigit(c))
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
                txtYLenh.Text = filteredText;
                txtYLenh.SelectionStart = txtYLenh.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtChiSoCanNang_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt hoặc 2 khoảng trắng liên tiếp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            
        }

        private void txtChiSoHuyetAp_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ' )
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtChiSoNhipTho_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ' && e.KeyChar != '/')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt ngoài /", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtYLenh_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void dgvTTDT_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}

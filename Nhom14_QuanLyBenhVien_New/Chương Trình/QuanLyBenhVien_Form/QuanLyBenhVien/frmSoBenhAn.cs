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
    public partial class frmSoBenhAn : Form
    {
        public frmSoBenhAn()
        {
            InitializeComponent();
        }

        // Constructor nhận mã bệnh nhân
        public frmSoBenhAn(string maBN, string maPKB)
        {
            InitializeComponent();

            // Sử dụng mã bệnh nhân
            txtMaBN.Text = maBN;
            txtMaPKB.Text = maPKB;
        }
        string maKhoa;
        string maPK;
        string maDonThuoc;
        // Constructor nhận mã đơn thuốc và các giá trị cần giữ nguyên
        public frmSoBenhAn(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng

            txtMaPKB.Text = maPKB;
            txtMaBN.Text = maBN;
            txtMaNV.Text = selectedNV;
            txtChuanDoan.Text = chuanDoan;

            maDonThuoc = maDT;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
        }
        private void frmSoBenhAn_Load(object sender, EventArgs e)
        {
            //Hiển thị combobox BenhNhan, NhanVien và hiện dữ liệu lên DataGridView
            BUS_SoBenhAn.Instance.HienThiSoBenhAn(dgvSoBA);
            BUS_SoBenhAn.Instance.HienThiTenBenhNhan(txtTenBN, txtMaBN.Text);
            BUS_SoBenhAn.Instance.HienThiTenNhanVien(txtTenNV, txtMaNV.Text);
            dgvSoBA.Columns[9].Visible = false;
            dgvSoBA.Columns[10].Visible = false;
            dgvSoBA.Columns[11].Visible = false;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (KiemTraNhap() == true)
            {
                DateTime ngayLap = dtpNgayLap.Value;
                // Kiểm tra xem ngày lập có hợp lệ không (ví dụ: không trong tương lai)
                if (ngayLap > DateTime.Today)
                {
                    MessageBox.Show("Ngày lập hoặc ngày ra viện không hợp lệ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                BUS_SoBenhAn.Instance.ThemSoBenhAn(txtMaSoBA.Text, txtTrieuChung.Text, txtTieuSu.Text, txtThongTinLamSang.Text, txtChuanDoan.Text, txtMaBN.Text, txtMaNV.Text, dtpNgayLap.Value, txtMaPKB.Text);
                BUS_SoBenhAn.Instance.HienThiSoBenhAn(dgvSoBA);
            }

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dgvSoBA.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;    
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_SoBenhAn.Instance.XoaSoBenhAn(txtMaSoBA.Text);
                    BUS_SoBenhAn.Instance.HienThiSoBenhAn(dgvSoBA);
                }
            }
            
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            DateTime ngayLap = dtpNgayLap.Value;
            // Kiểm tra xem ngày lập có hợp lệ không (ví dụ: không trong tương lai)
            if (ngayLap > DateTime.Today)
            {
                MessageBox.Show("Ngày lập hoặc ngày ra viện không hợp lệ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn sửa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    if (KiemTraNhap() == true && KiemTraMa(txtMaSoBA.Text) == true)
                    {
                        BUS_SoBenhAn.Instance.SuaSoBenhAn(txtMaSoBA.Text, txtTrieuChung.Text, txtTieuSu.Text, txtThongTinLamSang.Text, txtChuanDoan.Text, txtMaBN.Text, txtMaNV.Text, dtpNgayLap.Value, txtMaPKB.Text);
                        BUS_SoBenhAn.Instance.HienThiSoBenhAn(dgvSoBA);
                    }
                    else
                    {
                        MessageBox.Show("Bạn không được sửa mã " + dgvSoBA.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtMaSoBA.Text = dgvSoBA.CurrentRow.Cells[0].Value.ToString();
                    }

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

        private void dgvSoBA_Click(object sender, EventArgs e)
        {
            if (dgvSoBA.CurrentRow != null && dgvSoBA.Rows[dgvSoBA.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvSoBA.CurrentCell.RowIndex;
                txtMaSoBA.Text = dgvSoBA.Rows[dong].Cells[0].Value.ToString();
                txtTrieuChung.Text = dgvSoBA.Rows[dong].Cells[1].Value.ToString();
                txtTieuSu.Text = dgvSoBA.Rows[dong].Cells[2].Value.ToString();
                txtThongTinLamSang.Text = dgvSoBA.Rows[dong].Cells[3].Value.ToString();
                txtChuanDoan.Text = dgvSoBA.Rows[dong].Cells[4].Value.ToString();
                txtMaBN.Text = dgvSoBA.Rows[dong].Cells[5].Value.ToString();
                //cboMaNV.SelectedValue = dgvSoBA.Rows[dong].Cells[6].Value.ToString();
                txtMaNV.Text = dgvSoBA.Rows[dong].Cells[6].Value.ToString();
                dtpNgayLap.Text = dgvSoBA.Rows[dong].Cells[7].Value.ToString();
            }
        }

        public bool KiemTraNhap()
        {
            if (txtMaSoBA.Text.Length == 0 || txtThongTinLamSang.Text.Length == 0 || txtTieuSu.Text.Length == 0 || txtTrieuChung.Text.Length == 0 || txtChuanDoan.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin","Thông Báo",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        private void txtMaSoBA_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != '.' || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt trừ .", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

        }

        private void txtTieuSu_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không nhập số hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtChuanDoan_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không nhập số hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTrieuChung_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không nhập số hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtThongTinLamSang_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ' && e.KeyChar != '/')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không nhập ký tự đặc biệt ngoài kí tự /", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void cboMaBN_SelectedIndexChanged(object sender, EventArgs e)
        {
            //BUS_SoBenhAn.Instance.HienThiTenBenhNhan(txtTenBN, cboMaBN.SelectedValue.ToString());
            //BUS_SoBenhAn.Instance.HienThiComboboxPhieuKB(cboPhieuKB, cboMaBN.SelectedValue.ToString());
        }

        private void cboMaNV_SelectedIndexChanged(object sender, EventArgs e)
        {
            //BUS_SoBenhAn.Instance.HienThiTenNhanVien(txtTenNV, cboMaNV.SelectedValue.ToString());
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaSoBA.Clear();
            txtChuanDoan.Clear();
            txtThongTinLamSang.Clear();
            txtTieuSu.Clear();
            txtTrieuChung.Clear();
            txtMaSoBA.Focus();
        }

        private void txtMaSoBA_TextChanged(object sender, EventArgs e)
        {
            if (txtMaSoBA.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaSoBA.Text = txtMaSoBA.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaSoBA.SelectionStart = txtMaSoBA.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTieuSu_TextChanged(object sender, EventArgs e)
        {
            if (txtTieuSu.Text.Length > 100)
            {
                // Cắt bớt ký tự thừa
                txtTieuSu.Text = txtTieuSu.Text.Substring(0, 100);

                // Đặt con trỏ chuột ở cuối văn bản
                txtTieuSu.SelectionStart = txtTieuSu.Text.Length;

                MessageBox.Show("Tiểu sử tối đa gồm 100 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;
            //bool lastWasSpace = false;

            //foreach (char c in txtTieuSu.Text)
            //{
            //    if (char.IsLetter(c)) // Chỉ cho phép chữ 
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

            // Nếu có ký tự không hợp lệ, hiển thị cảnh báo và cập nhật TextBox
            //if (hasInvalidChar)
            //{
            //    txtTieuSu.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
            //    txtTieuSu.SelectionStart = txtTieuSu.Text.Length; // Đưa con trỏ đến cuối
            //    MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}
        }

        private void txtChuanDoan_TextChanged(object sender, EventArgs e)
        {
            if (txtChuanDoan.Text.Length > 100)
            {
                // Cắt bớt ký tự thừa
                txtChuanDoan.Text = txtChuanDoan.Text.Substring(0, 100);

                // Đặt con trỏ chuột ở cuối văn bản
                txtChuanDoan.SelectionStart = txtChuanDoan.Text.Length;

                MessageBox.Show("Chuẩn đoán tối đa gồm 100 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            // Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;
            //bool lastWasSpace = false;

            //foreach (char c in txtChuanDoan.Text)
            //{
            //    if (char.IsLetter(c)) // Chỉ cho phép chữ 
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
            //    txtChuanDoan.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
            //    txtChuanDoan.SelectionStart = txtChuanDoan.Text.Length; // Đưa con trỏ đến cuối
            //    MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}
        }

        private void txtTrieuChung_TextChanged(object sender, EventArgs e)
        {
            if (txtTrieuChung.Text.Length > 100)
            {
                // Cắt bớt ký tự thừa
                txtTrieuChung.Text = txtTrieuChung.Text.Substring(0, 100);

                // Đặt con trỏ chuột ở cuối văn bản
                txtTrieuChung.SelectionStart = txtTrieuChung.Text.Length;

                MessageBox.Show("Triệu chứng tối đa gồm 100 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            //// Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;
            //bool lastWasSpace = false;

            //foreach (char c in txtTrieuChung.Text)
            //{
            //    if (char.IsLetter(c)) // Chỉ cho phép chữ
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
            //    txtTrieuChung.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
            //    txtTrieuChung.SelectionStart = txtTrieuChung.Text.Length; // Đưa con trỏ đến cuối
            //    MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}
        }

        private void txtThongTinLamSang_TextChanged(object sender, EventArgs e)
        {
            if (txtThongTinLamSang.Text.Length > 100)
            {
                // Cắt bớt ký tự thừa
                txtThongTinLamSang.Text = txtThongTinLamSang.Text.Substring(0, 100);

                // Đặt con trỏ chuột ở cuối văn bản
                txtThongTinLamSang.SelectionStart = txtThongTinLamSang.Text.Length;

                MessageBox.Show("Thông tin lâm sàng tối đa gồm 100 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            //// Kiểm tra từng ký tự trong chuỗi
            //string filteredText = "";
            //bool hasInvalidChar = false;
            //bool lastWasSpace = false;

            //foreach (char c in txtThongTinLamSang.Text)
            //{
            //    if (char.IsLetterOrDigit(c) || c == '/') // Chỉ cho phép chữ số và /
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
            //    txtThongTinLamSang.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
            //    txtThongTinLamSang.SelectionStart = txtThongTinLamSang.Text.Length; // Đưa con trỏ đến cuối
            //    MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}
        }

        public bool KiemTraMa(string maSBA)
        {
            if (maSBA.Equals(dgvSoBA.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        private void btnQuayLai_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maPKB = txtMaPKB.Text;
            string maNV = txtMaNV.Text;
            string cD = txtChuanDoan.Text;

            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB) && string.IsNullOrEmpty(maNV))
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin.");
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmKhamBenh từ frmMain
            mainForm.openChildForm(new frmKhamBenh(maDonThuoc, maPKB, maBN, maKhoa, maPK, maNV, cD));
        }
    }
}

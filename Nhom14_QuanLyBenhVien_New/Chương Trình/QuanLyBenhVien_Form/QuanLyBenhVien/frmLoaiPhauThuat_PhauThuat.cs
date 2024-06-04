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
    public partial class frmLoaiPhauThuat_PhauThuat : Form
    {
        public frmLoaiPhauThuat_PhauThuat()
        {
            InitializeComponent();
            cboPhongPT.SelectedIndexChanged += cboPhongPT_SelectedIndexChanged;
        }

        public frmLoaiPhauThuat_PhauThuat(string maBN, string maNYC)
        {
            InitializeComponent();
            txtMaBN.Text = maBN;
            txtMaNYC.Text = maNYC;
        }

        //Constructor
        //public frmLoaiPhauThuat_PhauThuat(string maBN, string maDV, string ma)
        //{
        //    InitializeComponent();

        //    //Lấy mã
        //    txtMaBN.Text = maBN;
        //    cboLoaiPT.SelectedValue = maDV;
        //}
        string maDThuoc;
        string maKhoa;
        string maPK;
        string cD;
        string maPhieu;
        string maDV;

        //Constructor nhận mã đơn thuốc và các giá trị cần giữ nguyên
        public frmLoaiPhauThuat_PhauThuat(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan, string maDichVu)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaBN.Text = maBN;                       
            txtMaNYC.Text = selectedNV;

            maDThuoc = maDT;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
            cD = chuanDoan;
            maPhieu = maPKB;
            maDV = maDichVu;
        }

        //Hàm để xử lí mức độ phẫu thuật
        private void SetupAutoComplete()
        {
            try
            {
                List<string> pt = BUS_LoaiPhauThuat.Instance.LayDSMucDo();

                txtMucDo.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
                txtMucDo.AutoCompleteSource = AutoCompleteSource.CustomSource;
                AutoCompleteStringCollection data = new AutoCompleteStringCollection();
                data.AddRange(pt.ToArray());

                txtMucDo.AutoCompleteCustomSource = data;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không thể tải danh sách mức độ phẫu thuật: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public bool KiemTraNhapLoaiPT()
        {
            if (txtMaPT.Text.Length == 0 || txtTenPT.Text.Length == 0 || txtMucDo.Text.Length == 0)
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin cho Phòng Bệnh", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }

        public bool KiemTraMaLoaiPT(string maPT)
        {
            if (maPT.Equals(dgvLoaiPT.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        public bool KiemTraMaPT(string maBN)
        {
            if (maBN.Equals(dgvPT.CurrentRow.Cells[0].Value.ToString()) == true)
            {
                return true;
            }
            return false;
        }

        private void frmLoaiPhauThuat_PhauThuat_Load(object sender, EventArgs e)
        {
            //Gọi hàm xử lí mức độ phẫu thuật
            SetupAutoComplete();
            //Hiển thị dữ liệu lên datagridview
            BUS_LoaiPhauThuat.Instance.HienThiLoaiPT(dgvLoaiPT);

            //Hiển thị bảng Phẫu Thuật
            BUS_PhauThuat.Instance.HienThiPT(dgvPT);
            //BUS_PhauThuat.Instance.HienThiComboboxBenhNhan(cboBN);
            BUS_PhauThuat.Instance.HienThiComboboxLoaiPhauThuat(cboLoaiPT);           
            BUS_PhauThuat.Instance.HienThiComboboxPhongPT(cboPhongPT);          
            BUS_PhauThuat.Instance.HienThiComboboxNhanVien(cboNV, cboPhongPT.SelectedValue.ToString());
            BUS_PhauThuat.Instance.HienThiTenBenhNhan(txtTenBN, txtMaBN.Text);
            BUS_PhauThuat.Instance.HienThiTenNhanVien(txtTenNV, cboNV.SelectedValue.ToString());

            //Ẩn cột
            dgvPT.Columns[5].Visible = false;
            dgvPT.Columns[6].Visible = false;
            dgvPT.Columns[7].Visible = false;
            dgvPT.Columns[8].Visible = false;
            dgvPT.Columns[9].Visible = false;
            dgvPT.Columns[10].Visible = false;
        }

        private void btnThemLoaiPT_Click(object sender, EventArgs e)
        {
            if (KiemTraNhapLoaiPT() == true)
            {
                //Thêm loại PT và load lại datagridview
                BUS_LoaiPhauThuat.Instance.ThemLoaiPT(txtMaPT.Text, txtTenPT.Text, txtMucDo.Text);
                BUS_LoaiPhauThuat.Instance.HienThiLoaiPT(dgvLoaiPT);
            }
        }

        private void btnXoaLoaiPT_Click(object sender, EventArgs e)
        {
            //Kiểm tra đã chọn dòng trên datagridview chưa
            if (dgvLoaiPT.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_LoaiPhauThuat.Instance.XoaLoaiPT(txtMaPT.Text);
                    BUS_LoaiPhauThuat.Instance.HienThiLoaiPT(dgvLoaiPT);
                }
            }
        }

        private void btnSuaLoaiPT_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn sửa không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                if (KiemTraNhapLoaiPT() == true && KiemTraMaLoaiPT(txtMaPT.Text) == true)
                {
                    BUS_LoaiPhauThuat.Instance.SuaLoaiPT(txtMaPT.Text, txtTenPT.Text, txtMucDo.Text);
                    BUS_LoaiPhauThuat.Instance.HienThiLoaiPT(dgvLoaiPT);
                }
                else
                {
                    MessageBox.Show("Bạn không được sửa mã " + dgvLoaiPT.CurrentRow.Cells[0].Value.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtMaPT.Text = dgvLoaiPT.CurrentRow.Cells[0].Value.ToString();
                }
            }
        }

        private void txtMaPT_TextChanged(object sender, EventArgs e)
        {
            if (txtMaPT.Text.Length > 12)
            {
                // Cắt bớt ký tự thừa
                txtMaPT.Text = txtMaPT.Text.Substring(0, 12);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMaPT.SelectionStart = txtMaPT.Text.Length;

                MessageBox.Show("Mã tối đa là 12 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenPT_TextChanged(object sender, EventArgs e)
        {
            if (txtTenPT.Text.Length > 40)
            {
                // Cắt bớt ký tự thừa
                txtTenPT.Text = txtTenPT.Text.Substring(0, 40);

                // Đặt con trỏ chuột ở cuối văn bản
                txtTenPT.SelectionStart = txtTenPT.Text.Length;

                MessageBox.Show("Tên phẫu thuật tối đa là 40 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
           
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtTenPT.Text)
            {
                // Nếu là ký tự chữ số
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
                txtTenPT.Text = filteredText;
                txtTenPT.SelectionStart = txtTenPT.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtMucDo_TextChanged(object sender, EventArgs e)
        {
            if (txtMucDo.Text.Length > 20)
            {
                // Cắt bớt ký tự thừa
                txtMucDo.Text = txtMucDo.Text.Substring(0, 20);

                // Đặt con trỏ chuột ở cuối văn bản
                txtMucDo.SelectionStart = txtMucDo.Text.Length;

                MessageBox.Show("Mức độ tối đa là 20 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtMucDo.Text)
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
                txtMucDo.Text = filteredText;
                txtMucDo.SelectionStart = txtMucDo.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtMaPT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) || char.IsWhiteSpace(e.KeyChar))
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và số, không nhập khoảng trắng hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtTenPT_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không nhập số hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtMucDo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ và khoảng trắng, không nhập ký tự số hay ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void dgvLoaiPT_Click(object sender, EventArgs e)
        {
            if (dgvLoaiPT.CurrentRow != null && !dgvLoaiPT.Rows[dgvLoaiPT.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvLoaiPT.CurrentCell.RowIndex;
                txtMaPT.Text = dgvLoaiPT.Rows[dong].Cells[0].Value.ToString();
                txtTenPT.Text = dgvLoaiPT.Rows[dong].Cells[1].Value.ToString();
                txtMucDo.Text = dgvLoaiPT.Rows[dong].Cells[2].Value.ToString();
            }

        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaPT.Clear();
            txtTenPT.Clear();
            txtMucDo.Clear();
            txtMaPT.Focus();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void cboPhongPT_SelectedIndexChanged(object sender, EventArgs e)
        {
            BUS_PhauThuat.Instance.HienThiComboboxNhanVien(cboNV, cboPhongPT.SelectedValue.ToString());
        }

        private void cboBN_SelectedIndexChanged(object sender, EventArgs e)
        {
            //BUS_PhauThuat.Instance.HienThiTenBenhNhan(txtTenBN, cboBN.SelectedValue.ToString());
        }

        private void cboNV_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboNV.SelectedValue != null)
            {
                var selectedValue = cboNV.SelectedValue.ToString();
                BUS_PhauThuat.Instance.HienThiTenNhanVien(txtTenNV, selectedValue);
            }
            else
            {
                txtTenNV.Text = string.Empty;
            }
        }

        private void dgvPT_Click(object sender, EventArgs e)
        {
            if (dgvPT.CurrentRow != null && !dgvPT.Rows[dgvPT.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvPT.CurrentCell.RowIndex;

                // Kiểm tra và gán giá trị an toàn
                cboLoaiPT.SelectedValue = dgvPT.Rows[dong].Cells[1]?.Value?.ToString();
                cboNV.SelectedValue = dgvPT.Rows[dong].Cells[0]?.Value?.ToString();
                txtMaBN.Text = dgvPT.Rows[dong].Cells[2]?.Value?.ToString();
                dtpNgayPT.Text = dgvPT.Rows[dong].Cells[3]?.Value?.ToString();
                cboPhongPT.SelectedValue = dgvPT.Rows[dong].Cells[4]?.Value?.ToString();
            }
        }

        private void btnThemPT_Click(object sender, EventArgs e)
        {
            DateTime ngayLap = dtpNgayPT.Value;
            if (ngayLap > DateTime.Now)
            {           
                MessageBox.Show("Ngày phẫu thuật không hợp lệ", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                //Thêm loại PT và load lại datagridview
                BUS_PhauThuat.Instance.ThemPhauThuat(cboNV.SelectedValue.ToString(), cboLoaiPT.SelectedValue.ToString(), txtMaBN.Text, Convert.ToDateTime(dtpNgayPT.Value), cboPhongPT.SelectedValue.ToString(), txtMaNYC.Text);
                BUS_PhauThuat.Instance.HienThiPT(dgvPT);
            }
           
        }

        private void btnXoaPT_Click(object sender, EventArgs e)
        {
            if (dgvPT.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn phải chọn dòng để xóa", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                return;
            }
            else
            {
                DialogResult dialog = MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    BUS_PhauThuat.Instance.XoaPhauThuat(txtMaBN.Text);
                    BUS_PhauThuat.Instance.HienThiPT(dgvPT);
                }
            }
        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void btnPhanGiuong_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maNVYC = txtMaNYC.Text;
            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maBN))
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin");
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmPhanGiuong_TheoDoiDieuTri từ frmMain
            mainForm.openChildForm(new frmPhanGiuong_TheoDoiDieuTri(maBN, maNVYC));
        }
    }
}

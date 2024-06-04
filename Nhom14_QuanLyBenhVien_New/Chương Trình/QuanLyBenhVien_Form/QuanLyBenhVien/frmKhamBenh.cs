using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBenhVien
{
    public partial class frmKhamBenh : Form
    {
        public frmKhamBenh()
        {
            InitializeComponent();
            txtTim.TextChanged += txtTim_TextChanged;
        }

        // Phương thức để cập nhật dữ liệu khi quay lại
        public frmKhamBenh(string maDonThuoc, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaDT.Text = maDonThuoc;
            txtMaPKB.Text = maPKB;
            txtMaBN.Text = maBN;

            cboKhoa.SelectedValue = selectedKhoa;
            cboPK.SelectedValue = selectedPK;
            cboNV.SelectedValue = selectedNV;
            txtChuanDoan.Text = chuanDoan;

            //load lại dữ liệu
            load();

        }


        // Constructor nhận mã bệnh nhân
        public frmKhamBenh(string maBN, string maPKB)
        {
            InitializeComponent();

            // Sử dụng mã bệnh nhân
            txtMaBN.Text = maBN;
            txtMaPKB.Text = maPKB;
        }


        private void frmDonThuoc_Load(object sender, EventArgs e)
        {

            //lấy dữ liệu cho cboKhoa
            KhamBenh_BUS.Instance.layDSKhoa(cboKhoa);
            cboKhoa.DisplayMember = "TenKhoa";
            cboKhoa.ValueMember = "MaKhoa";



            // Lấy dữ liệu cho cboPhongKham với khoa đầu tiên trong danh sách
            if (cboKhoa.Items.Count > 0)
            {
                string maKhoa = cboKhoa.SelectedValue.ToString();
                KhamBenh_BUS.Instance.layDSPK(cboPK, maKhoa);
            }

            cboPK.DisplayMember = "TenPhongKham";
            cboPK.ValueMember = "MaPhongKham";

            // Lấy dữ liệu cho cboNhanVien với khoa đầu tiên trong danh sách
            if (cboKhoa.Items.Count > 0)
            {
                string maKhoa = cboKhoa.SelectedValue.ToString();
                KhamBenh_BUS.Instance.layDSNV(cboNV, maKhoa);
            }

            cboNV.DisplayMember = "MaNV";
            cboNV.ValueMember = "MaNV";

            //Chưa có dữ liệu của đang thuốc, nút in sẽ tắt
            btnIn.Enabled = false;

            //Tải dữ liệu
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

        private void txtTim_TextChanged(object sender, EventArgs e)
        {
            string keyword = txtTim.Text.Trim();
            //xóa mục cũ
            lbTimThuoc.Items.Clear();

            //kiểm tra có rỗng không
            if (!string.IsNullOrEmpty(keyword))
            {
                lbTimThuoc.Items.AddRange(Thuoc_BUS.Instance.layDSThuocChoListBox(keyword).ToArray());
            }
        }

        private void cboKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lấy dữ liệu cho cboPhongKham
            KhamBenh_BUS.Instance.layDSPK(cboPK, cboKhoa.SelectedValue.ToString());
            cboPK.DisplayMember = "TenPhongKham";
            cboPK.ValueMember = "MaPhongKham";

            //lấy dữ liệu cho cboNhanVien
            KhamBenh_BUS.Instance.layDSNV(cboNV, cboKhoa.SelectedValue.ToString());
            cboNV.DisplayMember = "MaNV";
            cboNV.ValueMember = "MaNV";
        }

        private void lbTimThuoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tenThuoc = lbTimThuoc.SelectedItem.ToString();
            string[] thuoc = Thuoc_BUS.Instance.layThuocTheoTen(tenThuoc);

            if (thuoc != null)
            {
                txtMaThuoc.Text = thuoc[0];
                txtTenThuoc.Text = thuoc[1];
                txtGia.Text = thuoc[3];
            }
        }

        //Thêm thuốc
        private void btnThemThuoc_Click(object sender, EventArgs e)
        {
            if (txtMaDT.Text == "" || txtMaThuoc.Text == "" || txtSoLuong.Text == "0" || txtSoLuong.Text == "" || txtCachDung.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                string kq = ChiTietDonThuoc_BUS.Instance.them(txtMaDT.Text, txtMaThuoc.Text, int.Parse(txtSoLuong.Text), txtCachDung.Text);
                MessageBox.Show(kq, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                if (kq == "Thêm thuốc thành công")
                {
                    // Cập nhật lại dữ liệu trên dgvThuoc
                    load();
                    btnIn.Enabled = true;
                }

            }
        }

        //Sửa lại thông tin chi tiết đơn thuốc
        private void btnSua_Click(object sender, EventArgs e)
        {
            if (txtMaDT.Text == "" || txtMaThuoc.Text == "" || txtSoLuong.Text == "0" || txtSoLuong.Text == "" || txtCachDung.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                string kq = ChiTietDonThuoc_BUS.Instance.sua(txtMaDT.Text, txtMaThuoc.Text, int.Parse(txtSoLuong.Text), txtCachDung.Text);
                MessageBox.Show(kq, "Thông báo");
                if (kq == "Sửa thành công")
                {
                    //Cập nhật lại
                    load();
                }
            }
        }

        //Xóa thuốc khỏi đơn thuốc
        private void btnXoaThuoc_Click(object sender, EventArgs e)
        {
            if (txtMaThuoc.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (tb == DialogResult.Yes)
                {
                    string maThuoc = txtMaThuoc.Text.Trim();
                    string maDT = txtMaDT.Text.Trim();
                    string kq = ChiTietDonThuoc_BUS.Instance.xoa(maDT, maThuoc);
                    MessageBox.Show(kq, "Thông báo");

                    if (kq == "Xóa thuốc thành công")
                    {
                        //Cập nhật lại dữ liệu
                        load();
                    }
                }
            }
        }

        //cập nhật dgvThuoc
        private void load()
        {
            ChiTietDonThuoc_BUS.Instance.layDSTTThuoc(dgvThuoc, txtMaDT.Text);
            dgvThuoc.Columns[5].Visible = false;
            DonThuoc_BUS.Instance.layTongTienDonThuoc(txtMaDT.Text, txtTongTienDT);
        }

        //Thêm đơn thuốc
        private void btnThemDT_Click(object sender, EventArgs e)
        {
            if (txtMaDT.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                //kiểm tra ngày
                DateTime ngay = dtpNgKeDon.Value;
                if (ngay.Date != DateTime.Now.Date)
                {
                    MessageBox.Show("Ngày lập đơn thuốc phải là ngày hiện tại.","Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    return;
                }

                string maNV = cboNV.SelectedValue.ToString();
                string maBN = txtMaBN.Text;

                string kq2 = DonThuoc_BUS.Instance.them(txtMaDT.Text, Convert.ToDateTime(dtpNgKeDon.Text), maNV, maBN, txtChuanDoan.Text);
                MessageBox.Show(kq2, "Thông báo");
                if (kq2 == "Thêm đơn thuốc thành công")
                {
                    txtMaDT.ReadOnly = true;
                }
            }
        }

        private void dgvThuoc_Click(object sender, EventArgs e)
        {

            // Kiểm tra nếu có dòng được chọn và dòng đó không phải là dòng trống
            if (dgvThuoc.CurrentRow != null && !dgvThuoc.Rows[dgvThuoc.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvThuoc.CurrentCell.RowIndex;
                txtMaThuoc.Text = dgvThuoc.Rows[dong].Cells[0].Value.ToString();
                txtTenThuoc.Text = dgvThuoc.Rows[dong].Cells[1].Value.ToString();
                txtGia.Text = dgvThuoc.Rows[dong].Cells[2].Value.ToString();
                txtSoLuong.Text = dgvThuoc.Rows[dong].Cells[3].Value.ToString();
                txtTongTienThuoc.Text = dgvThuoc.Rows[dong].Cells[4].Value.ToString();
                txtCachDung.Text = dgvThuoc.Rows[dong].Cells[5].Value.ToString();
            }
        }

        private void txtMaDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back && e.KeyChar != '.')
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtMaDT_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMaDT.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMaDT.Text = txtMaDT.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMaDT.Text = txtMaDT.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMaDT.SelectionStart = txtMaDT.Text.Length;
        }

        private void txtTim_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar))
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtSoLuong_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaDT.ReadOnly = false;
            txtMaDT.Clear();
            txtSoLuong.Clear();
            txtCachDung.Clear();
        }

        private void txtPhieuKB_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar) && e.KeyChar != '.')
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtChuanDoan_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtChuanDoan.Text.Length > 100)
            {
                MessageBox.Show("Chuẩn đoán được nhập tối đa 100 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtChuanDoan.Text = txtChuanDoan.Text.Substring(0, 100);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtChuanDoan.Text = txtChuanDoan.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtChuanDoan.SelectionStart = txtChuanDoan.Text.Length;

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;
            bool lastWasSpace = false;

            foreach (char c in txtChuanDoan.Text)
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
                txtChuanDoan.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
                txtChuanDoan.SelectionStart = txtChuanDoan.Text.Length; // Đưa con trỏ đến cuối
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtChuanDoan_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void cboMaPhieuKB_SelectedIndexChanged(object sender, EventArgs e)
        {
            //KhamBenh_BUS.Instance.LayDSBN(cboMaBN, cboMaPhieuKB.SelectedValue.ToString());
        }

        private void txtCachDung_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtCachDung.Text.Length > 500)
            {
                MessageBox.Show("Cách dùng được nhập tối đa 500 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtCachDung.Text = txtCachDung.Text.Substring(0, 500);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtCachDung.Text = txtCachDung.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtCachDung.SelectionStart = txtCachDung.Text.Length;

            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;
            bool lastWasSpace = false;

            foreach (char c in txtCachDung.Text)
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
                txtCachDung.Text = filteredText; // Chỉ giữ các ký tự hợp lệ
                txtCachDung.SelectionStart = txtCachDung.Text.Length; // Đưa con trỏ đến cuối
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Cảnh báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtCachDung_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsControl(e.KeyChar) && e.KeyChar != ' ')
            {
                e.Handled = true;
                MessageBox.Show("Bạn chỉ được nhập chữ, số và khoảng trắng, không ký tự đặc biệt", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        //In đơn thuốc
        private void btnIn_Click(object sender, EventArgs e)
        {
            string maDonThuoc = txtMaDT.Text;
            string maPKB = txtMaPKB.Text;
            string maBN = txtMaBN.Text;
            string selectedKhoa = cboKhoa.SelectedValue.ToString();
            string selectedPK = cboPK.SelectedValue.ToString();
            string selectedNV = cboNV.SelectedValue.ToString();
            string chuanDoan = txtChuanDoan.Text;

            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB) && string.IsNullOrEmpty(maDonThuoc) && string.IsNullOrEmpty(chuanDoan))
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin.","Thông Báo",MessageBoxButtons.OK,MessageBoxIcon.Warning);
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmInDonThuoc từ frmMain
            mainForm.openChildForm(new frmInDonThuoc(maDonThuoc, maPKB, maBN, selectedKhoa, selectedPK, selectedNV, chuanDoan));
        }

        //Chuyển sang from sổ bệnh án
        private void btnSoBA_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maPKB = txtMaPKB.Text;
            string maDonThuoc = txtMaDT.Text;
            string selectedKhoa = cboKhoa.SelectedValue.ToString();
            string selectedPK = cboPK.SelectedValue.ToString();
            string selectedNV = cboNV.SelectedValue.ToString();
            string chuanDoan = txtChuanDoan.Text;

            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB) && string.IsNullOrEmpty(maDonThuoc) && string.IsNullOrEmpty(chuanDoan))
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin.");
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmSoBenhAn từ frmMain
            mainForm.openChildForm(new frmSoBenhAn(maDonThuoc, maPKB, maBN, selectedKhoa, selectedPK, selectedNV, chuanDoan));
        }

        //Chuyển sang from sử dụng dịch vụ
        private void btnSDDV_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maPKB = txtMaPKB.Text;
            string maDonThuoc = txtMaDT.Text;
            string selectedKhoa = cboKhoa.SelectedValue.ToString();
            string selectedPK = cboPK.SelectedValue.ToString();
            string selectedNV = cboNV.SelectedValue.ToString();
            string chuanDoan = txtChuanDoan.Text;

            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB) && string.IsNullOrEmpty(maDonThuoc) && string.IsNullOrEmpty(chuanDoan))
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin.");
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmSoBenhAn từ frmMain
            mainForm.openChildForm(new frmSuDungDichVu(maDonThuoc, maPKB, maBN, selectedKhoa, selectedPK, selectedNV, chuanDoan));
        }

        //thêm lần khám bệnh mới
        private void btnThemLanKhamMoi_Click(object sender, EventArgs e)
        {
            if (txtMaBN.Text == "" || txtMaPKB.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string maNV = cboNV.SelectedValue.ToString();
                string maPK = cboPK.SelectedValue.ToString();
                string maBN = txtMaBN.Text;
                string maPhieu = txtMaPKB.Text;

                if (KhamBenh_BUS.Instance.them(maBN, maPK, maNV, maPhieu))
                {
                    MessageBox.Show("Thêm lầm khám mới thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Thêm lầm khám mới không thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
    }
}

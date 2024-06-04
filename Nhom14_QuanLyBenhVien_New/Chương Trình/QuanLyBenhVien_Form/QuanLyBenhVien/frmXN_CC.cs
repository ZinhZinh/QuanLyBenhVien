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
    public partial class frmXN_CC : Form
    {
        public frmXN_CC()
        {
            InitializeComponent();
            cboMaPK.SelectedIndexChanged += cboMaPK_SelectedIndexChanged;
        }

        //Constructor
        public frmXN_CC(string maPKB, string maBN, string maDV)
        {
            InitializeComponent();

            //Lấy mã
            txtMaBN.Text = maBN;
            txtMaPhieu.Text = maPKB;
            txtDV.Text = maDV;
        }

     

        string maDThuoc;
        string maKhoa;
        string maPK;
        string cD;

        // Constructor nhận mã đơn thuốc và các giá trị cần giữ nguyên
        public frmXN_CC(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan, string maDichVu)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaBN.Text = maBN;
            txtMaPhieu.Text = maPKB;
            txtDV.Text = maDichVu;
            txtMaNYC.Text = selectedNV;
            

            maDThuoc = maDT;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
            cD = chuanDoan;
        }
        private void frmXN_CC_Load(object sender, EventArgs e)
        {

            btnSua.Enabled = false;
            btnXoa.Enabled = false;

            //lấy dữ liệu cho cboBN
            //XN_CC_BUS.Instance.layDSBN(cboMaBN);
            //cboMaBN.DisplayMember = "MaBN";
            //cboMaBN.ValueMember = "MaBN";

            //lấy dữ liệu cho cboPK
            XN_CC_BUS.Instance.layDSPCN(cboMaPK);
            cboMaPK.DisplayMember = "TenPhongKham";
            cboMaPK.ValueMember = "MaPhongKham";

            //lấy dữ liệu cho cboBN
            //XN_CC_BUS.Instance.layDSDV(cboDichVu);
            //cboDichVu.DisplayMember = "TenDV";
            //cboDichVu.ValueMember = "MaDV";

            //lấy dữ liệu cho cboNV
            if (cboMaPK.Items.Count > 0)
            {
                string maPK = cboMaPK.SelectedValue.ToString();
                XN_CC_BUS.Instance.layDSNV(cboNV, maPK);
            }

            cboNV.DisplayMember = "MaNV";
            cboNV.ValueMember = "MaNV";

            // Lấy dữ liệu cho txtTenBN
            XN_CC_BUS.Instance.layTenBenhNhan(txtTenBN, txtMaBN.Text);

            // Lấy dữ liệu cho txtTenNVYC
            XN_CC_BUS.Instance.layTenNVYC(txtTenNYC, txtMaNYC.Text);

            // Lấy dữ liệu cho txtTenDV
            XN_CC_BUS.Instance.layTenDV(txtTenDV, txtDV.Text);

            // Lấy dữ liệu cho txtTenNVPT
            XN_CC_BUS.Instance.layTenNVYC(txtTenNVPT, cboNV.SelectedValue.ToString());
        }

        //Tải dữ liệu
        private void load()
        {
            XN_CC_BUS.Instance.hienThiDuLieuXNCC(dgvXNCC, txtMaBN.Text);
            dgvXNCC.Columns[7].Visible = false;
        }

        //Thêm phiếu mới
        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMaPhieu.Text == "" || txtKQ.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                //kiểm tra ngày
                DateTime ngay = dtpNgayTH.Value;
                if (ngay.Date != DateTime.Now.Date)
                {
                    MessageBox.Show("Ngày lập phiếu phải là ngày hiện tại.");
                    return;
                }
                string kq = XN_CC_BUS.Instance.them(txtMaPhieu.Text.Trim(), txtDV.Text, Convert.ToDateTime(dtpNgayTH.Text), txtKQ.Text, txtMaBN.Text, cboNV.SelectedValue.ToString(), cboMaPK.SelectedValue.ToString(), txtMaNYC.Text);
                MessageBox.Show(kq, "Thông báo");
                load();
            }
        }

        //Xóa phiếu
        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMaPhieu.Text.Trim();
                string kq = XN_CC_BUS.Instance.xoa(id);
                MessageBox.Show(kq, "Thông báo");
                if (kq == "Xóa thành công")
                {
                    btnXoa.Enabled = false;
                    btnSua.Enabled = false;
                    load();
                }
            }
        }

        //Sửa thông tin phiếu
        private void btnSua_Click(object sender, EventArgs e)
        {
            string kq = XN_CC_BUS.Instance.sua(txtMaPhieu.Text.Trim(), txtDV.Text, Convert.ToDateTime(dtpNgayTH.Text), txtKQ.Text);
            MessageBox.Show(kq, "Thông báo");
            if (kq == "Sửa thành công")
            {
                btnXoa.Enabled = false;
                btnSua.Enabled = false;
                load();
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void txtMaPhieu_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMaPhieu.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMaPhieu.Text = txtMaPhieu.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMaPhieu.Text = txtMaPhieu.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMaPhieu.SelectionStart = txtMaPhieu.Text.Length;
        }

        private void txtMaPhieu_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtLoai_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar))
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtKQ_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar))
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void cboMaPK_SelectedIndexChanged(object sender, EventArgs e)
        {
            XN_CC_BUS.Instance.layDSNV(cboNV, cboMaPK.SelectedValue.ToString());
            cboNV.DisplayMember = "MaNV";
            cboNV.ValueMember = "MaNV";
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMaPhieu.Clear();
            txtKQ.Clear();
            dtpNgayTH.Enabled = true;

        }

        private void dgvXNCC_Click(object sender, EventArgs e)
        {
            if (dgvXNCC.CurrentRow != null && !dgvXNCC.Rows[dgvXNCC.CurrentRow.Index].IsNewRow)
            {
                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                dtpNgayTH.Enabled = false;

                int dong = dgvXNCC.CurrentCell.RowIndex;
                txtMaPhieu.Text = dgvXNCC.Rows[dong].Cells[0].Value.ToString();
                txtDV.Text = dgvXNCC.Rows[dong].Cells[1].Value.ToString();
                dtpNgayTH.Text = dgvXNCC.Rows[dong].Cells[2].Value.ToString();
                txtKQ.Text = dgvXNCC.Rows[dong].Cells[4].Value.ToString();
                txtMaBN.Text = dgvXNCC.Rows[dong].Cells[5].Value.ToString();
                cboMaPK.SelectedValue = dgvXNCC.Rows[dong].Cells[7].Value.ToString();
                cboNV.SelectedValue = dgvXNCC.Rows[dong].Cells[6].Value.ToString();
            }
        }

        private void btnQuayLai_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                string maBN = txtMaBN.Text;
                string maPKB = txtMaPhieu.Text;
                string maNV = txtMaNYC.Text;
                

                if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB))
                {
                    MessageBox.Show("Vui lòng nhập mã bệnh nhân hoặc mã phiếu khám bệnh.");
                    return;
                }

                // Tạo tham chiếu đến frmMain
                frmMain mainForm = (frmMain)this.ParentForm;
                // Gọi phương thức mở frmKhamBenh từ frmMain
                mainForm.openChildForm(new frmKhamBenh(maDThuoc, maPKB, maBN, maKhoa, maPK, maNV, cD));
            }
        }

        private void cboNV_SelectedIndexChanged(object sender, EventArgs e)
        {
            XN_CC_BUS.Instance.layTenNVYC(txtTenNVPT, cboNV.SelectedValue.ToString());
        }
    }
}

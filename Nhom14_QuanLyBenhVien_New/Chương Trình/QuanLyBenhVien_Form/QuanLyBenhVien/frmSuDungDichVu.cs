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
    public partial class frmSuDungDichVu : Form
    {
        public frmSuDungDichVu()
        {
            InitializeComponent();
        }

        //Constructor nhân mã
        public frmSuDungDichVu(string maBN, string maPKB)
        {
            InitializeComponent();
            txtMaBN.Text = maBN;
            txtMaPKB.Text = maPKB;
        }



        string maDThuoc;
        string maKhoa;
        string maPK;
        string cD;

        // Constructor nhận mã đơn thuốc và các giá trị cần giữ nguyên
        public frmSuDungDichVu(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaBN.Text = maBN;
            txtMaPKB.Text = maPKB;
            txtMaNYC.Text = selectedNV;

            maDThuoc = maDT;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
            cD = chuanDoan;
        }

        public frmSuDungDichVu(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan,string maDV)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaBN.Text = maBN;
            txtMaPKB.Text = maPKB;
            txtMaNYC.Text = selectedNV;
            cboDichVu.SelectedValue = maDV;

            maDThuoc = maDT;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
            cD = chuanDoan;

        }
        private void frmSuDungDichVu_Load(object sender, EventArgs e)
        {
            SuDungDichVu_BUS.Instance.layDSDV(cboDichVu);
            cboDichVu.DisplayMember = "TenDV";
            cboDichVu.ValueMember = "MaDV";

            // Lấy dữ liệu cho txtTenBN với BN đầu tiên trong danh sách
            SuDungDichVu_BUS.Instance.layTenBenhNhan(txtTenBN, txtMaBN.Text);
        }

        private void load()
        {
            SuDungDichVu_BUS.Instance.load(dgvDichVu, txtMaBN.Text, txtMaPKB.Text);
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            string kq = SuDungDichVu_BUS.Instance.them(txtMaBN.Text, cboDichVu.SelectedValue.ToString(), txtMaPKB.Text, txtMaNYC.Text);
            MessageBox.Show(kq, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            if (kq == "Thêm thành công")
            {
                load();
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string kq = SuDungDichVu_BUS.Instance.xoa(txtMaBN.Text, cboDichVu.SelectedValue.ToString(), btnXoa, txtMaPKB.Text);
                MessageBox.Show(kq, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

                if (kq == "Xóa thành công")
                {
                    load();
                }
            }
        }

        private void btnThanhToan_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maPhieuKB = txtMaPKB.Text;
            string maNV = txtMaNYC.Text;
            string maDV = cboDichVu.SelectedValue.ToString();
            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmThanhToanDV từ frmMain
            mainForm.openChildForm(new frmThanhToanDV(maDThuoc, maPhieuKB, maBN, maKhoa, maPK, maNV, cD, maDV));
        }

        private void bntXNCC_Click(object sender, EventArgs e)
        {
            string maPKB = txtMaPKB.Text;
            string maBN = txtMaBN.Text;
            string maNV = txtMaNYC.Text;
            string maDV = cboDichVu.SelectedValue.ToString();

            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maDV) && string.IsNullOrEmpty(maPKB) && string.IsNullOrEmpty(maNV))
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin.");
                return;
            }

            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmXN_CC từ frmMain
            mainForm.openChildForm(new frmXN_CC(maDThuoc, maPKB, maBN, maKhoa, maPK, maNV, cD, maDV));
        }

        private void btnPhauThuat_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maNYC = txtMaNYC.Text;
            if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maNYC))
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin.");
                return;
            }
            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmLoaiPhauThuat_PhauThuat từ frmMain
            mainForm.openChildForm(new frmLoaiPhauThuat_PhauThuat(maBN, maNYC));
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

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void dgvDichVu_Click(object sender, EventArgs e)
        {
            btnXoa.Enabled = true;
            if (dgvDichVu.CurrentRow != null && !dgvDichVu.Rows[dgvDichVu.CurrentRow.Index].IsNewRow)
            {
                int dong = dgvDichVu.CurrentCell.RowIndex;
                txtMaBN.Text = dgvDichVu.Rows[dong].Cells[0].Value.ToString();
                cboDichVu.SelectedValue = dgvDichVu.Rows[dong].Cells[1].Value.ToString();
            }
        }
    }
}

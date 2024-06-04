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
    public partial class frmThanhToanDV : Form
    {
        public frmThanhToanDV()
        {
            InitializeComponent();
        }
        public frmThanhToanDV(string maBN, string maPhieuKB)
        {
            InitializeComponent();
            txtMaBN.Text = maBN;
            txtPhieuKB.Text = maPhieuKB;
            
        }
        string maDThuoc;
        string maKhoa;
        string maPK;
        string cD;
        string maNV;
        string maDV;

        // Constructor nhận mã đơn thuốc và các giá trị cần giữ nguyên
        public frmThanhToanDV(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan, string maDichVu)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaBN.Text = maBN;
            txtPhieuKB.Text = maPKB;

            maNV = selectedNV;
            maDThuoc = maDT;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
            cD = chuanDoan;
            maDV = maDichVu;

        }
        private void frmThanhToanDV_Load(object sender, EventArgs e)
        {
            
        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            string maBN = txtMaBN.Text;
            string maPKB = txtPhieuKB.Text;

            // TODO: This line of code loads data into the 'QLBVDataSet.SuDungDichVu' table. You can move, or remove it, as needed.
            //this.SuDungDichVuTableAdapter.Fill(this.QLBVDataSet.SuDungDichVu, "BN150", "PKB150.1");
            // TODO: This line of code loads data into the 'QLBVDataSet.SuDungDichVu' table. You can move, or remove it, as needed.
            this.SuDungDichVuTableAdapter.Fill(this.QLBVDataSet.SuDungDichVu, maBN, maPKB);

            this.rptThanhToanDV.RefreshReport();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                string maPKB = txtPhieuKB.Text;
                string maBN = txtMaBN.Text;
                //string maNV = txtMaNYC.Text;
                //string maDV = cboDichVu.SelectedValue.ToString();

                if (string.IsNullOrEmpty(maBN) && string.IsNullOrEmpty(maPKB))
                {
                    MessageBox.Show("Vui lòng điền đầy đủ thông tin.");
                    return;
                }

                // Tạo tham chiếu đến frmMain
                frmMain mainForm = (frmMain)this.ParentForm;
                // Gọi phương thức mở frmSuDungDichVu từ frmMain
                mainForm.openChildForm(new frmSuDungDichVu(maDThuoc, maPKB, maBN, maKhoa, maPK, maNV, cD, maDV));
            }
        }

        private void txtMaBN_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtPhieuKB_TextChanged(object sender, EventArgs e)
        {

        }

        private void rptThanhToanDV_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}

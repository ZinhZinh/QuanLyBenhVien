using BUS;
using Microsoft.Reporting.WinForms;
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
    public partial class frmInDonThuoc : Form
    {
        public frmInDonThuoc()
        {
            InitializeComponent();
        }

        public frmInDonThuoc(string maDT)
        {
            InitializeComponent();
            txtMaDT.Text = maDT;
            
        }

        string maPKBenh;
        string maBNhan;
        string maKhoa;
        string maPK;
        string maNV;
        string cD;

        // Constructor nhận mã đơn thuốc và các giá trị cần giữ nguyên
        public frmInDonThuoc(string maDT, string maPKB, string maBN, string selectedKhoa, string selectedPK, string selectedNV, string chuanDoan)
        {
            InitializeComponent();

            // Cập nhật giá trị vào các control tương ứng
            txtMaDT.Text = maDT;

            maPKBenh = maPKB;
            maBNhan = maBN;
            maKhoa = selectedKhoa;
            maPK = selectedPK;
            maNV = selectedNV;
            cD = chuanDoan;
        }

        private void frmInDonThuoc_Load(object sender, EventArgs e)
        {
           


        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            //// TODO: This line of code loads data into the 'QLBVDataSet.ThongTinDonThuoc' table. You can move, or remove it, as needed.
            //this.ThongTinDonThuocTableAdapter.Fill(this.QLBVDataSet.ThongTinDonThuoc, txtMaDT.Text);
            //this.rptInDonThuoc.RefreshReport();
            string maDT = txtMaDT.Text;

            // Fetching data
            var data3 = BUS_ThongTinDonThuoc.Instance.LayThongTinDonThuoc(maDT);

            try
            {
                // Clear previous data sources
                rptInDonThuoc.LocalReport.DataSources.Clear();

                // Setup new data sources

                ReportDataSource rds3 = new ReportDataSource("DataSetInDonThuoc", data3);

               
                rptInDonThuoc.LocalReport.DataSources.Add(rds3);



                rptInDonThuoc.RefreshReport();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Failed to load report: " + ex.Message);
            }
        }

        private void btnQuayLai_Click(object sender, EventArgs e)
        {
            string maDonThuoc = txtMaDT.Text.Trim();
            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmSoBA từ frmMain
            mainForm.openChildForm(new frmKhamBenh(maDonThuoc, maPKBenh, maBNhan, maKhoa, maPK, maNV, cD));
        }
    }
}

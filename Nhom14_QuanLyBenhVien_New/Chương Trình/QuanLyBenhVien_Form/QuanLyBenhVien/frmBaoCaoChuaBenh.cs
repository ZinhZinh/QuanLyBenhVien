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
    public partial class frmBaoCaoChuaBenh : Form
    {
        public frmBaoCaoChuaBenh()
        {
            InitializeComponent();
        }

        private void frmBaoCaoChuaBenh_Load(object sender, EventArgs e)
        {
         

        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLBVDataSet.LayDanhSachBenhNhanTheoKhoa' table. You can move, or remove it, as needed.
            //ReportParameter[] reportParameters = new ReportParameter[2];
            //reportParameters[0] = new ReportParameter("fromDate", dtpNgayDau.Value.ToString("dd/MM/yyyy"));
            //reportParameters[1] = new ReportParameter("toDate", dtpNgayCuoi.Value.ToString("dd/MM/yyyy"));
            //rptTDDT.LocalReport.SetParameters(reportParameters);
            //this.DanhSachBenhNhanDieuTriTableAdapter.Fill(this.QLBVDataSet.DanhSachBenhNhanDieuTri,dtpNgayDau.Value,dtpNgayCuoi.Value);
            // TODO: This line of code loads data into the 'QLBVDataSet.DanhSachBenhNhanDieuTri' table. You can move, or remove it, as needed.
            this.DanhSachBenhNhanDieuTriTableAdapter.Fill(this.QLBVDataSet.DanhSachBenhNhanDieuTri,dtpNgayDau.Value,dtpNgayCuoi.Value);

            this.rptTDDT.RefreshReport();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult ret = MessageBox.Show("Bạn có muốn thoát không ?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (ret == DialogResult.Yes)
            {
                this.Close();
            }
        }
    }
}

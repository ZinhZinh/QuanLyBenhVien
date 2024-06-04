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
    public partial class frmBaoCaoDoanhThu : Form
    {
        public frmBaoCaoDoanhThu()
        {
            InitializeComponent();
        }

        private void frmBaoCaoDoanhThu_Load(object sender, EventArgs e)
        {
          


        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoDoanhThu' table. You can move, or remove it, as needed.
            //ReportParameter[] reportParameters = new ReportParameter[2];
            //reportParameters[0] = new ReportParameter("fromDate", dtpNgayDau.Value.ToString("dd/MM/yyyy"));
            //reportParameters[1] = new ReportParameter("toDate", dtpNgayCuoi.Value.ToString("dd/MM/yyyy"));
            //rptDoanhThu.LocalReport.SetParameters(reportParameters);
            //this.BaoCaoDoanhThuTableAdapter.Fill(this.QLBVDataSet.BaoCaoDoanhThu,dtpNgayDau.Value, dtpNgayCuoi.Value);
            // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoDoanhThu' table. You can move, or remove it, as needed.
            // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoDoanhThu' table. You can move, or remove it, as needed.
            this.BaoCaoDoanhThuTableAdapter.Fill(this.QLBVDataSet.BaoCaoDoanhThu, dtpNgayDau.Value, dtpNgayCuoi.Value);
            this.rptDoanhThu.RefreshReport();
        }
    }
}

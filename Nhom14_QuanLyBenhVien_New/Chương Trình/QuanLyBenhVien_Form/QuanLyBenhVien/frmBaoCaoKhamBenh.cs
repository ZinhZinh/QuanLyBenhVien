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
    public partial class frmBaoCaoKhamBenh : Form
    {
        public frmBaoCaoKhamBenh()
        {
            InitializeComponent();
        }

        private void frmBaoCaoKhamBenh_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoKhamBenhTheoKhoa' table. You can move, or remove it, as needed.
            //this.BaoCaoKhamBenhTheoKhoaTableAdapter.Fill(this.QLBVDataSet.BaoCaoKhamBenhTheoKhoa);
            ChuyenNganh_BUS.Instance.layDSKhoa(cboKhoa);
            cboKhoa.DisplayMember = "TenKhoa";
            cboKhoa.ValueMember = "MaKhoa";
            rptBCKhamBenh.Visible = true;
        }

        private void btnIn_Click(object sender, EventArgs e)
        {
            
            if (radKhoa.Checked == true)
            {
                // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoKhamBenhTheoKhoa' table. You can move, or remove it, as needed.           
                // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoDoanhThu' table. You can move, or remove it, as needed.
                // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoKhamBenhTheoKhoa' table. You can move, or remove it, as needed.                
                //this.rptBaoCaoKBTheoKhoa.RefreshReport();
                var data2 = BUS_BaoCaoKhamBenhTheoKhoa.Instance.BaoCaoKhamBenhTheoKhoa(dtpNgayDau.Value, dtpNgayCuoi.Value,cboKhoa.SelectedValue.ToString());

                try
                {
                    // Clear previous data sources
                    rptBaoCaoKBTheoKhoa.LocalReport.DataSources.Clear();

                    // Setup new data sources

                    ReportDataSource rds3 = new ReportDataSource("DataSetKhamBenhTheoKhoa", data2);


                    rptBaoCaoKBTheoKhoa.LocalReport.DataSources.Add(rds3);



                    rptBaoCaoKBTheoKhoa.RefreshReport();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Failed to load report: " + ex.Message);
                }
                rptBCKhamBenh.Visible = false;
                rptBaoCaoKBTheoKhoa.Visible = true;
            }
            else
            {
                // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoKhamBenh' table. You can move, or remove it, as needed.
                //this.BaoCaoKhamBenhTableAdapter.Fill(this.QLBVDataSet.BaoCaoKhamBenh, dtpNgayDau.Value, dtpNgayCuoi.Value);
                // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoKhamBenh' table. You can move, or remove it, as needed.
                // TODO: This line of code loads data into the 'QLBVDataSet.BaoCaoKhamBenh' table. You can move, or remove it, as needed.
                //this.BaoCaoKhamBenhTableAdapter.Fill(this.QLBVDataSet.BaoCaoKhamBenh,dtpNgayDau.Value,dtpNgayCuoi.Value);
                //this.rptBCKhamBenh.RefreshReport();
                // Fetching data
                var data3 = BUS_BaoCaoKhamBenh.Instance.BaoCaoKhamBenh(dtpNgayDau.Value,dtpNgayCuoi.Value);

                try
                {
                    // Clear previous data sources
                    rptBCKhamBenh.LocalReport.DataSources.Clear();

                    // Setup new data sources

                    ReportDataSource rds3 = new ReportDataSource("DataSetBCKhamBenh", data3);


                    rptBCKhamBenh.LocalReport.DataSources.Add(rds3);



                    rptBCKhamBenh.RefreshReport();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Failed to load report: " + ex.Message);
                }
                rptBCKhamBenh.Visible = true;
                rptBaoCaoKBTheoKhoa.Visible = false;
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
    }
}

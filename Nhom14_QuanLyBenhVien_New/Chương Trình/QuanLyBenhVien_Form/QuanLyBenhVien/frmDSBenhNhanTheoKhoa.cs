using BUS;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;

namespace QuanLyBenhVien
{
    public partial class frmDSBenhNhanTheoKhoa : Form
    {
        public frmDSBenhNhanTheoKhoa()
        {
            InitializeComponent();
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            BenhNhan_BUS.Instance.layDSBenhNhanTheoKhoa(cboKhoa.SelectedValue.ToString(), dgvDSBN);
            if (rptBN.Visible = false)
            {
                dgvDSBN.Visible = true;
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

        private void frmDSBenhNhanTheoKhoa_Load(object sender, EventArgs e)
        {
           

            //lấy dữ liệu cho cboKhoa
            NhanVien_BUS.Instance.layDSKhoa(cboKhoa);
            cboKhoa.DisplayMember = "TenKhoa";
            cboKhoa.ValueMember = "MaKhoa";
            
        }


        private void btnIn_Click(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLBVDataSet.LayDanhSachBenhNhanTheoKhoa' table. You can move, or remove it, as needed.
            rptBN.Visible = true;
            // TODO: This line of code loads data into the 'QLBVDataSet.LayDanhSachBenhNhanTheoKhoa' table. You can move, or remove it, as needed.
            this.LayDanhSachBenhNhanTheoKhoaTableAdapter.Fill(this.QLBVDataSet.LayDanhSachBenhNhanTheoKhoa,cboKhoa.SelectedValue.ToString());
            this.rptBN.RefreshReport();
            
        }
    }
}

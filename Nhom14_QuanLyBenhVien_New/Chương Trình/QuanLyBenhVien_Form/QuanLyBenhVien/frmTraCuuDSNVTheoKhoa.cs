using BUS;
using System;
using DocumentFormat.OpenXml;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;

namespace QuanLyBenhVien    
{
    public partial class frmTraCuuDSNVTheoKhoa : Form
    {
        public frmTraCuuDSNVTheoKhoa()
        {
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            NhanVien_BUS.Instance.layDSNVTheoKhoa(cboMaKhoa.SelectedValue.ToString(), dgvNhanVien);
            
            if(rptNVTheoKhoa.Visible = false)
            {
                dgvNhanVien.Visible = true;
            }
        }

        private void frmTraCuuDSNVTheoKhoa_Load(object sender, EventArgs e)
        {
            


            //lấy dữ liệu cho cboKhoa
            NhanVien_BUS.Instance.layDSKhoa(cboMaKhoa);
            cboMaKhoa.DisplayMember = "TenKhoa";
            cboMaKhoa.ValueMember = "MaKhoa";
            rptNVTheoKhoa.Visible = false;
            
        }


        private void btnIn_Click(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLBVDataSet.LayDanhSachNhanVienTheoKhoa' table. You can move, or remove it, as needed.
            rptNVTheoKhoa.Visible = true;
            //dgvNhanVien.Visible = false;
            // TODO: This line of code loads data into the 'QLBVDataSet.LayDanhSachNhanVienTheoKhoa' table. You can move, or remove it, as needed.
            this.LayDanhSachNhanVienTheoKhoaTableAdapter.Fill(this.QLBVDataSet.LayDanhSachNhanVienTheoKhoa,cboMaKhoa.SelectedValue.ToString());
            this.rptNVTheoKhoa.RefreshReport();
        }
    }
}

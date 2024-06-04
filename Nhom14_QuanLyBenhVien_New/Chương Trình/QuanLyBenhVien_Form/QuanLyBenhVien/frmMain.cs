using DocumentFormat.OpenXml.Bibliography;
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
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
            customizeDesing();
        }
        private void customizeDesing()
        {
            pnlQuanLy.Visible = false;
            pnlTraCuu.Visible = false;
            pnlBaoCao.Visible = false;

        }

        //ẩn menu con
        private void hideSubMenu()
        {
            if (pnlQuanLy.Visible)
            {
                pnlQuanLy.Visible = false;
            }
            if (pnlTraCuu.Visible)
            {
                pnlTraCuu.Visible = false;
            }
            if (pnlBaoCao.Visible)
            {
                pnlBaoCao.Visible = false;
            }
        }

        //hiển thị menu con
        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
            {
                subMenu.Visible = false;
            }
        }

        //mở form con
        private Form activeForm = null;
        public void openChildForm(Form childForm)
        {
            if(activeForm != null)
            {
                activeForm.Close();
            }
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            panelChild.Controls.Add(childForm);
            panelChild.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();

        }
        private void btnQuanLy_Click(object sender, EventArgs e)
        {
            showSubMenu(pnlQuanLy);
        }

        private void btnTraCuu_Click(object sender, EventArgs e)
        {
            showSubMenu(pnlTraCuu);
        }

        private void btnQLBN_Click(object sender, EventArgs e)
        {
            openChildForm(new frmBenhNhan());
            hideSubMenu();
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
            showSubMenu(pnlBaoCao);

        }

        private void btnQLNV_Click(object sender, EventArgs e)
        {
            openChildForm(new frmNhanVien());
            hideSubMenu();
        }

        private void btnQLKhoa_Click(object sender, EventArgs e)
        {
            openChildForm(new frmKhoa());
            hideSubMenu();
        }

        private void btnKhamBenh_Click(object sender, EventArgs e)
        {
            openChildForm(new frmKhamBenh());
            hideSubMenu();
        }

        private void btnQLDV_Click(object sender, EventArgs e)
        {
            openChildForm(new frmDichVu());
            hideSubMenu();
        }

        private void btnXNCC_Click(object sender, EventArgs e)
        {
            openChildForm(new frmXN_CC());
            hideSubMenu();
        }

        private void btnSoBA_Click(object sender, EventArgs e)
        {
            openChildForm(new frmSoBenhAn());
            hideSubMenu();
        }

        private void btnQLPK_Click(object sender, EventArgs e)
        {
            openChildForm(new frmPhongKham());
            hideSubMenu();
        }

        private void btnQLPB_GB_Click(object sender, EventArgs e)
        {
            openChildForm(new frmPhongBenh_GiuongBenh());
            hideSubMenu();
        }

        private void btnPG_TDDT_Click(object sender, EventArgs e)
        {
            openChildForm(new frmPhanGiuong_TheoDoiDieuTri());
            hideSubMenu();
        }

        private void btnPhauThuat_Click(object sender, EventArgs e)
        {
            openChildForm(new frmLoaiPhauThuat_PhauThuat());
            hideSubMenu();
        }

        private void btnThuoc_Click(object sender, EventArgs e)
        {
            openChildForm(new frmThuoc());
            hideSubMenu();
        }

        private void btnSDDV_Click(object sender, EventArgs e)
        {
            openChildForm(new frmSuDungDichVu());
            hideSubMenu();
        }

        private void btnCV_Click(object sender, EventArgs e)
        {
            openChildForm(new frmChucVu());
            hideSubMenu();
        }

        private void btnPhieuKham_Click(object sender, EventArgs e)
        {
            openChildForm(new frmPhieuKhamBenh());
            hideSubMenu();
        }

        private void btnDSNV_Click(object sender, EventArgs e)
        {
            openChildForm(new frmTraCuuDSNVTheoKhoa());
            hideSubMenu();
        }

        private void btnTTPB_Click(object sender, EventArgs e)
        {
            openChildForm(new frmTraCuuGiuongBenh());
            hideSubMenu();
        }

        private void btnTTDT_Click(object sender, EventArgs e)
        {
            openChildForm(new frmTraCuuDonThuoc(this));
            hideSubMenu();
        }

        private void btnTTSBA_Click(object sender, EventArgs e)
        {
            openChildForm(new frmTraCuuSoBA());
            hideSubMenu();
        }

        private void btnDSBN_Click(object sender, EventArgs e)
        {
            openChildForm(new frmDSBenhNhanTheoKhoa());
            hideSubMenu();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }


        private void btnBCKB_Click(object sender, EventArgs e)
        {
            openChildForm(new frmBaoCaoKhamBenh());
            hideSubMenu();
         
        }

        private void btnChuaBenh_Click(object sender, EventArgs e)
        {
            openChildForm(new frmBaoCaoChuaBenh());
            hideSubMenu();
        }

        private void btnBCDoanhThu_Click(object sender, EventArgs e)
        {
            openChildForm(new frmBaoCaoDoanhThu());
            hideSubMenu();
        }
    }
}

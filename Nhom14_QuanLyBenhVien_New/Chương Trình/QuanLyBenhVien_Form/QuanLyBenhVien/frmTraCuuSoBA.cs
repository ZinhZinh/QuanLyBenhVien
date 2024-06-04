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
    public partial class frmTraCuuSoBA : Form
    {
        public frmTraCuuSoBA()
        {
            InitializeComponent();
        }

        private void frmTraCuuSoBA_Load(object sender, EventArgs e)
        {
            btnIN.Enabled = false;
            rptSoBenhAn.Visible = false;
        }


        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (kq == DialogResult.OK)
            {
                this.Close();
            }
        }
        private void btnIN_Click(object sender, EventArgs e)
        {


        }

        private void txtMaBN_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMaBN.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMaBN.Text = txtMaBN.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMaBN.Text = txtMaBN.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMaBN.SelectionStart = txtMaBN.Text.Length;
        }

        private void txtMaBN_KeyPress(object sender, KeyPressEventArgs e)
        {

            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }
        string maDT;

        private void btnTim_Click_1(object sender, EventArgs e)
        {

        }

        private void btnTim_Click(object sender, EventArgs e)
        {
            if (txtMaBN.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                //tải dữ liệu
                BenhNhan_BUS.Instance.laySoBenhAn(txtMaBN.Text, dgvTraCuuSBA);
                dgvTraCuuSBA.Columns[5].Visible = false;
                dgvTraCuuSBA.Columns[6].Visible = false;
                dgvTraCuuSBA.Columns[9].Visible = false;
                dgvTraCuuSBA.Columns[10].Visible = false;
                dgvTraCuuSBA.Columns[11].Visible = false;

            }
            dgvTraCuuSBA.Visible = true;
            rptSoBenhAn.Visible = false;

        }

        private void btnIN_Click_1(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'QLBVDataSet.LaySoBenhAnCuaBenhNhan' table. You can move, or remove it, as needed.
            this.LaySoBenhAnCuaBenhNhanTableAdapter.Fill(this.QLBVDataSet.LaySoBenhAnCuaBenhNhan, maDT);
            this.rptSoBenhAn.RefreshReport();
            rptSoBenhAn.Visible = true;
            dgvTraCuuSBA.Visible = false;
        }


        private void dgvTraCuuSBA_Click(object sender, EventArgs e)
        {
            btnIN.Enabled = true;
            int dong = dgvTraCuuSBA.CurrentCell.RowIndex;
            maDT = dgvTraCuuSBA.Rows[dong].Cells[0].Value.ToString();
        }

        private void dgvTraCuuSBA_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}

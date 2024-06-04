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
    public partial class frmBenhNhan : Form
    {
        public frmBenhNhan()
        {
            InitializeComponent();
        }

        //tải dữ liệu lên dgvBN
        private void load()
        {
            BenhNhan_BUS.Instance.load(dgvBenhNhan);
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            DialogResult kq = MessageBox.Show("Bạn có chắc chắn muốn thoát?", "Thông báo!", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if(kq == DialogResult.OK)
            {
                this.Close();
            }
        }

        //thêm bệnh nhân
        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMa.Text == "" || txtTen.Text == "" || txtDanToc.Text == "" || txtDC.Text == "" || txtSDT.Text == "" || txtTTLH.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                //kiểm tra ngày sinh
                DateTime nS = dtpNgaySinh.Value;
                if (nS.Date > DateTime.Now.Date)
                {
                    MessageBox.Show("Độ tuổi không phù hợp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                string gioiTinh = "";
                if (radNam.Checked)
                {
                    gioiTinh = "Nam";
                }
                else
                {
                    gioiTinh = "Nữ";
                }

                string kq = BenhNhan_BUS.Instance.them(txtMa.Text.Trim(), txtTen.Text, gioiTinh, Convert.ToDateTime(dtpNgaySinh.Text), txtDanToc.Text, txtNN.Text, txtDC.Text, txtSDT.Text, txtTTLH.Text, txtMaBHYT.Text, Convert.ToDateTime(dtpNgayCap.Text), Convert.ToDateTime(dtpNgayHetHan.Text));
                MessageBox.Show(kq, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                load();
            }
        }

        //Xóa bệnh nhân
        private void btnXoa_Click(object sender, EventArgs e)
        {
            DialogResult tb = MessageBox.Show("Bạn có muốn thực hiện xóa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (tb == DialogResult.Yes)
            {
                string id = txtMa.Text.Trim();
                string kq = BenhNhan_BUS.Instance.xoa(id, btnXoa);
                MessageBox.Show(kq, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                load();
            }            
        }

        //Sửa thông tin bệnh nhân
        private void btnSua_Click(object sender, EventArgs e)
        {
            string gioiTinh = "";
            if (radNam.Checked)
            {
                gioiTinh = "Nam";
            }
            else
            {
                gioiTinh = "Nữ";
            }
            string kq = BenhNhan_BUS.Instance.sua(txtMa.Text.Trim(), txtTen.Text, gioiTinh, dtpNgaySinh.Value, txtDanToc.Text, txtNN.Text, txtDC.Text, txtSDT.Text, txtTTLH.Text, btnSua);
            MessageBox.Show(kq, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            load();
        }

        private void txtMa_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtMa_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMa.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel,MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMa.Text = txtMa.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMa.Text = txtMa.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMa.SelectionStart = txtMa.Text.Length;
        }

        private void txtTen_TextChanged(object sender, EventArgs e)
        {
            // Kiểm tra từng ký tự trong chuỗi
            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtTen.Text)
            {
                // Nếu là ký tự chữ
                if (char.IsLetter(c))
                {
                    filteredText += c;
                }
                else if (c == ' ' && !filteredText.EndsWith(" "))
                {
                    // Nếu là khoảng trắng và chưa có khoảng trắng ở cuối filteredText
                    filteredText += c;
                }
                else
                {
                    hasInvalidChar = true;
                }
            }

            // Kiểm tra xem có ký tự không hợp lệ ở cuối chuỗi không
            if (hasInvalidChar)
            {
                txtTen.Text = filteredText;
                txtTen.SelectionStart = txtTen.Text.Length;
                MessageBox.Show("Không được nhập số, ký tự đặc biệt hoặc có nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }

        private void txtDanToc_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtNN_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái
            if (!char.IsLetter(e.KeyChar) && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar))
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtDC_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != '/' && e.KeyChar != (char)Keys.Back && !char.IsWhiteSpace(e.KeyChar))
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtSDT_TextChanged(object sender, EventArgs e)
        {
            if (txtSDT.Text.Length != 10 && txtSDT.Text.Length > 10)
            {
                MessageBox.Show("Số điện thoại tối đa 10 số!!", "Thông báo");

                // Xóa các ký tự thừa
                txtSDT.Text = txtSDT.Text.Substring(0, 10);
                txtSDT.SelectionStart = txtSDT.Text.Length; // Di chuyển con trỏ đến cuối chuỗi
            }

        }

        private void txtSDT_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập số
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtTTLH_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập số
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        private void txtTTLH_TextChanged(object sender, EventArgs e)
        {
            if (txtTTLH.Text.Length != 10 && txtTTLH.Text.Length > 10)
            {
                MessageBox.Show("Số điện thoại tối đa 10 số!!", "Thông báo");

                // Xóa các ký tự thừa
                txtTTLH.Text = txtTTLH.Text.Substring(0, 10);
                txtTTLH.SelectionStart = txtTTLH.Text.Length; // Di chuyển con trỏ đến cuối chuỗi
            }
        }

        private void txtMaBHYT_TextChanged(object sender, EventArgs e)
        {
            // Giới hạn độ dài của chuỗi
            if (txtMa.Text.Length > 12)
            {
                MessageBox.Show("Chỉ được nhập tối đa 12 ký tự", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

                // Giới hạn độ dài của chuỗi
                txtMa.Text = txtMa.Text.Substring(0, 12);
            }

            // Gán lại giá trị đã lọc cho TextBox
            txtMa.Text = txtMa.Text;

            // Di chuyển con trỏ đến cuối chuỗi
            txtMa.SelectionStart = txtMa.Text.Length;
        }

        private void txtMaBHYT_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Chỉ cho phép nhập chữ cái và số
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != (char)Keys.Back)
            {
                // Hủy việc nhập ký tự
                e.Handled = true;
            }
        }

        //chọn dữ liệu dgvBenhNhan
        private void dgvBenhNhan_Click(object sender, EventArgs e)
        {
            // Kiểm tra nếu có dòng được chọn và dòng đó không phải là dòng trống
            if (dgvBenhNhan.CurrentRow != null && !dgvBenhNhan.Rows[dgvBenhNhan.CurrentRow.Index].IsNewRow)
            {
                btnSua.Enabled = true;
                btnXoa.Enabled = true;
                txtMa.Enabled = false;

                int dong = dgvBenhNhan.CurrentCell.RowIndex;
                txtMa.Text = dgvBenhNhan.Rows[dong].Cells[0].Value.ToString();
                txtTen.Text = dgvBenhNhan.Rows[dong].Cells[1].Value.ToString();
                if (dgvBenhNhan.Rows[dong].Cells[2].Value.ToString() == "Nam")
                {
                    radNam.Checked = true;
                }
                else
                {
                    radNu.Checked = true;
                }
                dtpNgaySinh.Text = dgvBenhNhan.Rows[dong].Cells[3].Value.ToString();
                txtDanToc.Text = dgvBenhNhan.Rows[dong].Cells[4].Value.ToString();
                txtNN.Text = dgvBenhNhan.Rows[dong].Cells[5].Value.ToString();
                txtDC.Text = dgvBenhNhan.Rows[dong].Cells[6].Value.ToString();
                txtSDT.Text = dgvBenhNhan.Rows[dong].Cells[7].Value.ToString();
                txtTTLH.Text = dgvBenhNhan.Rows[dong].Cells[8].Value.ToString();

                //lấy thông tin thẻ bhyt nếu có
                string[] theBHYT = BenhNhan_BUS.Instance.layTheBHYT(txtMa.Text);
                if (theBHYT != null)
                {
                    txtMaBHYT.Text = theBHYT[0];
                    dtpNgayCap.Text = theBHYT[1];
                    dtpNgayHetHan.Text = theBHYT[2];
                }
                else
                {
                    txtMaBHYT.Text = "";
                    dtpNgayCap.Text = DateTime.Now.ToString();
                    dtpNgayHetHan.Text = DateTime.Now.ToString();
                }

            }
        }

        private void frmBenhNhan_Load(object sender, EventArgs e)
        {
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            load();
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {
            txtMa.Clear();
            txtTen.Clear();
            txtDanToc.Clear();
            txtNN.Clear();
            txtDC.Clear();
            txtSDT.Clear();
            txtTTLH.Clear();
            txtMaBHYT.Clear();
            btnXoa.Enabled = false;
            btnSua.Enabled = false;
            txtMa.Enabled = true;
        }

        private void btnPhieuKhamBenh_Click(object sender, EventArgs e)
        {
            //Lấy mã bệnh nhân
            string maBN = txtMa.Text;
            if (string.IsNullOrEmpty(maBN))
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin.", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
             }
     
            // Tạo tham chiếu đến frmMain
            frmMain mainForm = (frmMain)this.ParentForm;
            // Gọi phương thức mở frmKhamBenh từ frmMain
            mainForm.openChildForm(new frmPhieuKhamBenh(maBN));
        }

        private void txtNN_TextChanged(object sender, EventArgs e)
        {
            if (txtNN.Text.Length > 50)
            {
                // Cắt bớt ký tự thừa
                txtNN.Text = txtNN.Text.Substring(0, 50);

                // Đặt con trỏ chuột ở cuối văn bản
                txtNN.SelectionStart = txtNN.Text.Length;

                MessageBox.Show("Nghề nghiệp gồm 50 ký tự", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            string filteredText = "";
            bool hasInvalidChar = false;

            foreach (char c in txtNN.Text)
            {
                // Nếu là ký tự chữ
                if (char.IsLetter(c))
                {
                    filteredText += c;
                }
                else if (c == ' ' && !filteredText.EndsWith(" "))
                {
                    // Nếu là khoảng trắng và chưa có khoảng trắng ở cuối filteredText
                    filteredText += c;
                }
                else
                {
                    hasInvalidChar = true;
                }
            }

            // Kiểm tra xem có ký tự không hợp lệ ở cuối chuỗi không
            if (hasInvalidChar)
            {
                txtNN.Text = filteredText;
                txtNN.SelectionStart = txtNN.Text.Length;
                MessageBox.Show("Không được nhiều hơn một khoảng trắng giữa các từ!!", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            }
        }
    }
}

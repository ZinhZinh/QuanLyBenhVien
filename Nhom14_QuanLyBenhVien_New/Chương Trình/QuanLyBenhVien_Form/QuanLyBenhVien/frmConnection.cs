using BUS;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBenhVien
{
    public partial class frmConnection : Form
    {
        public frmConnection()
        {
            InitializeComponent();
        }
        Connection_BUS busData = new Connection_BUS();
        private void frmConnection_Load(object sender, EventArgs e)
        {

        }

        private void btnKetnoi_Click(object sender, EventArgs e)
        {
            string sql = "Data Source=" + txtSever.Text + ";Initial Catalog=" + cboDatabase.Text + ";Integrated Security=True;Encrypt=True;TrustServerCertificate=True";

            if (cboDatabase.Text != "" && txtSever.Text != "")
            {


                try
                {
                    var config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                    var connectionStringsSection = (ConnectionStringsSection)config.GetSection("connectionStrings");
                    connectionStringsSection.ConnectionStrings["QuanLyBenhVien.Properties.Settings.QLBVConnectionString"].ConnectionString = sql;
                    config.Save();
                    ConfigurationManager.RefreshSection("connectionStrings");
                    using (SqlConnection conn = new SqlConnection(sql))
                    {
                        try
                        {
                            conn.Open();


                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show("Có lỗi xảy ra khi cố gắng mở kết nối: " + ex.Message);
                        }
                    }



                    busData.setSeverName(txtSever.Text);
                    busData.setdataName(cboDatabase.Text);

                    if (busData.ktDuongDan(txtSever.Text, cboDatabase.Text))
                    {
                        busData.setDataBase();
                        frmMain main = new frmMain();
                        MessageBox.Show("Kết nối thành công!!", "Thoát", MessageBoxButtons.OK);
                        this.Hide();
                        main.ShowDialog();
                    }
                    else
                    {
                        MessageBox.Show("Tên sever không đúng hoặc database không tồn tại!");
                    }

                }
                catch (Exception ex)
                {

                    MessageBox.Show("Xảy ra lỗi: " + ex.Message + "Lỗi kết nối database!!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            DialogResult thoat;
            thoat = MessageBox.Show("bạn chắc chắn muốn thoát ứng dụng chứ", "THOÁT", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (thoat == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void cboDatabase_MouseClick(object sender, MouseEventArgs e)
        {
            try
            {
                cboDatabase.Items.Clear();

                string conn = "server=" + txtSever.Text + ";Integrated Security=True;";


                SqlConnection con = new SqlConnection(conn);
                con.Open();
                string qr = "SELECT NAME FROM SYS.DATABASES";
                SqlCommand cmd = new SqlCommand(qr, con);
                IDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    cboDatabase.Items.Add(dr[0].ToString());
                }
            }
            catch (Exception)
            {

                MessageBox.Show("Vui long nhap ten server", "LOI");
            }
        }
    }
}

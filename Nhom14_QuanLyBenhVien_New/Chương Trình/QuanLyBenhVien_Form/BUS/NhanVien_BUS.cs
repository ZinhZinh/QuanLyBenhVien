using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class NhanVien_BUS
    {
        private static NhanVien_BUS instance;
        private NhanVien_DAL dal = new NhanVien_DAL();

        public static NhanVien_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new NhanVien_BUS();
                }
                return instance;
            }
        }

        private NhanVien_BUS() { }

        //tải dữ liệu lên dgv
        public void load(DataGridView data)
        {
            data.DataSource = dal.load();
        }

        //tải danh sách chức vụ lên cboCV
        public void layDSCV(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSChucVu();
        }

        //tải dữ liêu lên cboKhoa
        public void layDSKhoa(ComboBox cbo)
        {
            cbo.DataSource = dal.load();
        }

        //Lấy danh sách chuyên ngành theo khoa
        public void layDSCN(ComboBox cbo ,string maK)
        {
            cbo.DataSource = dal.layDSCN(maK);
        }

        //thêm bệnh nhân
        public string them(string ma, string ten, string gioiTinh, DateTime ns, string maK, string maCN, string maCV)
        {
            if (dal.them(ma, ten, gioiTinh, ns, maK, maCN, maCV))
            {  
                return "Thêm thành công";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        public string xoa(string id, Button btn)
        {
            if (dal.xoa(id))
            {
                btn.Enabled = false;
                return "Xóa thành công";
            }
            else
            {
                return "Xóa không thành công";
            }
        }

        public string sua(string ma, string ten, string gioiTinh, DateTime ns, string maK, string maCN, string maCV, Button btn)
        {
            if (dal.sua(ma, ten, gioiTinh, ns, maK, maCN, maCV))
            {
                btn.Enabled = false;
                return "Sủa thành công";
            }
            else
            {
                return "Sửa không thành công";
            }
        }

        //Danh sách nhân viên theo khoa
        public void layDSNVTheoKhoa(string maKhoa, DataGridView data)
        {
            data.DataSource = dal.layDSNVTheoKhoa(maKhoa);
        }

        //tìm kiếm
        public void timKiem(DataGridView data, string id)
        {
            if (dal.kiemTraTonTai(id))
            {
                data.DataSource = dal.tim(id);
            }
            else
            {
                MessageBox.Show("Không tìm thấy thông tin nhân viên này!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }

    }
}

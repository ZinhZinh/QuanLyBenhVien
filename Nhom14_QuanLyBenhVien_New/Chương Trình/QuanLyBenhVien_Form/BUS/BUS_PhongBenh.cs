using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_PhongBenh
    {
        public static BUS_PhongBenh instance;
        private DAL_PhongBenh dal = new DAL_PhongBenh();

        public static BUS_PhongBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_PhongBenh();
                }
                return instance;
            }
        }

        //Hiển thị bảng phòng bệnh
        public void HienThiPhongBenh(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangPhongBenh();
        }

        //Hiển thị combobox Khoa
        public void HienThiComboboxKhoa(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxKhoa();
            cbo.ValueMember = "MaKhoa";
            cbo.DisplayMember = "TenKhoa";

        }

        //Lấy gợi ý danh sách loại phòng 
        public List<string> LayDSLoaiPhong()
        {
            try
            {
                //Gọi DAL_PhongBenh để lấy danh sách loại phòng
                return dal.LayDSLoaiPhong();
            }
            catch (Exception ex)
            {
                //Trường hợp lỗi
                throw new Exception("Lỗi lấy danh sách loại phòng" + ex);
            }
        }

        //Thêm phòng bệnh
        public void ThemPhongBenh(string maPhongBenh, string tenPhongBenh, string loaiPhong, string maKhoa)
        {
            if (dal.ThemPhongBenh(maPhongBenh, tenPhongBenh, loaiPhong, maKhoa) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa phòng bệnh
        public void XoaPhongBenh(string maPhongBenh)
        {
            if (dal.XoaPhongBenh(maPhongBenh) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa phòng bệnh
        public void SuaPhongBenh(string maPhongBenh, string tenPhongBenh, string loaiPhong, string maKhoa)
        {
            dal.SuaPhongBenh(maPhongBenh, tenPhongBenh, loaiPhong, maKhoa);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

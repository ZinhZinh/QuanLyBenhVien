using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_PhongKham
    {
        public static BUS_PhongKham instance;
        private DAL_PhongKham dal = new DAL_PhongKham();

        public static BUS_PhongKham Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_PhongKham();
                }
                return instance;
            }
        }

        //Hiển thị bảng phòng khám
        public void HienThiPhongKham(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangPhongKham();
        }

        //Lấy gợi ý danh sách loại phòng khám
        public List<string> LayDSLoaiPhongKham()
        {
            try
            {
                //Gọi DAL_PhongKham để lấy danh sách loại phòng
                return dal.LayDSLoaiPhongKham();
            }
            catch (Exception ex)
            {
                //Trường hợp lỗi
                throw new Exception("Lỗi lấy danh sách loại phòng khám" + ex);
            }
        }

        //Hiển thị combobox Khoa
        public void HienThiComboboxKhoa(ComboBox cbo)
        {
            cbo.DataSource = dal.HienThiComboboxKhoa();
            cbo.ValueMember = "MaKhoa";
            cbo.DisplayMember = "TenKhoa";
        }

        //Thêm phòng khám
        public void ThemPhongKham(string maPhongKham, string tenPhongKham, string maKhoa, string loaiPhong)
        {
            if (dal.ThemPhongKham(maPhongKham, tenPhongKham, maKhoa, loaiPhong) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa phòng khám
        public void XoaPhongKham(string maPhongKham)
        {
            if (dal.XoaPhongKham(maPhongKham) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa phòng khám
        public void SuaPhongKham(string maPhongKham, string tenPhongKham, string maKhoa, string loaiPhong)
        {
            dal.SuaPhongKham(maPhongKham, tenPhongKham, maKhoa, loaiPhong);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

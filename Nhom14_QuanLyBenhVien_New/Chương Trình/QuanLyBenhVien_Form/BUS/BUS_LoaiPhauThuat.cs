using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BUS_LoaiPhauThuat
    {
        public static BUS_LoaiPhauThuat instance;
        private DAL_LoaiPhauThuat dal = new DAL_LoaiPhauThuat();


        public static BUS_LoaiPhauThuat Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_LoaiPhauThuat();
                }
                return instance;
            }
        }

        //Hiển thị loại phẫu thuật lên datagridview
        public void HienThiLoaiPT(DataGridView dgv)
        {
            dgv.DataSource = dal.HienThiBangLoaiPT();
        }

        //Lấy danh sách gợi ý về Mức Độ PT
        public List<string> LayDSMucDo()
        {
            try
            {
                //Gọi DAL_LoaiPhauThuat để lấy danh sách mức độ phẫu thuật
                return dal.LayDSMucDoPT();
            }
            catch (Exception ex)
            {
                //Trường hợp lỗi
                throw new Exception("Lỗi lấy danh sách mức độ phẫu thuật" + ex);
            }
        }

        //Thêm loại PT
        public void ThemLoaiPT(string maPT, string tenPT, string mucDo)
        {
            if (dal.ThemLoaiPT(maPT, tenPT, mucDo) == true)
            {
                MessageBox.Show("Thêm thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                MessageBox.Show("Thêm không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Xóa loại PT
        public void XoaLoaiPT(string maPT)
        {
            if (dal.XoaLoaiPT(maPT) == true)
            {
                MessageBox.Show("Xóa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Xóa không thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        //Sửa loại PT
        public void SuaLoaiPT(string maPT, string tenPT, string mucDo)
        {
            dal.SuaLoaiPT(maPT, tenPT, mucDo);
            MessageBox.Show("Sửa thành công", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

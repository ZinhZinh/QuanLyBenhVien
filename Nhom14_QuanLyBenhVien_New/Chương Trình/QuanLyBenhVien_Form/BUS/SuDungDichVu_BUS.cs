using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class SuDungDichVu_BUS
    {
        private static SuDungDichVu_BUS instance;
        private SuDungDichVu_DAL dal = new SuDungDichVu_DAL();
        private DichVu_DAL dv = new DichVu_DAL();

        public static SuDungDichVu_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new SuDungDichVu_BUS();
                }
                return instance;
            }
        }

        private SuDungDichVu_BUS() { }

        //tải dữ liệu lên dgv
        public void load(DataGridView data, string maBN, string maPKB)
        {
            data.DataSource = dal.load(maBN, maPKB);
        }



        //tải dữ liệu lên cboDV
        public void layDSDV(ComboBox cbo)
        {
            cbo.DataSource = dv.load();
        }

        //tải dữ liệu lên cboPKB
        public void layDSPKB(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSPKB();
        }

        //tải dữ liệu lên cboBN
        public void layDSBN(ComboBox cbo, string maPhieu)
        {
            cbo.DataSource = dal.layDSBN(maPhieu);
        }

        //thêm dịch vụ
        public string them(string maBN, string maDV, string maPhieu, string maNYC)
        {
            if (dal.them(maBN, maDV, maPhieu, maNYC))
            {
                return "Thêm thành công";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        //Xóa dịch vụ
        public string xoa(string maBN, string maDV, Button btn, string maPhieu)
        {
            if (dal.xoa(maBN, maDV, maPhieu))
            {
                btn.Enabled = false;
                return "Xóa thành công";
            }
            else
            {
                return "Xóa không thành công";
            }
        }

        //lấy danh sách bệnh nhân
        public void layDSBN(DataGridView data, string maPhieu)
        {
            data.DataSource = dal.layDSBN(maPhieu);
        }

        //lấy tên bệnh nhân
        public void layTenBenhNhan(TextBox txt, string maBN)
        {
            txt.Text = dal.hienThiTenBenhNhan(maBN);
        }


        //Danh sách giường trống
        public void layDSGiuongTrong(string maPB, DataGridView data)
        {
            data.DataSource = dal.layDSGiuongConTrong(maPB);
        }

        //Lấy danh sách phòng bệnh
        public void layDSPhongBenh(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSPhongBenh();
        }
    }
}

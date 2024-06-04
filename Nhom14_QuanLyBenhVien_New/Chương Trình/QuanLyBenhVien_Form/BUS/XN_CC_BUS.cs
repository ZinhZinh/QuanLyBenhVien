using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class XN_CC_BUS
    {
        private static XN_CC_BUS instance;
        private XN_CC_DAL dal = new XN_CC_DAL();
        private ThucHienXNCC_DAL th = new ThucHienXNCC_DAL();

        public static XN_CC_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new XN_CC_BUS();
                }
                return instance;
            }
        }

        private XN_CC_BUS() { }

        //thêm
        public string them(string maP, string maDV, DateTime ngayTH, string kq, string maBN, string maNV, string maPk, string maNYC)
        {
            if (dal.them(maP, maDV, ngayTH, kq, maBN, maNYC))
            {
                th.them(maNV, maP, maPk);
                return "Thêm thành công";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        //Xóa
        public string xoa(string maP)
        {
            if (th.xoa( maP))
            {
                if (dal.xoa(maP))
                {
                    return "Xóa thành công";
                }
                else
                {
                    return "Xóa không thành công";
                }
            }
            else
            {
                return "Xóa không thành công";
            }
        }

        //Sửa thông tin
        public string sua(string maP, string loai, DateTime ngayTH, string kq)
        {
            if (dal.sua(maP, loai, ngayTH, kq))
            {

                return "Sửa thành công";
            }
            else
            {
                return "Sửa không thành công";
            }
        }

        //lấy danh sách bệnh nhân
        public void layDSBN(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSBN();
        }

        //lấy danh sách bệnh nhân
        public void layDSDV(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSDV();
        }

        //lấy danh sách phòng chức năng
        public void layDSPCN(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSPCN();
        }

        //lấy danh sách nhân viên
        public void layDSNV(ComboBox cbo, string maPK)
        {
            cbo.DataSource = dal.layDSNV(maPK);
        }

        //Lấy dữ liệu cho dgv
        public void hienThiDuLieuXNCC(DataGridView data, string maBN)
        {
            data.DataSource = dal.hienThiDuLieuXNCC(maBN);
        }

        //lấy tên bệnh nhân
        public void layTenBenhNhan(TextBox txt, string maBN)
        {
            txt.Text = dal.hienThiTenBN(maBN);
        }

        //lấy tên nhân viên
        public void layTenNVYC(TextBox txt, string maNV)
        {
            txt.Text = dal.hienThiTenNVYC(maNV);
        }

        //lấy tên dịch vụ
        public void layTenDV(TextBox txt, string maDV)
        {
            txt.Text = dal.hienThiTenDV(maDV);
        }
    }
}

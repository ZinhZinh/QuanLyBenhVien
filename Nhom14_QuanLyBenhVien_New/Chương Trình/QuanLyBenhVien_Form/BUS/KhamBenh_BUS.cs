using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class KhamBenh_BUS
    {
        private static KhamBenh_BUS instance;
        private KhamBenh_DAL dal = new KhamBenh_DAL();
        private Khoa_DAL khoa = new Khoa_DAL();

        public static KhamBenh_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new KhamBenh_BUS();
                }
                return instance;
            }
        }

        private KhamBenh_BUS() { }

        //Lấy danh sách bệnh nhân
        public void LayDSBN(ComboBox cbo, string maPKB)
        {
            cbo.DataSource = dal.layDSBN(maPKB);
        }

        //Lấy danh sách phiếu kb

        public void LayPKB(ComboBox cbo)
        {
            cbo.DataSource = dal.layDSPKB();
        }

        //Lấy danh sách khoa
        public void layDSKhoa(ComboBox cbo)
        {
            cbo.DataSource = khoa.load();
        }

        //Lấy danh sách phòng khám
        public void layDSPK(ComboBox cbo, string maK)
        {
            cbo.DataSource = dal.layDSPK(maK);
        }

        //Lấy danh sách nhân viên theo khoa
        public void layDSNV(ComboBox cbo, string maK)
        {
            cbo.DataSource = dal.layDSNV(maK);
        }

        //Thêm lần khám mới
        public bool them(string maBN, string maPK, string maNV, string maPhieuKB)
        {
            if(dal.them(maBN, maPK, maNV,maPhieuKB))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}

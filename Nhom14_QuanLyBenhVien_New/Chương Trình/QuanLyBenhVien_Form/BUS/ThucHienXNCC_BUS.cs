using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class ThucHienXNCC_BUS
    {
        private static ThucHienXNCC_BUS instance;
        private ThucHienXNCC_DAL dal = new ThucHienXNCC_DAL(); 

        public static ThucHienXNCC_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ThucHienXNCC_BUS();
                }
                return instance;
            }
        }
        private ThucHienXNCC_BUS() { }


        //thêm 
        public bool them(string maNV, string maP, string maPK)
        {
            return dal.them(maNV, maP, maPK);
        }

        //xóa
        public bool xoa(string maP)
        {
            return dal.xoa(maP);
        }
    }
}

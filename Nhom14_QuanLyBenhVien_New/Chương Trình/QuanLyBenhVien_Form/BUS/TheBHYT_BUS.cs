using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class TheBHYT_BUS
    {
        private static TheBHYT_BUS instance;
        private TheBHYT_DAL dal = new TheBHYT_DAL();

        public static TheBHYT_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new TheBHYT_BUS();
                }
                return instance;
            }
        }

        private TheBHYT_BUS() { }


        //thêm BHYT
        public bool them(string maBHYT, string maBN, DateTime ngayCap, DateTime ngayHH)
        {
            if (dal.them( maBHYT, maBN, ngayCap, ngayHH))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Xóa BHYT
        public bool xoa(string id)
        {
            if (dal.xoa(id))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Sửa BHYT
        public bool sua(string maBHYT, string maBN, DateTime ngayCap, DateTime ngayHH)
        {
            if (dal.sua(maBHYT, maBN, ngayCap, ngayHH))
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

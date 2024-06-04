using DAL;
using ET;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class BUS_BaoCaoKhamBenh
    {
        private static BUS_BaoCaoKhamBenh instance;
        private DAL_BaoCaoKhamBenh dal_bc = new DAL_BaoCaoKhamBenh();

        public static BUS_BaoCaoKhamBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_BaoCaoKhamBenh();
                }
                return instance;
            }
        }
        public List<ET_BaoCaoKhamBenh> BaoCaoKhamBenh(DateTime ngayDau, DateTime ngayCuoi)
        {
            try
            {
                var results = dal_bc.BaoCaoKhamBenh(ngayDau,ngayCuoi);
                return results ?? new List<ET_BaoCaoKhamBenh>(); // Trả về danh sách rỗng nếu kết quả là null
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught: " + ex.Message);
                Debugger.Break();  // This will stop the debugger here if it's running.
                return new List<ET_BaoCaoKhamBenh>(); // Trả về danh sách rỗng khi có lỗi
            }
        }
    }
}

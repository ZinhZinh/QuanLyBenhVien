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
    public class BUS_BaoCaoKhamBenhTheoKhoa
    {
        private static BUS_BaoCaoKhamBenhTheoKhoa instance;
        private DAL_BaoCaoKhamBenhTheoKhoa dal = new DAL_BaoCaoKhamBenhTheoKhoa();

        public static BUS_BaoCaoKhamBenhTheoKhoa Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BUS_BaoCaoKhamBenhTheoKhoa();
                }
                return instance;
            }
        }
        public List<ET_BaoCaoKhamBenhTheoKhoa> BaoCaoKhamBenhTheoKhoa(DateTime ngayDau, DateTime ngayCuoi, string maKhoa)
        {
            try
            {
                var results = dal.BaoCaoKhamBenhTheoKhoa(ngayDau, ngayCuoi, maKhoa);
                return results ?? new List<ET_BaoCaoKhamBenhTheoKhoa>(); // Trả về danh sách rỗng nếu kết quả là null
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught: " + ex.Message);
                Debugger.Break();  // This will stop the debugger here if it's running.
                return new List<ET_BaoCaoKhamBenhTheoKhoa>(); // Trả về danh sách rỗng khi có lỗi
            }
        }
    }
}

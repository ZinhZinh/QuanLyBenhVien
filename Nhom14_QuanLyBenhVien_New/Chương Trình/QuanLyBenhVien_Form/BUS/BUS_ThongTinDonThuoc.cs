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
    public class BUS_ThongTinDonThuoc
    {
        private static BUS_ThongTinDonThuoc instance;
        private DAL_ThongTinDonThuoc dal = new DAL_ThongTinDonThuoc();

        public static BUS_ThongTinDonThuoc Instance 
        {
            get
            {
                if(instance == null)
                {
                    instance = new BUS_ThongTinDonThuoc();
                }
                return instance;
            }
        }
        public List<ET_ThongTinDonThuoc> LayThongTinDonThuoc(string maDT)
        {
            if (string.IsNullOrEmpty(maDT))
            {
                throw new ArgumentException("Mã đơn thuốc không được để trống.");
            }

            try
            {
                var results = dal.LayThongTinDonThuoc(maDT);
                return results ?? new List<ET_ThongTinDonThuoc>(); // Trả về danh sách rỗng nếu kết quả là null
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught: " + ex.Message);
                Debugger.Break();  // This will stop the debugger here if it's running.
                return new List<ET_ThongTinDonThuoc>(); // Trả về danh sách rỗng khi có lỗi
            }
        }
    }
}

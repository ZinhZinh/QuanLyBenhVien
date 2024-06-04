using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_BaoCaoKhamBenh
    {
        private static DAL_BaoCaoKhamBenh instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_BaoCaoKhamBenh Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_BaoCaoKhamBenh();
                }
                return instance;
            }
        }

        public List<ET_BaoCaoKhamBenh> BaoCaoKhamBenh(DateTime ngayDau, DateTime ngayCuoi)
        {
            // Thực thi stored proceduce có tên 'BaoCaoKhamBenh', truyền vào ngaydau va ngaycuoi.
            try
            {
                var results = db.BaoCaoKhamBenh(ngayDau,ngayCuoi).ToList();
                // Ép kiểu dữ liệu thành một danh sách cụ thể của các đối tượng ET_BaoCaoKhamBenh
                return results.Select(r => new ET_BaoCaoKhamBenh(
                   r.MaBN,
                   r.HoTenBN,
                   r.GioiTinh,
                   r.NgaySinh ?? DateTime.Now,
                   r.NgheNghiep,
                   r.DiaChi,
                   r.SoDT,
                   r.SoDTNN,
                   r.TenPhongKham,
                   r.ChanDoan,
                   r.TenKhoa)).ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return new List<ET_BaoCaoKhamBenh>();
            }
        }
    }
}

using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_BaoCaoKhamBenhTheoKhoa
    {
        private static DAL_BaoCaoKhamBenhTheoKhoa instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);


        public static DAL_BaoCaoKhamBenhTheoKhoa Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_BaoCaoKhamBenhTheoKhoa();
                }
                return instance;
            }
        }

        public List<ET_BaoCaoKhamBenhTheoKhoa> BaoCaoKhamBenhTheoKhoa(DateTime ngayDau, DateTime ngayCuoi, string maKhoa)
        {
            // Thực thi stored proceduce có tên 'BaoCaoKhamBenh', truyền vào ngaydau va ngaycuoi.
            try
            {
                var results = db.BaoCaoKhamBenhTheoKhoa(ngayDau, ngayCuoi, maKhoa).ToList();
                // Ép kiểu dữ liệu thành một danh sách cụ thể của các đối tượng ET_BaoCaoKhamBenhTheoKhoa
                return results.Select(r => new ET_BaoCaoKhamBenhTheoKhoa(
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
                return new List<ET_BaoCaoKhamBenhTheoKhoa>();
            }
        }
    }
}

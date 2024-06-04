using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_ThongTinDonThuoc
    {
        private static DAL_ThongTinDonThuoc instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static DAL_ThongTinDonThuoc Instance
        {
            get
            {
                if(instance == null)
                {
                    instance = new DAL_ThongTinDonThuoc();
                }
                return instance;
            }
        }

        public List<ET_ThongTinDonThuoc> LayThongTinDonThuoc(string maDT)
        {
            // Thực thi stored proceduce có tên 'LayTinhTrangSKCuaBenhNhan', truyền vào mã bệnh và năm.
            try
            {
                var results = db.ThongTinDonThuoc(maDT).ToList();
                if (results == null || !results.Any())
                {
                    Console.WriteLine("No data returned for maPKB: " + maDT);
                    return new List<ET_ThongTinDonThuoc>();
                }
                // Ép kiểu dữ liệu thành một danh sách cụ thể của các đối tượng ET__LayTinhTrangSucKhoe
                return results.Select(r => new ET_ThongTinDonThuoc(
                   r.HoTenBN,
                   r.NgaySinh ?? DateTime.Now,
                   r.DiaChi,
                   r.GioiTinh,
                   r.HoTenNV,
                   r.MaDonThuoc,
                   r.NgayGioKeDon ?? DateTime.Now,
                   r.ChanDoan,
                   (float)r.TongTienTruocGiam,
                    (float)r.TongTienSauGiam,
                   r.TenThuoc,
                    (int)r.SoLuong,
                   r.CachDung,
                   r.MaBHYT)).ToList();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return new List<ET_ThongTinDonThuoc>();
            }
        }
    }
}

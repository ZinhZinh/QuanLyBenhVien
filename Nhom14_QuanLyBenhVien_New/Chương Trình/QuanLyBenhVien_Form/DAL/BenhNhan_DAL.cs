using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class BenhNhan_DAL
    {
        private static BenhNhan_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static BenhNhan_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BenhNhan_DAL();
                }
                return instance;
            }
        }

        //tải dữ liệu lên dgvBN
        public IQueryable load()
        {
            IQueryable benhNhan = (from bn in db.BenhNhans
                                   orderby bn.MaBN descending
                                   select bn).Take(100);
            return benhNhan;
        }

        //Lấy thẻ bão hiểm ý tế của bệnh nhân
        public TheBHYT layTheBHYT(string maBN)
        {
            return db.TheBHYTs.FirstOrDefault(t => t.MaBN == maBN);
        }

        //thêm bệnh nhân
        public bool them(string ma, string ten, string gioiTinh, DateTime ns, string danToc, string nghe, string diaChi, string sdt, string dtNN)
        {
            //ktra trung ma
            if (db.BenhNhans.Any(e => e.MaBN == ma))
            {
                return false;
            }

            try
            {
                BenhNhan bn = new BenhNhan
                {
                    MaBN = ma,
                    HoTenBN = ten,
                    GioiTinh = gioiTinh,
                    NgaySinh = ns,
                    DanToc = danToc,
                    NgheNghiep = nghe,
                    DiaChi = diaChi,
                    SoDT = sdt,
                    SoDTNN = dtNN
                };

                db.BenhNhans.InsertOnSubmit(bn);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
                return false;
            }
        }
        
        //xóa bệnh nhân
        public bool xoa(string id)
        {
            BenhNhan bn = db.BenhNhans.FirstOrDefault(e => e.MaBN == id);

            if (bn != null)
            {
                try
                {
                    db.BenhNhans.DeleteOnSubmit(bn);
                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi " + ex.Message);
                }
            }
            return false;
        }

        //sửa thông tin bệnh nhân
        public bool sua(string ma, string ten, string gioiTinh, DateTime ns, string danToc, string nghe, string diaChi, string sdt, string dtNN)
        {
            BenhNhan sua = db.BenhNhans.Single(e => e.MaBN == ma);
            if (sua != null)
            {
                try
                {
                    sua.HoTenBN = ten;
                    sua.GioiTinh = gioiTinh;
                    sua.NgaySinh = ns;
                    sua.DanToc = danToc;
                    sua.NgheNghiep = nghe;
                    sua.DiaChi = diaChi;
                    sua.SoDT = sdt;
                    sua.SoDTNN = dtNN;

                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi " + ex.Message);
                    return false;
                }

            }
            return false;
        }

        //ktra trùng mã có tồn tại ko
        public bool kiemTraTonTai(string maBN)
        {
            //ktra trung ma
            if (db.BenhNhans.Any(e => e.MaBN == maBN))
            {
                return true;
            }
            return false;
        }

        //Lấy danh sách bệnh nhân theo khoa
        public IQueryable layDSBenhNhanTheoKhoa(string maK)
        {
            IQueryable benhNhan = (from bn in db.BenhNhans
                                  join kb in db.KhamBenhs
                                  on bn.MaBN equals kb.MaBN
                                  join pk in db.PhongKhams
                                  on kb.MaPhongKham equals pk.MaPhongKham
                                  where pk.MaKhoa == maK
                                  select new { bn.MaBN, bn.HoTenBN, bn.GioiTinh, bn.NgaySinh, bn.NgheNghiep, bn.DiaChi, bn.SoDT, bn.SoDTNN }).Distinct();
            return benhNhan;
        }

        //lấy thông tin sổ bệnh án theo mã bn
        public IQueryable laySoBenhAn(string maBN)
        {
            IQueryable soBA = from so in db.SoBenhAns
                              where so.MaBN == maBN
                              select so;
            return soBA;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DAL
{
    public class Thuoc_DAL
    {
        private static Thuoc_DAL instance;
        QLBVDataContext db = new QLBVDataContext(Connection_DAL.ConnectionString);

        public static Thuoc_DAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Thuoc_DAL();
                }
                return instance;
            }
        }


        //Tải sản phẩm lên dgv
        public IQueryable load()
        {
            IQueryable thuoc = db.Thuocs.Select(t => t);
            return thuoc;
        }


        //Thêm Thuốc mới
        public bool them(string ma, string ten, string dvt, string xuatXu, float gia)
        {
            if (db.Thuocs.Any(e => e.MaThuoc == ma))
            {
                return false;
            }
            try
            {
                Thuoc sp = new Thuoc
                {
                    MaThuoc = ma,
                    TenThuoc = ten,
                    DonViTinh = dvt,
                    XuatXu = xuatXu,
                    DonGiaThuoc = gia
                };
                db.Thuocs.InsertOnSubmit(sp);
                db.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi " + ex.Message);
            }

            return false;
        }

        //Xóa thuốc
        public bool xoa(string id)
        {
            Thuoc thuoc = db.Thuocs.FirstOrDefault(e => e.MaThuoc == id);
            if (thuoc != null)
            {
                try
                {
                    db.Thuocs.DeleteOnSubmit(thuoc);
                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {

                    MessageBox.Show("Lỗi " + ex.Message); ;
                }
            }
            return false;

        }


        //sua
        public bool sua(string ma, string ten, string dvt, string xuatXu, float gia)
        {

            Thuoc sua = db.Thuocs.Single(e => e.MaThuoc == ma);
            if (sua != null)
            {
                try
                {
                    sua.TenThuoc = ten;
                    sua.DonViTinh = dvt;
                    sua.XuatXu = xuatXu;
                    sua.DonGiaThuoc = gia;

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

        //Kiểm tra thuốc có tồn tại không
        public bool kiemTraTonTai(string maT)
        {
            //ktra trung ma
            if (db.Thuocs.Any(e => e.MaThuoc == maT))
            {
                return true;
            }
            return false;
        }

        //tìm kiếm
        public IQueryable tim(string ma)
        {
            IQueryable thuoc = from e in db.Thuocs
                                 where e.MaThuoc == ma
                                 select new { e.MaThuoc, e.TenThuoc, e.DonViTinh, e.XuatXu, e.DonGiaThuoc };
            return thuoc;
        }


        //Lấy dữ liệu lên listbox
        public List<Thuoc> layDSThuocChoListBox(string keyword)
        {
            return db.Thuocs.Where(p => p.TenThuoc.Contains(keyword)).ToList();
        }

        //Lấy thuốc theo tên
        public Thuoc layThuocTheoTen(string tenThuoc)
        {
            return db.Thuocs.FirstOrDefault(t => t.TenThuoc == tenThuoc);
        }

    }
}

using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BUS
{
    public class BenhNhan_BUS
    {
        private static BenhNhan_BUS instance;
        private BenhNhan_DAL dal = new BenhNhan_DAL();
        private TheBHYT_DAL theBHYT_DAL= new TheBHYT_DAL();
        public static BenhNhan_BUS Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BenhNhan_BUS();
                }
                return instance;
            }
        }

        private BenhNhan_BUS() { }

        //tải dữ liệu lên dgvBN
        public void load(DataGridView data)
        {
            data.DataSource = dal.load();
        }
        
        //Lấy thẻ BHYT
        public string[] layTheBHYT(string maBN)
        {
            TheBHYT bhyt = dal.layTheBHYT(maBN);

            if (bhyt != null)
            {
                return new string[] { bhyt.MaBHYT, bhyt.NgayCap.ToString(), bhyt.NgayHetHan.ToString() };
            }

            return null;
        }

        //thêm bệnh nhân
        public string them(string ma, string ten, string gioiTinh, DateTime ns, string danToc, string nghe, string diaChi, string sdt, string dtNN, string maBHYT, DateTime ngayCap, DateTime ngayHH)
        {
            if (dal.them( ma, ten, gioiTinh, ns, danToc, nghe, diaChi, sdt, dtNN))
            {
                if (!string.IsNullOrEmpty(maBHYT))
                {
                    if (!TheBHYT_BUS.Instance.them(maBHYT, ma, ngayCap, ngayHH))
                    {
                        return "Thêm bệnh nhân thành công, nhưng Thẻ BHYT không được thêm!";
                    } 
                    else
                    {
                        return "Thêm bệnh nhân và Thẻ BHYT thành công!";
                    }
                }
                return "Thêm bệnh nhân thành công!";
            }
            else
            {
                return "Thêm không thành công";
            }
        }

        public string xoa(string id, Button btn)
        {
            //nếu có thẻ BHYT
            TheBHYT bhyt = theBHYT_DAL.timTheBHYTTheoMaBN(id);
            if (bhyt != null)
            {
                TheBHYT_BUS.Instance.xoa(bhyt.MaBHYT);
            }

            if (dal.xoa(id))
            {
                btn.Enabled = false;
                return "Xóa thành công";
            }
            else
            {
                return "Xóa không thành công";
            }
        }

        public string sua(string ma, string ten, string gioiTinh, DateTime ns, string danToc, string nghe, string diaChi, string sdt, string dtNN, Button btn)
        {
            if (BenhNhan_DAL.Instance.sua(ma, ten, gioiTinh, ns, danToc, nghe, diaChi, sdt, dtNN))
            {
                btn.Enabled = false;
                return "Sủa thành công";
            }
            else
            {
                return "Sửa không thành công";
            }
        }

        //Lấy bệnh nhân theo khoa
        public void layDSBenhNhanTheoKhoa(string maK, DataGridView data)
        {
            data.DataSource = dal.layDSBenhNhanTheoKhoa(maK);
        }

        //Lấy sổ bệnh án
        public void laySoBenhAn(string maBN, DataGridView data)
        {
            if (dal.kiemTraTonTai(maBN))
            {
                data.DataSource = dal.laySoBenhAn(maBN);
            }
            else
            {
                MessageBox.Show("Không tìm thấy sổ bệnh án của bệnh nhân này!!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }

        }

    }
}

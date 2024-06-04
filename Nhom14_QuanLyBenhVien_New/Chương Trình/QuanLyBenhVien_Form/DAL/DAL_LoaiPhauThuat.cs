using ET;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_LoaiPhauThuat
    {
        public static DAL_LoaiPhauThuat instance;
        QLBVDataContext dc = new QLBVDataContext(Connection_DAL.ConnectionString);


        public static DAL_LoaiPhauThuat Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new DAL_LoaiPhauThuat();
                }
                return instance;
            }
        }

        //Hiển thị LoaiPhauThuat lên datagridview
        public IQueryable HienThiBangLoaiPT()
        {
            IQueryable loaiPT = from pt in dc.LoaiPhauThuats
                                   select pt;
            return loaiPT;
        }

        //Lấy danh sách gợi ý cho Mức Độ phẫu thuật
        public List<string> LayDSMucDoPT()
        {
            var mucDo = (from md in dc.LoaiPhauThuats
                        select md.MucDo).ToList();
            return mucDo;
        }

        //Thêm loại phẫu thuật
        public bool ThemLoaiPT(string maPT, string tenPT, string mucDo)
        {
            //Kiểm tra trùng khóa chính
            if (dc.LoaiPhauThuats.Any(loaiPT => loaiPT.MaPT == maPT))
            {
                return false;
            }
            try
            {
                LoaiPhauThuat loaiPT = new LoaiPhauThuat
                {
                    MaPT = maPT,
                    TenPT = tenPT,
                    MucDo = mucDo
                };
                dc.LoaiPhauThuats.InsertOnSubmit(loaiPT);
                return true;
            }
            finally
            {
                dc.SubmitChanges(); //Lưu dữ liệu
            }
        }

        //Xóa loại phẫu thuật
        public bool XoaLoaiPT(string maPT)
        {
            try
            {
                var delete = from pt in dc.LoaiPhauThuats
                             where pt.MaPT == maPT
                             select pt;
                foreach (var i in delete)
                {
                    dc.LoaiPhauThuats.DeleteOnSubmit(i);
                    dc.SubmitChanges(); //Lưu dữ liệu
                }
                return true;
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                if (ex.Number == 547) //Kiểm tra ràng buộc
                {
                    return false;
                }
            }
            return false;
        }

        //Sửa loại phẫu thuật 
        public void SuaLoaiPT(string maPT, string tenPT, string mucDo)
        {
            var update = dc.LoaiPhauThuats.Single(loaiPT => loaiPT.MaPT == maPT);
            ET_LoaiPhauThuat et = new ET_LoaiPhauThuat(maPT, tenPT, mucDo);
            update.TenPT = et.TenPT;          
            update.MucDo = et.MucDo;
            dc.SubmitChanges(); //Lưu dữ liệu
        }
    }
}

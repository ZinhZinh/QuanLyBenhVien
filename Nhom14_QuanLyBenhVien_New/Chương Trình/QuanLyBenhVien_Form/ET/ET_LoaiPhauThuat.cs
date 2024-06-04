using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ET
{
    public class ET_LoaiPhauThuat
    {
        private string maPT;
        private string tenPT;
        private string mucDo;

        public ET_LoaiPhauThuat(string maPT, string tenPT, string mucDo)
        {
            this.maPT = maPT;
            this.tenPT = tenPT;
            this.mucDo = mucDo;
        }

        public string MaPT { get => maPT; set => maPT = value; }
        public string TenPT { get => tenPT; set => tenPT = value; }
        public string MucDo { get => mucDo; set => mucDo = value; }
    }
}

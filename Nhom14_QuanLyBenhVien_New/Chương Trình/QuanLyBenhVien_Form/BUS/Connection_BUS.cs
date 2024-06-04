using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class Connection_BUS
    {
        Connection_DAL connection_DAL = new Connection_DAL();

        public void setSeverName(string severName)
        {
            Connection_DAL.SeverName = severName;
        }
        public void setdataName(string dataName)
        {
            Connection_DAL.DataName = dataName;
        }
        public bool ktDuongDan(string serverName, string databaseName)
        {
            return connection_DAL.ktDuongdan(serverName, databaseName);
        }
        public void setDataBase()
        {
            connection_DAL.setDatabase();
        }
    }
}

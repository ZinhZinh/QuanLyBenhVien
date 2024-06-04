using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class Connection_DAL
    {
        private static string dataName;
        private static string severName;
        private static QLBVDataContext db;
        private static string connectionString;
        public bool ktDuongdan(string serverName, string databaseName)
        {
            ConnectionString = $"Data Source={serverName};Initial Catalog={databaseName};Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                try
                {
                    connection.Open();
                    return true;
                }
                catch (SqlException)
                {
                    return false;
                }
            }
        }

        public static void resetData()
        {
            db = new QLBVDataContext($"Data Source={severName};Initial Catalog={dataName};Integrated Security=True");
        }

        public void setDatabase()
        {
            try
            {
                db = new QLBVDataContext(ConnectionString);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public static string DataName { get => dataName; set => dataName = value; }
        public static string SeverName { get => severName; set => severName = value; }
        public static string ConnectionString { get => connectionString; set => connectionString = value; }
    }
}

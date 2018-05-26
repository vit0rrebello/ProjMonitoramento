using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjController
{
    public class ConnectionSQLServer
    {
        SqlConnection con;

        public SqlConnection getConnectionSQlServer()
        {
            string conexao = 
            ConfigurationManager.ConnectionStrings["SQLSERVER"].ConnectionString;

            con = new SqlConnection();
            con.ConnectionString = conexao;
            return con;
        }
    }
}

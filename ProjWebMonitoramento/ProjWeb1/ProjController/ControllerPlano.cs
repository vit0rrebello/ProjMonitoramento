using ProjModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjController
{
    public class ControllerPlano
    {

        //ConnectionSQLServer conexao;
        SqlConnection con;

        public ControllerPlano()
        {
            con = new SqlConnection
                (ConfigurationManager.ConnectionStrings["SQLSERVER"].
                ConnectionString);
            //con.Open();
        }

        public bool Insert(Plano plano)
        {
            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "PR_INSERIR_PLANO";
            cmd.Parameters.Add(new SqlParameter ("@Descricao", plano.Descricao));
            cmd.Parameters.Add(new SqlParameter("@QtdCameras", plano.QtdCameras));
            cmd.Parameters.Add(new SqlParameter("@NomeClientes", plano.NomeClientes));
            cmd.Parameters.Add(new SqlParameter("@ValorPacotes", plano.ValorPacotes));
            cmd.Parameters.Add(new SqlParameter("@Fidelidade", plano.Fidelidade));
            cmd.Parameters.Add(new SqlParameter("@tipoCliente", plano.tipoCliente));


            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

            return true;
        }

        public DataTable Select ()
        {
            DataTable dt = new DataTable();
            SqlCommand scomand = new SqlCommand();
            SqlDataAdapter ad = new SqlDataAdapter();

            con.Open();

            scomand = new SqlCommand("PR_CONSULTAR_PLANO", con);
            scomand.CommandType = CommandType.StoredProcedure;
            ad.SelectCommand = scomand;
            ad.Fill(dt);

            con.Close();

            return dt;
        }


    }
}

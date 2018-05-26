using ProjController;
using ProjModel;
using System;


namespace WebApplication1
{
    public partial class teste : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void imprimir_Click(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtDescricao_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Plano plano = new Plano();

            int qtdCam = int.Parse(txtQtdCam.Text);
            double vlUnitario = double.Parse(txtVlUnitario.Text);
            double vlTotal = 0;

            plano.Descricao = txtDescricao.Text;
            plano.NomeClientes = txtCliente.Text;
            plano.QtdCameras = qtdCam;
            plano.ValorUnitario = vlUnitario;
           
            

            if (Radio2.Checked)
            {
                if (qtdCam > 0 && qtdCam < 3)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.05);
                    plano.tipoCliente = "Cliente Padrão";
                }
                if (qtdCam > 2 && qtdCam < 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.10);
                    plano.tipoCliente = "Cliente Intermediario";
                }
                if (qtdCam > 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.15);
                    plano.tipoCliente = "Cliente Avançado";
                }
                plano.Fidelidade = false;

            }
            if (Radio1.Checked)
            {
                if (qtdCam > 0 && qtdCam < 3)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.10);
                    plano.tipoCliente = "Cliente Padrão";
                }
                if (qtdCam > 2 && qtdCam < 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.20);
                    plano.tipoCliente = "Cliente Intermediario";
                }
                if (qtdCam > 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.30);
                    plano.tipoCliente = "Cliente Avançado";
                }
                plano.Fidelidade = true;

            }
            plano.ValorPacotes = vlTotal;
            txtVlTotal.Text = "R$ " + vlTotal;

            ControllerPlano controller = new ControllerPlano();
            controller.Insert(plano);

            ListarDados();

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            ListarDados();
        }

        private void ListarDados()
        {
            GVPlano.DataSource = new ControllerPlano().Select();
            GVPlano.DataBind();
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtDescricao.Text = ""; ;
            txtCliente.Text = "";
            txtQtdCam.Text = "";
            txtVlTotal.Text = "";
            txtVlUnitario.Text = "";
        }
    }
}
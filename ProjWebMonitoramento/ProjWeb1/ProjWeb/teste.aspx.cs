using ProjModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            Monitoramento monitoramento = new Monitoramento();

            int qtdCam = int.Parse(txtQtdCam.Text);
            double vlUnitario = double.Parse(txtVlUnitario.Text);
            double vlTotal = 0;

            monitoramento.descricao = txtDescricao.Text;
            monitoramento.nomeCliente = txtCliente.Text;
            monitoramento.qtdCamera = qtdCam;
            monitoramento.vlUnitario = vlUnitario;

            if (Radio2.Checked)
            {
                if(qtdCam>0 && qtdCam < 3)
                {
                    vlTotal = vlUnitario * qtdCam ;
                    vlTotal = vlTotal - (vlTotal * 0.05);
                }
                if(qtdCam>2 && qtdCam < 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.10);
                }
                if (qtdCam > 5)
                {
                    vlTotal = vlUnitario * qtdCam ;
                    vlTotal = vlTotal - (vlTotal * 0.15);
                }

            }
            if(Radio1.Checked)
            {
                if (qtdCam > 0 && qtdCam < 3)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.10);
                }
                if (qtdCam > 2 && qtdCam < 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.20);
                }
                if (qtdCam > 5)
                {
                    vlTotal = vlUnitario * qtdCam;
                    vlTotal = vlTotal - (vlTotal * 0.30);
                }

            }

            txtVlTotal.Text ="R$ "+vlTotal;



        }

    }
}
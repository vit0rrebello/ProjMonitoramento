using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjModel
{
    public class Plano
    {
        public int Id { get; set; }
        public string Descricao { get; set; }
        public int QtdCameras { get; set; }
        public string NomeClientes { get; set; }
        public double ValorPacotes { get; set; }
        public double ValorUnitario { get; set; }
        public bool Fidelidade { get; set; }
        public string tipoCliente { get; set; }

    }
}

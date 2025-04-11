using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_professor
{
//    public partial class Remocao : System.Web.UI.Page
//    {
//<<<<<<< Updated upstream
//        protected void Page_Load(object sender, EventArgs e)
//        {
//=======
//        Solicitacoes Solicitacoes = new Solicitacoes();
//        string tipo = "";
//        string Codigo = "";
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            Codigo = Session["codigo"].ToString();
//            string Email = Session["logado"].ToString();
            

//            bool JaSolicitou = Solicitacoes.VerificarSolicitacao("erica.campos@gmail.com", int.Parse(Session["codigo"].ToString()), 3);
//            if (JaSolicitou == false)
//            {
//                Professores professores = new Professores();
//                Professor Professor = professores.buscarDadosGeraisProfessor(int.Parse(Codigo));

//                EscolaProfessores escolaProfessores = new EscolaProfessores();
//                List<EscolaProfessor> InstituicoesProfessor = escolaProfessores.BuscarEscolasProfessor(int.Parse(Codigo));

//                tipo = Professor.TipoEnsino.Nome;

//                if (tipo == "PEB I")
//                {
//                    litAguardando.Text = $"Deseja se retirar da sua escola {InstituicoesProfessor[0].Instituicao.Nome}?";
//                    pnlBotao.Visible = true;
//                    btnPedirRemocao.CssClass += "btnExportar";
//                    btnNao.CssClass += "btnExportar";
//                }
//                else
//                {
//                    litAguardando.Text = $"Deseja se remover de suas escolas?";
//                    pnlBotao.Visible = true;
//                    btnPedirRemocao.CssClass += "BotaoVerdeEscuro";
//                    btnNao.CssClass += "BotaoVerdeClaro";
//                }
//            }
//            else
//            {
//                litAguardando.Text = $"Remoção já solicitada";
//            }
//        }

//        protected void btnPedirRemocao_Click(object sender, EventArgs e)
//        {
//            if (tipo == "PEB III")
//            {
//                EscolaProfessores escolaProfessores = new EscolaProfessores();
//                List<EscolaProfessor> InstituicoesProfessor = escolaProfessores.BuscarEscolasProfessor(int.Parse(Codigo));

//                foreach (EscolaProfessor EscolaProfessor in InstituicoesProfessor)
//                {
//                    ddlInstituicao.Items.Add(new ListItem(EscolaProfessor.Instituicao.Nome, EscolaProfessor.Instituicao.Email));
//                }
//            }
//            else
//            {
//                Solicitar();
//            }
//        }

//        private void Solicitar()
//        {
//            try
//            {
//                Solicitacoes.Solicitar("erica.campos@gmail.com", int.Parse(Session["codigo"].ToString()), 3);
//                pnlAviso.Visible = true;
//                litAviso.Text = "Remoção solicitada";
//            }
//            catch
//            {
//                pnlAviso.Visible = true;
//                litAviso.Text = "Não foi possível solicitar a remoção";
//            }
//        }

//        protected void btnSim_Click(object sender, EventArgs e)
//        {

//        }

//        protected void btnSim_Click1(object sender, EventArgs e)
//        {

//        }

//        protected void btnNao_Click(object sender, EventArgs e)
//        {
//>>>>>>> Stashed changes

//        }
//    }
}
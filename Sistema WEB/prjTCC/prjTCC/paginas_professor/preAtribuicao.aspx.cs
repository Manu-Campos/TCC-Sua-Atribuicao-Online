using prjTCC.paginas_supervisor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_professor
{
    public partial class preAtribuicao : System.Web.UI.Page
    {
        int codigoProfessor = 0;
        int multiplicadorJornadaProfessor = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("atribuicao");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

         

            Professores professores = new Professores();
            ProfessorUnico professor = professores.buscarDadosGeraisProfessor(int.Parse(Session["codigo"].ToString()));
            codigoProfessor = professor.Codigo;
            Session["codigo"] = professor.Codigo;
            Session["disciplina"] = professor.Disciplina.Sigla;

            #region Definição das fases
            string nomeFase = Session["nomeFase"].ToString();

            litFaseAtual.Text = nomeFase;
            #endregion

            if (!IsPostBack)
            {
                if (professores.verificarExistenciaPreferenciaProfessor(professor.Codigo))
                {
                    Response.Redirect("primeiraAtribuicao.aspx");
                }
                else
                {                   
                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'>{nomeFase}</div>
                                    <div id='PrimeiraAtribuicao' class='Fases'></div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";

                    ddlJornada.Items.Clear();
                    ddlEscolaSede.Items.Clear();
                    ddlSegundaEscola.Items.Clear();

                    ddlJornada.Items.Add("Escolha a jornada");
                    ddlJornada.SelectedIndex = 0;

                    ddlEscolaSede.Items.Add("Escolha a instituição sede");
                    ddlEscolaSede.SelectedIndex = 0;

                    Jornadas jornadas = new Jornadas();

                    foreach (var jornada in jornadas.BuscarJornadas(professor.Disciplina.Sigla, professor.TipoEnsino.Codigo))
                    {
                        ddlJornada.Items.Add($@"{jornada.CargaHoraria.HTA}h");
                        ViewState["codigoMultiplicador"] = jornada.Disciplina.CodigoMultiplicador.ToString();
                    }

                    EscolaProfessores escolaProfessores = new EscolaProfessores();
                    List<EscolaProfessor> ListaEscolas = escolaProfessores.BuscarEscolasProfessor(professor.Codigo);

                    foreach (EscolaProfessor escolaProfessor in ListaEscolas)
                    {
                        ddlEscolaSede.Items.Add(escolaProfessor.Instituicao.Nome);
                    }

                    if (professor.TipoEnsino.Codigo == 1)
                    {
                        //visibilidade dos paineis
                        pnlSegundaEscola.Visible = false;

                        //buscar Turmas
                        BuscarTurmas(professor.Codigo);

                        //ddl's
                        ddlJornada.SelectedIndex = 1;
                        ddlJornada.Enabled = false;

                        ddlEscolaSede.SelectedIndex = 1;
                        ddlEscolaSede.Enabled = false;

                        litQtSelecoes.Text = "2";
                    }

                    if (professor.TipoEnsino.Codigo == 2)
                    {
                        //visibilidade dos paineis
                        pnlSegundaEscola.Visible = true;

                        //ddl's
                        ddlSegundaEscola.Items.Add("Escolha a instituição sede primeiro");
                        ddlSegundaEscola.SelectedIndex = 0;
                        ddlSegundaEscola.Enabled = false;

                        //Padrão de qt de turmas
                        litQtSelecoes.Text = "0";
                    }
                }
            }
            else
            {
                if (ViewState["codigoMultiplicador"] != null)
                {
                    multiplicadorJornadaProfessor = int.Parse(ViewState["codigoMultiplicador"].ToString());
                }
            }

        }

        private void BuscarTurmas(int Codigo,string InstituicaoSede = null, string SegundaInstituicao =  "")
        {
            Turmas turmas = new Turmas();

            foreach (var turma in turmas.buscarTurmasDisponiveis(Codigo,InstituicaoSede,SegundaInstituicao))
            {
                litTodasTurmas.Text += $@"<tr id='linhaTabela'>
                                            <td class='Centro'><input type='checkbox' name='turmas' class='checkbox checkPreAtribuicao'></td>
                                            <td class='Centro'>{turma.Nome}</td>
                                            <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                            <td>{turma.InstituicaoUnica.Nome}</td>
                                        </tr>";
            }
        }

        protected void ddlJornada_SelectedIndexChanged(object sender, EventArgs e)
        {
            int qtTurmas = 0;

            if (ViewState["codigoMultiplicador"] != null)
            {
                multiplicadorJornadaProfessor = int.Parse(ViewState["codigoMultiplicador"].ToString());
            }
            else
            {
                return;
            }

            if (ddlJornada.SelectedValue != "Escolha a jornada") 
            {
                qtTurmas = int.Parse(ddlJornada.SelectedValue.Replace("h","")) / multiplicadorJornadaProfessor;

                litQtSelecoes.Text = qtTurmas.ToString();

            }
            else
            {
                litQtSelecoes.Text = "0";
            }
        }

        protected void ddlSegundaEscola_SelectedIndexChanged(object sender, EventArgs e)
        {
            litTodasTurmas.Text = "";

            BuscarTurmas(int.Parse(Session["codigo"].ToString()), ddlEscolaSede.SelectedValue, ddlSegundaEscola.SelectedValue);
        }

        protected void ddlEscolaSede_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSegundaEscola.Items.Clear();

            ddlSegundaEscola.Items.Add("Escolha a segunda instituição");
            ddlSegundaEscola.SelectedIndex = 0;
            ddlSegundaEscola.Enabled = true;

            Instituicoes instituicoes = new Instituicoes();

            if (ddlEscolaSede.SelectedValue == "Escolha a instituição sede")
            {
                ddlSegundaEscola.Items.Clear();
                ddlSegundaEscola.Items.Add("Escolha a instituição sede primeiro");
                ddlSegundaEscola.SelectedIndex = 0;
                ddlSegundaEscola.Enabled = false;

                litTodasTurmas.Text = "";
            }
            else
            {
                litTodasTurmas.Text = "";
                BuscarTurmas(int.Parse(Session["codigo"].ToString()), ddlEscolaSede.SelectedValue);

                foreach (var instituicao in instituicoes.BuscarInstituicoesPorProfessor(codigoProfessor))
                {
                    if (ddlEscolaSede.SelectedItem.ToString() != instituicao.Nome)
                    {
                        ddlSegundaEscola.Items.Add(instituicao.Nome);
                    }
                }
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class andamentoInstituicaoEspecifica : System.Web.UI.Page
    {
        string email = "";
        string nomeInstituicao = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("andamentoMenu");
            divSelecionada.CssClass = "menuSelecionado itemUnico selectMenu";

            #endregion

            if (Request["i"] == null)
            {
                Response.Redirect("andamentoInstituicao.aspx");
            }

            if (String.IsNullOrEmpty(Request["i"].ToString()))
            {
                Response.Redirect("andamentoInstituicao.aspx");
            }

            nomeInstituicao = Request["i"].ToString();
            int ano = int.Parse(Request["a"].ToString());

            if (nomeInstituicao != null)
            {
                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicao = instituicoes.BuscarEmailInstituicao(nomeInstituicao);
                email = instituicao.Email;
            }

            litNomeEscola.Text = nomeInstituicao;

            if (!IsPostBack)
            {
                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(0, email);

                foreach (var atribuicao in listaAnos)
                {
                    selectAno.Items.Add(atribuicao.DataAtribuicao.Year.ToString());
                }

                selectAno.SelectedValue = ano.ToString();

                TiposEnsino tiposEnsino = new TiposEnsino();
                List<TipoEnsino> listaTipos = tiposEnsino.buscarTiposEnsino(email);

                if (listaTipos.Count != 1)
                {
                    selectTipo.Items.Add("Todos os tipos");
                    selectTipo.SelectedIndex = 0;

                    selectDisciplina.Items.Clear();
                    selectDisciplina.Items.Add("Escolha o tipo primeiro");
                    selectDisciplina.SelectedIndex = 0;
                    selectDisciplina.Enabled = false;
                }
                else
                {

                    Disciplinas disciplinas = new Disciplinas();
                    List<Disciplina> listaDisciplina = disciplinas.BuscarDisciplinas(listaTipos[0].Nome);

                    if (listaDisciplina.Count != 1)
                    {
                        selectDisciplina.Items.Add("Todas as disciplinas");
                        selectDisciplina.SelectedIndex = 0;
                    }

                    foreach (var opcoesDisciplina in listaDisciplina)
                    {
                        selectDisciplina.Items.Add(opcoesDisciplina.Nome);
                    }
                }

                foreach (var tipo in listaTipos)
                {
                    selectTipo.Items.Add(tipo.Nome);
                }

                BuscarTurmas(int.Parse(selectAno.SelectedValue), null, null, email);
            }
        }

        protected void selectAno_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;

            ano = int.Parse(selectAno.SelectedValue);

            if (selectTipo.SelectedValue != "Todos os tipos")
            {
                tipo = selectTipo.SelectedValue;
                if (selectDisciplina.SelectedIndex != 0)
                {
                    disciplina = selectDisciplina.SelectedValue;
                }
            }

            BuscarTurmas(ano, tipo, disciplina, email);
        }

        protected void selectTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;

            ano = int.Parse(selectAno.SelectedValue);


            if (selectTipo.SelectedValue == "Todos os tipos")
            {
                selectDisciplina.Items.Clear();
                selectDisciplina.Items.Add("Escolha o tipo primeiro");
                selectDisciplina.SelectedIndex = 0;
                selectDisciplina.Enabled = false;
            }
            else
            { 
                selectDisciplina.Items.Clear();
                selectDisciplina.Enabled = true;

                Disciplinas disciplinas = new Disciplinas();
                List<Disciplina> listaDisciplina = disciplinas.BuscarDisciplinas(selectTipo.SelectedValue);

                if (listaDisciplina.Count != 1)
                {
                    selectDisciplina.Items.Add("Todas as disciplinas");
                    selectDisciplina.SelectedIndex = 0;
                }

                foreach (var opcoesDisciplina in listaDisciplina)
                {
                    selectDisciplina.Items.Add(opcoesDisciplina.Nome);
                }

                tipo = selectTipo.SelectedValue;
            }

            BuscarTurmas(ano, tipo, null, email);
        }

        protected void selectDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;

            ano = int.Parse(selectAno.SelectedValue);

            tipo = selectTipo.SelectedValue;

            if (selectDisciplina.SelectedIndex != 0)
            {
                disciplina = selectDisciplina.SelectedValue;
            }

            BuscarTurmas(ano, tipo, disciplina, email);
        }

        private void BuscarTurmas(int ano, string tipo, string disciplina, string instituicao)
        {
            litLinhaTabela.Text = "";

            Turmas turmas = new Turmas();
            List<List<string>> listaTurmas = turmas.buscarAndamentoInstituicao(ano, tipo, disciplina, instituicao);

            if (listaTurmas.Count != 0)
            {
                foreach (var turma in listaTurmas)
                {
                    if (turma[3] != "Não foi atribuído")
                    {
                        string[] parts = turma[3].Split('-');
                        string nome = parts[0].Trim();
                        int codigo = int.Parse(parts[1].Trim());

                        litLinhaTabela.Text += $@"<tr class='situacaoTurma'>
                                                    <td class='Centro'>{turma[0]}</td>
                                                    <td class='Centro'>{turma[1]}</td>
                                                    <td>{turma[2]}</td>
                                                    <td><a href='andamentoProfessorAtribuido.aspx?c={codigo}&a={ano}&l=instituicao&n={nomeInstituicao}'>{nome}</a></td>
                                                </tr>";
                    }
                    else
                    {
                        litLinhaTabela.Text += $@"<tr class='situacaoTurma'>
                                                    <td class='Centro'>{turma[0]}</td>
                                                    <td class='Centro'>{turma[1]}</td>
                                                    <td>{turma[2]}</td>
                                                    <td class='naoAtribuido'>{turma[3]}</td>
                                                </tr>";
                    }
                }
            }
            else
            {
                litLinhaTabela.Text += $@"<tr class='situacaoTurma'>
                                                    <td class='Centro'>-</td>
                                                    <td class='Centro'>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>";
            }
        }
    }
}
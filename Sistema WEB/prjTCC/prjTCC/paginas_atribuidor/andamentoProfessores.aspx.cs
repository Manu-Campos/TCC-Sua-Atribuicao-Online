using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class andamentoProfessores : System.Web.UI.Page
    {
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

            int ano = 0;
            if (Request["a"] != null)
            {
                ano = int.Parse(Request["a"].ToString());
            }

            if (!IsPostBack)
            {
                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(0, null);

                selectAno.SelectedIndex = 0;

                foreach (var atribuicao in listaAnos)
                {
                    selectAno.Items.Add(atribuicao.DataAtribuicao.Year.ToString());
                }

                if (ano != 0)
                {
                    selectAno.SelectedValue = ano.ToString();
                }

                TiposEnsino tiposEnsino = new TiposEnsino();
                List<TipoEnsino> listaTipos = tiposEnsino.buscarTiposEnsino();

                if (listaTipos.Count != 1)
                {
                    selectTipo.Items.Add("Todos os tipos");
                    selectTipo.SelectedIndex = 0;

                    selectDisciplina.Items.Clear();
                    selectDisciplina.Items.Add("Escolha o tipo primeiro");
                    selectDisciplina.SelectedIndex = 0;
                    selectDisciplina.Enabled = false;

                    selectInstituicao.Items.Clear();
                    selectInstituicao.Items.Add("Escolha o tipo primeiro");
                    selectInstituicao.SelectedIndex = 0;
                    selectInstituicao.Enabled = false;
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

                    Instituicoes instituicoes = new Instituicoes();
                    List<InstituicaoUnica> listaInstituicoes = instituicoes.BuscarInstituicoesPorTipoEnsino();

                    if (listaInstituicoes.Count != 1)
                    {
                        selectInstituicao.Items.Add("Todas as instituições");
                        selectInstituicao.SelectedIndex = 0;
                    }

                    foreach (var instituicao in listaInstituicoes)
                    {
                        selectInstituicao.Items.Add(instituicao.Nome);
                    }
                }

                foreach (var tipo in listaTipos)
                {
                    selectTipo.Items.Add(tipo.Nome);
                }

                BuscarProfessores(int.Parse(selectAno.SelectedValue), null, null, null);
            }
        }


        protected void selectAno_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;
            string email = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            if (selectTipo.SelectedValue != "Todos os tipos")
            {
                tipo = selectTipo.SelectedValue;
                if (selectDisciplina.SelectedValue != "Todas as disciplinas")
                {
                    disciplina = selectDisciplina.SelectedValue;
                }

                if (selectInstituicao.SelectedValue != "Todas as instituições")
                {
                    email = selectInstituicao.SelectedValue;
                }
            }

            BuscarProfessores(ano, tipo, disciplina, email);
        }

        protected void selectTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            if (selectTipo.SelectedValue == "Todos os tipos")
            {
                selectDisciplina.Items.Clear();
                selectDisciplina.Items.Add("Escolha o tipo primeiro");
                selectDisciplina.SelectedIndex = 0;
                selectDisciplina.Enabled = false;

                selectInstituicao.Items.Clear();
                selectInstituicao.Items.Add("Escolha o tipo primeiro");
                selectInstituicao.SelectedIndex = 0;
                selectInstituicao.Enabled = false;
            }
            else
            {
                selectDisciplina.Items.Clear();
                selectDisciplina.Enabled = true;

                tipo = selectTipo.SelectedValue;

                Disciplinas disciplinas = new Disciplinas();
                List<Disciplina> listaDisciplina = disciplinas.BuscarDisciplinas(tipo);

                if (listaDisciplina.Count != 1)
                {
                    selectDisciplina.Items.Add("Todas as disciplinas");
                    selectDisciplina.SelectedIndex = 0;
                }

                foreach (var opcoesDisciplina in listaDisciplina)
                {
                    selectDisciplina.Items.Add(opcoesDisciplina.Nome);
                }

                selectInstituicao.Items.Clear();
                selectInstituicao.Enabled = true;

                Instituicoes instituicoes = new Instituicoes();
                List<InstituicaoUnica> listaInstituicoes = instituicoes.BuscarInstituicoesPorTipoEnsino(tipo);

                if (listaInstituicoes.Count != 1)
                {
                    selectInstituicao.Items.Add("Todas as instituições");
                    selectInstituicao.SelectedIndex = 0;
                }

                foreach (var instituicao in listaInstituicoes)
                {
                    selectInstituicao.Items.Add(instituicao.Nome);
                }
            }

            BuscarProfessores(ano, tipo, null, null);
        }

        protected void selectDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;
            string email = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            if (selectTipo.SelectedValue != "Todos os tipos")
            {
                tipo = selectTipo.SelectedValue;
            }

            if (selectDisciplina.SelectedIndex != 0)
            {
                disciplina = selectDisciplina.SelectedValue;
            }

            if (selectInstituicao.SelectedValue != "Todas as instituições")
            {
                email = selectInstituicao.SelectedValue;
            }

            BuscarProfessores(ano, tipo, disciplina, email);
        }

        protected void selectInstituicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;
            string email = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            if (selectTipo.SelectedValue != "Todos os tipos")
            {
                tipo = selectTipo.SelectedValue;
                if (selectDisciplina.SelectedIndex != 0)
                {
                    disciplina = selectDisciplina.SelectedValue;
                }
            }

            if (selectInstituicao.SelectedValue != "Todas as instituições")
            {
                email = selectInstituicao.SelectedValue;
            }

            BuscarProfessores(ano, tipo, disciplina, email);
        }

        private void BuscarProfessores(int ano, string tipo, string disciplina, string nomeInstituicao)
        {
            litLinhaTabela.Text = "";

            string emailInstituicao = null;

            if (nomeInstituicao != null)
            {
                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicao = instituicoes.BuscarEmailInstituicao(nomeInstituicao);
                emailInstituicao = instituicao.Email;
            }

            Professores professores = new Professores();
            List<ProfessorUnico> listaProfessores = professores.buscarAndamentoProfessoresGeral(ano, tipo, disciplina, emailInstituicao);

            if (listaProfessores.Count != 0)
            {
                foreach (var professor in listaProfessores)
                {
                    if (professor.SituacaoAtribuicao == "Atribuído")
                    {
                        litLinhaTabela.Text += $@"<tr class='atribuido'>
                                                    <td class='Centro'>{professor.Ordem}</td>
                                                    <td class='Centro'>{professor.Codigo}</td>
                                                    <td><a href='andamentoProfessorAtribuido.aspx?c={professor.Codigo}&a={ano}&l=professor'>{professor.Nome}</a></td>
                                                    <td class='Centro'>{professor.TipoEnsino.Nome}</td>
                                                    <td>{professor.Disciplina.Nome}</td>
                                                    <td>{professor.Instituicao.Nome}</td>
                                                    <td>{professor.SituacaoAtribuicao}</td>
                                                </tr>";
                    }
                    else
                    {
                        litLinhaTabela.Text += $@"<tr>
                                                    <td class='Centro'>{professor.Ordem}</td>
                                                    <td class='Centro'>{professor.Codigo}</td>
                                                    <td><a href='andamentoProfessorAtribuido.aspx?c={professor.Codigo}&a={ano}&l=professor'>{professor.Nome}</a></td>
                                                    <td class='Centro'>{professor.TipoEnsino.Nome}</td>
                                                    <td>{professor.Disciplina.Nome}</td>
                                                    <td>{professor.Instituicao.Nome}</td>
                                                    <td>{professor.SituacaoAtribuicao}</td>
                                                </tr>";
                    }        
                }
            }
            else
            {
                litLinhaTabela.Text += $@"<tr class='atribuido'>
                                                    <td class='Centro'>-</td>
                                                    <td class='Centro'>-</td>
                                                    <td>-</td>
                                                    <td class='Centro'>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                    <td>-</td>
                                                </tr>";
            }
        }
    }
}
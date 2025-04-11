using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_supervisor
{
    public partial class andamento : System.Web.UI.Page
    {
        string disciplina = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("andamento");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            int ano = 0;

            disciplina = Session["disciplina"].ToString();

            litDisciplina.Text = disciplina;

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

                BuscarProfessores(int.Parse(selectAno.SelectedValue), null);
            }
        }

        protected void selectAno_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string email = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            if (selectInstituicao.SelectedValue != "Todas as instituições")
            {
                email = selectInstituicao.SelectedValue;
            }

            BuscarProfessores(ano, email);
        }

        protected void selectInstituicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string email = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            if (selectInstituicao.SelectedValue != "Todas as instituições")
            {
                email = selectInstituicao.SelectedValue;
            }

            BuscarProfessores(ano, email);
        }

        private void BuscarProfessores(int ano, string nomeInstituicao)
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
            List<ProfessorUnico> listaProfessores = professores.buscarAndamentoProfessoresGeral(ano, null, disciplina, emailInstituicao);

            if (listaProfessores.Count != 0)
            {
                foreach (var professor in listaProfessores)
                {
                    if (professor.SituacaoAtribuicao == "Atribuído")
                    {
                        litLinhaTabela.Text += $@"<tr class='atribuido'>
                                                    <td class='Centro'>{professor.Ordem}</td>
                                                    <td class='Centro'>{professor.Codigo}</td>
                                                    <td><a href='andamentoProfessorEspecifico.aspx?c={professor.Codigo}&a={ano}&l=professor'>{professor.Nome}</a></td>
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
                                                    <td><a href='andamentoProfessorEspecifico.aspx?c={professor.Codigo}&a={ano}&l=professor'>{professor.Nome}</a></td>
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
                litLinhaTabela.Text += $@"<tr>
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
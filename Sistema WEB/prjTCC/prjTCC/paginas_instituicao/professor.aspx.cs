using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.instituicao
{
    public partial class professor : System.Web.UI.Page
    {
        string email = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("professor");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            email = Session["logado"].ToString();
            if (!IsPostBack)
            {
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
                    selectDisciplina.Items.Add("Todas as disciplinas");
                    selectDisciplina.SelectedIndex = 0;

                    Disciplinas disciplinas = new Disciplinas();
                    List<Disciplina> listaDisciplina = disciplinas.BuscarDisciplinas(listaTipos[0].Nome);

                    foreach (var opcoesDisciplina in listaDisciplina)
                    {
                        selectDisciplina.Items.Add(opcoesDisciplina.Nome);
                    }
                }

                foreach (var tipo in listaTipos)
                {
                    selectTipo.Items.Add(tipo.Nome);
                }

                BuscarProfessores(null, null, email);
            }
        }

        private void BuscarProfessores(string tipo, string disciplina, string instituicao)
        {
            litLinhaTabela.Text = "";

            Professores professores = new Professores();
            List<ProfessorUnico> listaProfessores = professores.buscarProfessoresInstituicao(tipo, disciplina, instituicao);

            if (listaProfessores.Count != 0)
            {
                foreach (var professor in listaProfessores)
                {
                    litLinhaTabela.Text += $@"<tr>
                                                <td class='Centro'>{professor.Ordem}</td>
                                                <td class='Centro'>{professor.Codigo}</td>
                                                <td class='Centro'>{professor.TipoEnsino.Nome}</td>
                                                <td><a href='andamentoProfessorEspecifico.aspx?c={professor.Codigo}&l=professores'>{professor.Nome}</a></td>
                                                <td>{professor.Disciplina.Nome}</td>
                                                <td>{professor.SituacaoAtribuicao}</td>
                                            </tr>";
                }
            }
            else
            {
                litLinhaTabela.Text += $@"<tr>
                                            <td class='Centro'>-</td>
                                            <td class='Centro'>-</td>
                                            <td class='Centro'>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>";
            }
        }

        protected void selectTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tipo = null;

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
                selectDisciplina.Items.Add("Todas as disciplinas");
                selectDisciplina.SelectedIndex = 0;
                selectDisciplina.Enabled = true;

                Disciplinas disciplinas = new Disciplinas();
                List<Disciplina> listaDisciplina = disciplinas.BuscarDisciplinas(selectTipo.SelectedValue);

                foreach (var opcoesDisciplina in listaDisciplina)
                {
                    selectDisciplina.Items.Add(opcoesDisciplina.Nome);
                }

                tipo = selectTipo.SelectedValue;
            }

            BuscarProfessores(tipo, null, email);
        }

        protected void selectDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tipo = null;
            string disciplina = null;

            if (selectDisciplina.SelectedValue != "Artes")
            {
                if (selectDisciplina.SelectedValue != "Educação Física")
                {
                    tipo = selectTipo.SelectedValue;
                }
            }

            if (selectDisciplina.SelectedIndex != 0)
            {
                disciplina = selectDisciplina.SelectedValue;
            }

            BuscarProfessores(tipo, disciplina, email);
        }
    }
}
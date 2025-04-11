using prjTCC.instituicao;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class relatorio : System.Web.UI.Page
    {
        string Tipo = null;
        string Disciplina = null;
        string Instituicao = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("relatorio");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            List<Relatorio> ListaRelatorios = new List<Relatorio>();

            if (!IsPostBack)
            {
                TiposEnsino tiposEnsino = new TiposEnsino();
                List<TipoEnsino> listaTipos = tiposEnsino.buscarTiposEnsino();

                if (listaTipos.Count != 1)
                {
                    ddlTipo.Items.Add("Todos os tipos");
                    ddlTipo.SelectedIndex = 0;

                    ddlDisciplina.Items.Clear();
                    ddlDisciplina.Items.Add("Escolha o tipo primeiro");
                    ddlDisciplina.SelectedIndex = 0;
                    ddlDisciplina.Enabled = false;

                    ddlInstituicao.Items.Clear();
                    ddlInstituicao.Items.Add("Escolha o tipo primeiro");
                    ddlInstituicao.SelectedIndex = 0;
                    ddlInstituicao.Enabled = false;
                }
                else
                {
                    Disciplinas disciplinas = new Disciplinas();
                    List<Disciplina> listaDisciplina = disciplinas.BuscarDisciplinas(listaTipos[0].Nome);

                    if (listaDisciplina.Count != 1)
                    {
                        ddlDisciplina.Items.Add("Todas as disciplinas");
                        ddlDisciplina.SelectedIndex = 0;
                    }

                    foreach (var opcoesDisciplina in listaDisciplina)
                    {
                        ddlDisciplina.Items.Add(opcoesDisciplina.Nome);
                    }

                    Instituicoes instituicoes = new Instituicoes();
                    List<InstituicaoUnica> listaInstituicoes = instituicoes.BuscarInstituicoesPorTipoEnsino();

                    if (listaInstituicoes.Count != 1)
                    {
                        ddlInstituicao.Items.Add("Todas as instituições");
                        ddlInstituicao.SelectedIndex = 0;
                    }

                    foreach (var instituicao in listaInstituicoes)
                    {
                        ddlInstituicao.Items.Add(new ListItem(instituicao.Nome,instituicao.Email));
                    }
                }

                foreach (var tipo in listaTipos)
                {
                    ddlTipo.Items.Add(tipo.Nome);
                }
            }

            ListaRelatorios = BuscarAulasNaoAtribuidas(Tipo, Disciplina, Instituicao);
            ColocarDadosTabela(ListaRelatorios);
        }

        private void ColocarDadosTabela(List<Relatorio> ListaRelatorios)
        {
            if(ListaRelatorios.Count <= 0)
            {
                litLinhaTabela.Text += $@"<tr>
                        <td class='Ano Centro'>-</td>
                        <td class='Tipo Centro'>-</td>
                        <td class='Periodo Centro'>-</td>
                        <td class='Disciplina'>-</td>
                        <td class='Escola'>-</td>
                    </tr>";
            }
            else
            {
                litLinhaTabela.Text = "";
                foreach (Relatorio Relatorio in ListaRelatorios)
                {
                    litLinhaTabela.Text += $@"<tr>
                        <td class='Ano Centro'>{Relatorio.Turma.SiglaTurma}</td>
                        <td class='Tipo Centro'>{Relatorio.TipoEnsino.Nome}</td>
                        <td class='Periodo Centro'>{Relatorio.Turma.TipoPeriodo.Nome}</td>
                        <td class='Disciplina'>{Relatorio.Disciplina.Nome}</td>
                        <td class='Escola'>{Relatorio.Instituicao.Nome}</td>
                    </tr>";
                }
            }
        }

        private static List<Relatorio> BuscarAulasNaoAtribuidas(string Tipo, string Disciplina, string Instituicao)
        {
            Relatorios relatorios = new Relatorios();
            return relatorios.BuscarAulasNaoAtribuidas("erica.campos@gmail.com", int.Parse(DateTime.Now.Year.ToString()), Tipo, Disciplina, Instituicao);
        }

        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (ddlTipo.SelectedValue == "Todos os tipos")
            {
                ddlDisciplina.Items.Clear();
                ddlDisciplina.Items.Add("Escolha o Tipo primeiro");
                ddlDisciplina.SelectedIndex = 0;
                ddlDisciplina.Enabled = false;

                ddlInstituicao.Items.Clear();
                ddlInstituicao.Items.Add("Escolha o Tipo primeiro");
                ddlInstituicao.SelectedIndex = 0;
                ddlInstituicao.Enabled = false;
            }
            else
            {
                ddlDisciplina.Items.Clear();
                ddlDisciplina.Enabled = true;

                Tipo = ddlTipo.SelectedValue;

                Disciplinas Disciplinas = new Disciplinas();
                List<Disciplina> listaDisciplina = Disciplinas.BuscarDisciplinas(Tipo);

                if (listaDisciplina.Count != 1)
                {
                    ddlDisciplina.Items.Add("Todas as Disciplinas");
                    ddlDisciplina.SelectedIndex = 0;
                }

                foreach (var opcoesDisciplina in listaDisciplina)
                {
                    ddlDisciplina.Items.Add(opcoesDisciplina.Nome);
                }

                ddlInstituicao.Items.Clear();
                ddlInstituicao.Enabled = true;

                Instituicoes instituicoes = new Instituicoes();
                List<InstituicaoUnica> listaInstituicoes = instituicoes.BuscarInstituicoesPorTipoEnsino(Tipo);

                if (listaInstituicoes.Count != 1)
                {
                    ddlInstituicao.Items.Add("Todas as instituições");
                    ddlInstituicao.SelectedIndex = 0;
                }

                foreach (var instituicao in listaInstituicoes)
                {
                    ddlInstituicao.Items.Add(new ListItem(instituicao.Nome, instituicao.Email));
                }
                BuscarAulaseColocarNaTabela();
            }
        }

        protected void ddlDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTipo.SelectedValue != "Todos os Tipos")
            {
                Tipo = ddlTipo.SelectedValue;
            }

            if (ddlDisciplina.SelectedIndex != 0)
            {
                Disciplina = ddlDisciplina.SelectedValue;
            }

            if (ddlInstituicao.SelectedValue != "Todas as instituições")
            {
                Instituicao = ddlInstituicao.SelectedValue;
            }
            BuscarAulaseColocarNaTabela();
        }

        protected void selectEscola_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTipo.SelectedValue != "Todos os Tipos")
            {
                Tipo = ddlTipo.SelectedValue;
                if (ddlDisciplina.SelectedIndex != 0)
                {
                    Disciplina = ddlDisciplina.SelectedValue;
                }
            }

            if (ddlInstituicao.SelectedValue != "Todas as instituições")
            {
                Instituicao = ddlInstituicao.SelectedValue;
            }
            BuscarAulaseColocarNaTabela();
        }

        private void BuscarAulaseColocarNaTabela()
        {
            ColocarDadosTabela(BuscarAulasNaoAtribuidas(Tipo, Disciplina, Instituicao));
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.instituicao
{
    public partial class atas : System.Web.UI.Page
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

            Panel divSelecionada = (Panel)Master.FindControl("atas");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            email = Session["logado"].ToString();
            if (!IsPostBack)
            {
                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(0, email);

                if (listaAnos.Count != 1)
                {
                    selectAno.Items.Add("Todos os anos");
                    selectAno.SelectedIndex = 0;
                }

                foreach (var atribuicao in listaAnos)
                {
                    selectAno.Items.Add(atribuicao.DataAtribuicao.Year.ToString());
                }

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

                BuscarAtas(0, null, null, email);
            }
        }

        private void BuscarAtas(int ano, string tipo, string disciplina, string instituicao)
        {
            litLinhaTabela.Text = "";

            Anexos anexos = new Anexos();
            List<Anexo> listaAnexos = anexos.buscarAnexosInstituicao(ano, tipo, disciplina, instituicao);

            if (listaAnexos.Count != 0)
            {
                foreach (var anexo in listaAnexos)
                {
                    string[] nome = anexo.InstituicaoUnica.Nome.Split(' ');

                    litLinhaTabela.Text += $@"<tr id='linhaTabela'>
                                                <td class='Input Centro'><input type='checkbox' name='documentos' class='checkbox checkboxDocumentos'></td>
                                                <td>ATA_{nome[1].ToUpper()}_{nome[nome.Length - 1].ToUpper()}_{anexo.Disciplina.Nome.Split(' ')[0].ToUpper()}_{anexo.Disciplina.TipoEnsino.Nome.Replace(" ", "")}_{anexo.Atribuicao.DataAtribuicao.Year}.pdf</td>
                                                <td class='Ano Centro'>{anexo.Atribuicao.DataAtribuicao.Year}</td>
                                                <td class='Ano Centro'>{anexo.Disciplina.TipoEnsino.Nome}</td>
                                                <td class='Disciplina'>{anexo.Disciplina.Nome}</td>
                                                <td>{anexo.InstituicaoUnica.Nome}</td>
                                            </tr>";
                }
                btnExportar.Visible = true;
            }
            else
            {
                litLinhaTabela.Text += $@"<tr id='linhaTabela'>
                                                <td class='Input Centro'>-</td>
                                                <td>-</td>
                                                <td class='Ano Centro'>-</td>
                                                <td class='Disciplina'>-</td>
                                                <td>-</td>
                                            </tr>";
                btnExportar.Visible = false;
            }
        }

        protected void selectAno_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;

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

            BuscarAtas(ano, tipo, disciplina, email);
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

            BuscarAtas(ano, tipo, null, email);
        }

        protected void selectDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;

            if (selectAno.SelectedValue != "Todos os anos")
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

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

            BuscarAtas(ano, tipo, disciplina, email);
        }
    }
}
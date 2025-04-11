using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class atas : System.Web.UI.Page
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

            Panel divSelecionada = (Panel)Master.FindControl("atas");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            if (!IsPostBack)
            {
                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(0, null);

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

                BuscarAtas(0, null, null, null);
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

            BuscarAtas(ano, tipo, null, null);
        }

        protected void selectDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;
            string instituicao = null;

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
                instituicao = selectInstituicao.SelectedValue;
            }

            BuscarAtas(ano, tipo, disciplina, instituicao);
        }

        protected void selectInstituicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string tipo = null;
            string disciplina = null;
            string instituicao = null;

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
                instituicao = selectInstituicao.SelectedValue;
            }

            BuscarAtas(ano, tipo, disciplina, instituicao);
        }

        private void BuscarAtas(int ano, string tipo, string disciplina, string nomeInstituicao)
        {
            litLinhaTabela.Text = "";

            string emailInstituicao = null;

            if (nomeInstituicao != null)
            {
                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicao = instituicoes.BuscarEmailInstituicao(nomeInstituicao);
                emailInstituicao = instituicao.Email;
            }

            Anexos anexos = new Anexos();
            List<Anexo> listaAnexos = anexos.buscarAnexosInstituicao(ano, tipo, disciplina, emailInstituicao);

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
                                                <td class='Centro'>-</td>
                                                <td class='Centro'>-</td>
                                                <td class='Centro'>-</td>
                                                <td class='Centro'>-</td>
                                                <td class='Centro'>-</td>
                                            </tr>";
                btnExportar.Visible = false;
                
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class atribuicaoPEBIII : System.Web.UI.Page
    {
        //string situacao = "";

        private void limparTabelas()
        {
            litTabelaAtribuir.Text = $@"<tr>
                                                <td class='Centro Posicao'>-</td>
                                                <td class='Centro Codigo'>-</td>
                                                <td class='Nome'>-</td>
                                                <td class='Situacao'>-</td>
                                                <td>-</td>
                                            </tr>";

            litTabelaProximoProfessor.Text = $@"<tr>
                                                    <td class='Centro Posicao'>-</td>
                                                    <td class='Centro Codigo'>-</td>
                                                    <td class='Nome'>-</td>
                                                    <td class='Situacao'>-</td>
                                                    <td>-</td>
                                                </tr>";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            pnlAguardando.Visible = false;
            pnlAtribuicao.Visible = true;

            litH3.Text = "Iniciar a atribuição";

            #region Definição das fases

            string nomeFase = Session["nomeFase"].ToString();
            litFaseAtual.Text = nomeFase;

            if (!IsPostBack)
            {
                if (nomeFase == "Pré-Atribuição")
                {

                    pnlAguardando.Visible = true;
                    pnlAtribuicao.Visible = false;

                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'>{nomeFase}</div>
                                    <div id='PrimeiraAtribuicao' class='Fases'></div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";

                    Fases fases = new Fases();
                    Fase fase = fases.buscarProximaFase();

                    string nomeProxFase = fase.Nome;
                    DateTime dtInicio = fase.DtInicio;

                    string dia = dtInicio.Day.ToString();
                    string mes = dtInicio.Month.ToString("00");

                    string horas = dtInicio.Hour.ToString();
                    string min = dtInicio.Minute.ToString("00");

                    litAguardando.Text = $@"Aguardando o início da próxima fase -<span class='primeiraAtribuicao span'> {nomeProxFase} - {dia}/{mes} - {horas}:{min}h </span>";
                    return;

                }

                if (nomeFase == "1º Atribuição")
                {
                    pnlAguardando.Visible = true;
                    pnlAtribuicao.Visible = false;

                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'>{nomeFase}</div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";

                    Fases fases = new Fases();
                    Fase fase = fases.buscarProximaFase();

                    string nomeProxFase = fase.Nome;
                    DateTime dtInicio = fase.DtInicio;

                    string dia = dtInicio.Day.ToString();
                    string mes = dtInicio.Month.ToString("00");

                    string horas = dtInicio.Hour.ToString();
                    string min = dtInicio.Minute.ToString("00");

                    litAguardando.Text = $@"Aguardando o início da próxima fase -<span class='remocao span'> {nomeProxFase} - {dia}/{mes} - {horas}:{min}h </span>";
                    return;
                }

                if (nomeFase == "Remoção")
                {
                    pnlAguardando.Visible = false;
                    pnlAtribuicao.Visible = true;

                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'></div>
                                    <div id='Remocao' class='Fases'>{nomeFase}</div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";
                }

                if (nomeFase == "2º Atribuição")
                {
                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'></div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'>{nomeFase}</div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";
                }

                if (nomeFase == "Carga Complementar")
                {
                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'></div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'>{nomeFase}</div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";
                }

                if (nomeFase == "Trocas")
                {
                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'></div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'>{nomeFase}</div>
                                </div>";
                }

                if (nomeFase == "Período de Manutenção")
                {
                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='Manutencao' class='Fases'>{nomeFase}</div>
                                </div>";
                }
                if (nomeFase == "Em espera")
                {
                    pnlAguardando.Visible = true;
                    pnlAtribuicao.Visible = false;

                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='Manutencao' class='Fases'>{nomeFase}</div>
                                </div>";


                    Fases fases = new Fases();
                    Fase fase = fases.buscarProximaFase();

                    string nomeProxFase = fase.Nome;
                    DateTime dtInicio = fase.DtInicio;

                    string dia = dtInicio.Day.ToString();
                    string mes = dtInicio.Month.ToString("00");

                    string horas = dtInicio.Hour.ToString();
                    string min = dtInicio.Minute.ToString("00");

                    litAguardando.Text = $@"Aguardando o início da próxima fase -<span class='primeiraAtribuicao span'> {nomeProxFase} - {dia}/{mes} - {horas}:{min}h </span>";
                    return;
                }

            }


            #endregion


            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("atribuicaoMenu");
            divSelecionada.CssClass = "menuSelecionado itemUnico selectMenu";

            #endregion

            if (!IsPostBack) 
            {
                ddlDisciplinas.Items.Add("Escolha a disciplina");
                ddlDisciplinas.SelectedIndex = 0;

                Disciplinas disciplinas = new Disciplinas();

                foreach (var disciplina in disciplinas.BuscarDisciplinas("PEB III"))
                {
                    ddlDisciplinas.Items.Add(disciplina.Nome);
                }

                limparTabelas();

            }

        }

        protected void ddlDisciplinas_SelectedIndexChanged(object sender, EventArgs e)
        {
            string disciplina = ddlDisciplinas.SelectedValue;

            if (disciplina != "Selecione a Disciplina")
            {
                Professores professores = new Professores();

                List<ProfessorUnico> listaProfessores = professores.ordenarProfessores("PEB III", disciplina,null);

                ProfessorUnico professorAtribuir = listaProfessores.ElementAtOrDefault(0);
                ProfessorUnico professorProximo = listaProfessores.ElementAtOrDefault(1);

                if (professorAtribuir != null)
                {
                    litTabelaAtribuir.Text = $@"<tr>
                                                <td class='Centro Posicao'>{professorAtribuir.Ordem}</td>
                                                <td class='Centro Codigo'>{professorAtribuir.Codigo}</td>
                                                <td class='Nome'>{professorAtribuir.Nome}</td>
                                                <td class='Situacao'>{professorAtribuir.TipoProfessor.Nome}</td>
                                                <td>{professorAtribuir.Instituicao.Nome}</td>
                                            </tr>";


                    if (professorProximo != null)
                    {

                        litTabelaProximoProfessor.Text = $@"<tr>
                                                        <td class='Centro Posicao'>{professorProximo.Ordem}</td>
                                                        <td class='Centro Codigo'>{professorProximo.Codigo}</td>
                                                        <td class='Nome'>{professorProximo.Nome}</td>
                                                        <td class='Situacao'>{professorProximo.TipoProfessor.Nome}</td>
                                                        <td>{professorProximo.Instituicao.Nome}</td>
                                                    </tr>";

                    }
                }
                else
                {
                    limparTabelas();
                }
            }
            else
            {
                limparTabelas();
            }

            
        }
    }
}
using Org.BouncyCastle.Bcpg.OpenPgp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_professor
{
    public partial class primeiraAtribuicao : System.Web.UI.Page
    {
        string situacao = "";

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
            Session["disciplina"] = professor.Disciplina.Sigla;
            Session["tipoEnsino"] = professor.TipoEnsino.Codigo;

            #region Definição das fases
            string nomeFase = Session["nomeFase"].ToString();

            litFaseAtual.Text = nomeFase;
            #endregion

            Atribuicoes atribuicoes = new Atribuicoes();
            situacao = atribuicoes.verificarSituacaoAtribuicaoProfessor(int.Parse(Session["codigo"].ToString()));

            pnlAguardando.Visible = true;
            pnlAtribuicao.Visible = false;

            if (situacao == "Acabou o tempo")
            {
                litAguardando.Text = "<p class='SemMargin cmdLinha'><img src='../imagens/icones/aviso.png'>O tempo para atribuição das suas aulas foi excedido! A instituição fará sua atribuição de acordo com a carga mínima da sua disciplina.</p>";
                pnlAguardando.Visible = true;
                pnlAtribuicao.Visible = false;
            }
            else
            {
                if (situacao == "Aguardando")
                {
                    litAguardando.Text = "<p class='SemMargin'>Aguardando a sua vez de atribuir...</p>";
                    pnlAguardando.Visible = true;
                    pnlAtribuicao.Visible = false;
                }
                else
                {
                    if (situacao == "Já atribuído")
                    {
                        Fases fases = new Fases();
                        Fase fase = fases.buscarProximaFase();

                        string nomeProxFase = fase.Nome;
                        DateTime dtInicio = fase.DtInicio;

                        string dia = dtInicio.Day.ToString();
                        string mes = dtInicio.Month.ToString("00");

                        string horas = dtInicio.Hour.ToString();
                        string min = dtInicio.Minute.ToString("00");

                        litAguardando.Text = $@"<p class='SemMargin'>Aguardando o início da próxima fase -<span class='remocao span'> {nomeProxFase} - {dia}/{mes} - {horas}:{min}h </span></p>";

                        pnlAguardando.Visible = true;
                        pnlAtribuicao.Visible = false;
                    }
                    else
                    {
                        if (situacao == "Sua vez")
                        {
                            pnlAguardando.Visible = false;
                            pnlAtribuicao.Visible = true;

                            int qtTurmas = 0;

                            Jornadas jornadas = new Jornadas();
                            Jornada jornada = jornadas.buscarJornadaDoProfessor(int.Parse(Session["codigo"].ToString()), int.Parse(DateTime.Now.Year.ToString()));
                            qtTurmas = jornada.CargaHoraria.HTA / jornada.Disciplina.CodigoMultiplicador;

                            int jornadaRestante = jornadas.buscarJornadaRestante(int.Parse(Session["codigo"].ToString()), qtTurmas);

                            litQtSelecoes.Text = jornadaRestante.ToString();

                            Turmas turmas = new Turmas();

                            Instituicoes instituicoes = new Instituicoes();
                            InstituicaoUnica instituicaoUnica = instituicoes.buscarInstituicaoChamada(int.Parse(Session["codigo"].ToString()));

                            foreach (var turma in turmas.verificarTurmasPreferenciaProfessor(int.Parse(Session["codigo"].ToString()), instituicaoUnica.Email))
                            {
                                if (turma.Situacao == "Livre" && turma.NivelPreferencia == "Preferida")
                                {
                                    litTodasTurmas.Text += $@"<tr id='linhaTabela' class='linhaSelecionada'>
                                                <td class='Centro'><input type='checkbox' name='turmas' class='checkbox checkPrimeiraAtribuicao' checked='checked'></td>
                                                <td class='Centro'>{turma.Nome}</td>
                                                <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                <td>{turma.InstituicaoUnica.Nome}</td>
                                                <td class='Centro'>{turma.Situacao}</td>
                                            </tr>";

                                    litTurmasSelecionadas.Text += $@"<tr id='linhaTabela'>
                                                        <td class='Centro'>{turma.Nome}</td>
                                                        <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                        <td>{turma.InstituicaoUnica.Nome}</td>
                                                        <td class='Centro'>{turma.Situacao}</td>
                                                    </tr>";

                                }

                                if (turma.Situacao == "Livre" && turma.NivelPreferencia != "Preferida")
                                {
                                    litTodasTurmas.Text += $@"<tr id='linhaTabela'>
                                                    <td class='Centro'><input type='checkbox' name='turmas' class='checkbox checkPrimeiraAtribuicao'></td>
                                                    <td class='Centro'>{turma.Nome}</td>
                                                    <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                    <td>{turma.InstituicaoUnica.Nome}</td>
                                                    <td class='Centro'>{turma.Situacao}</td>
                                                </tr>";
                                }

                                if (turma.Situacao == "Atribuída")
                                {
                                    litTurmasAtribuidas.Text += $@"<tr class='turmaIndisponivel'>
                                                        <td class='Centro'><img src='../imagens/icones/xVermelho.png' alt=''/></td>
                                                        <td class='Centro'>{turma.Nome}</td>
                                                        <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                        <td>{turma.InstituicaoUnica.Nome}</td>
                                                        <td class='Centro'>{turma.Situacao}</td>
                                                    </tr>";
                                }
                            }
                        }
                    }
                }
            }


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

                    litAguardando.Text = $@"<p class='SemMargin'>Aguardando o início da próxima fase -<span class='remocao span'> {nomeProxFase} - {dia}/{mes} - {horas}:{min}h </span></p>";
                    return;
                }
                else
                {

                    litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'>{nomeFase}</div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";
                }

            }
        }

        protected void btnIniciarAtribuicao_Click(object sender, EventArgs e)
        {
            if (situacao == "Aguardando")
            {
                Professores professores = new Professores();
                professores.confirmarChamadaInicioAtribuicaoProfessor(int.Parse(Session["codigo"].ToString()));

                pnlAguardando.Visible = false;
                pnlAtribuicao.Visible = true;

                int qtTurmas = 0;

                Jornadas jornadas = new Jornadas();
                Jornada jornada = jornadas.buscarJornadaDoProfessor(int.Parse(Session["codigo"].ToString()), int.Parse(DateTime.Now.Year.ToString()));
                qtTurmas = jornada.CargaHoraria.HTA / jornada.Disciplina.CodigoMultiplicador;

                int jornadaRestante = jornadas.buscarJornadaRestante(int.Parse(Session["codigo"].ToString()), qtTurmas);

                litQtSelecoes.Text = jornadaRestante.ToString();

                Turmas turmas = new Turmas();

                foreach (var turma in turmas.verificarTurmasPreferenciaProfessor(int.Parse(Session["codigo"].ToString()), Session["instituicaoChamada"].ToString()))
                {
                    if (turma.Situacao == "Livre" && turma.NivelPreferencia == "Preferida")
                    {
                        litTodasTurmas.Text += $@"<tr id='linhaTabela' class='linhaSelecionada'>
                                                <td class='Centro'><input type='checkbox' name='turmas' class='checkbox checkPrimeiraAtribuicao' checked='checked'></td>
                                                <td class='Centro'>{turma.Nome}</td>
                                                <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                <td>{turma.InstituicaoUnica.Nome}</td>
                                                <td class='Centro'>{turma.Situacao}</td>
                                            </tr>";

                        litTurmasSelecionadas.Text += $@"<tr id='linhaTabela'>
                                                        <td class='Centro'>{turma.Nome}</td>
                                                        <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                        <td>{turma.InstituicaoUnica.Nome}</td>
                                                        <td class='Centro'>{turma.Situacao}</td>
                                                    </tr>";

                    }

                    if (turma.Situacao == "Livre" && turma.NivelPreferencia != "Preferida")
                    {
                        litTodasTurmas.Text += $@"<tr id='linhaTabela'>
                                                    <td class='Centro'><input type='checkbox' name='turmas' class='checkbox checkPrimeiraAtribuicao'></td>
                                                    <td class='Centro'>{turma.Nome}</td>
                                                    <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                    <td>{turma.InstituicaoUnica.Nome}</td>
                                                    <td class='Centro'>{turma.Situacao}</td>
                                                </tr>";
                    }

                    if (turma.Situacao == "Atribuída")
                    {
                        litTurmasAtribuidas.Text += $@"<tr class='turmaIndisponivel'>
                                                        <td class='Centro'><img src='../imagens/icones/xVermelho.png' alt=''/></td>
                                                        <td class='Centro'>{turma.Nome}</td>
                                                        <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                        <td>{turma.InstituicaoUnica.Nome}</td>
                                                        <td class='Centro'>{turma.Situacao}</td>
                                                    </tr>";
                    }

                }
                litTurmasAtribuidas.Text += $@"<script>
                                        console.log('aqui tem que buscar tempo');
                                        const formdata = new FormData;

                                            fetch('../lib/verificarTempoAtribuicao.aspx', {{
                                                method: 'post',
                                                body: formdata
                                            }})
                                                .then(function (response) {{
                                                    return response.json();
                                                }})
                                                .then(function (data) {{
                                                    console.log(data);
                                                    let tempoTotal =  tempoEmSegundos(data['tempoRestante']);
                                                    temporizador(tempoTotal);
                                                }})
                                                .catch(function (error) {{
                                                    console.error('erro ao buscar os dados:', error);
                                                }});
                                        </script>";
            }           
        }
    }
}
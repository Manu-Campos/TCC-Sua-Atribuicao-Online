using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_instituicao
{
    public partial class atribuicaoPEBI : System.Web.UI.Page
    {
        List<ProfessorUnico> listaProfessores = new List<ProfessorUnico>();

        int posicao = 0;
        int codigo = 0;

        //string situacao = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Validações

            if (Session["logado"] == null)
            {
                Response.Redirect("../index.aspx");
                Response.End();
                return;
            }

            if (String.IsNullOrEmpty(Session["logado"].ToString()))
            {
                Response.Redirect("../index.aspx");
                Response.End();
                return;
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

            #region Definição das fases
            string nomeFase = Session["nomeFase"].ToString();
            litFaseAtual.Text = nomeFase;

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
                pnlAguardando.Visible = false;
                pnlAtribuicao.Visible = true;
                pnlAtribuicaoPerdeuTempo.Visible = false;

                litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='PreAtribuicao' class='Fases'></div>
                                    <div id='PrimeiraAtribuicao' class='Fases'>{nomeFase}</div>
                                    <div id='Remocao' class='Fases'></div>
                                    <div id='SegundaAtribuicao' class='Fases'></div>
                                    <div id='CargaComplementar' class='Fases'></div>
                                    <div id='Trocas' class='Fases'></div>
                                </div>";

                #region Inserir linhas nas tabelas
                if (!IsPostBack)
                {
                    litH3.Text = "Iniciar atribuição";

                    //lista dos professores junto do primeiro professor a atribuir 
                    posicao = 0;

                }

                InserirDadosTabela();
                #endregion

                return;
            }

            if (nomeFase == "Remoção")
            {
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

            #endregion
        }

        private void InserirDadosTabela()
        {
            Professores professores = new Professores();
            listaProfessores = professores.buscarProfessoresNaoAtribuidos(Session["logado"].ToString(),1,"NC");

            for (int i = 0; i < listaProfessores.Count; i++)
            {
                ProfessorUnico professor = listaProfessores[i];

                if (i == 0)
                {
                    if (professor.SituacaoAtribuicao == "Em andamento")
                    {
                        litH3.Text = "Aguardando o professor atribuir...";

                        btnChamar.Text = "Aguardando";
                        btnChamar.Enabled = false;
                    }
                }

                if (professor.SituacaoAtribuicao == "Atribuído")
                {
                    i = -1;
                    listaProfessores.Remove(professor);

                    btnChamar.Text = "Chamar próximo";
                    btnChamar.Enabled = true;

                    litH3.Text = "Chamar próximo professor";
                }

                if (professor.SituacaoAtribuicao == "Acabou o tempo")
                {
                    i = -1;
                    listaProfessores.Remove(professor);

                    pnlAguardando.Visible = false;
                    pnlAtribuicao.Visible = false;
                    pnlAtribuicaoPerdeuTempo.Visible = true;

                    string nome = professor.Nome;

                    Usuarios usuarios = new Usuarios();
                    Usuario usuario = usuarios.buscarImagem("professor", professor.Email);

                    if (usuario.ImgPerfil != null)
                    {
                        pnlImgPerfilProfessor.Visible = true;
                        pnlIniciaisProfessor.Visible = false;
                        imgPerfilHeader.ImageUrl = usuario.ImgPerfil;
                    }
                    else
                    {
                        string[] separacoes = nome.Split(' ');
                        string iniciais = separacoes[0].Substring(0, 1) + separacoes.Last().Substring(0, 1);

                        pnlImgPerfil.Visible = false;
                        pnlIniciais.Visible = true;
                        litIniciais.Text = iniciais;
                    }

                    int qtTurmas = 0;

                    Jornadas jornadas = new Jornadas();
                    Jornada jornada = jornadas.buscarCargaMinima(professor.Codigo);
                    qtTurmas = jornada.CargaHoraria.HTA / jornada.Disciplina.CodigoMultiplicador;

                    litQtSelecoes.Text = qtTurmas.ToString();

                    Turmas turmas = new Turmas();

                    foreach (var turma in turmas.verificarTurmasPreferenciaProfessor(professor.Codigo, Session["logado"].ToString()))
                    {

                        if (turma.Situacao == "Livre")
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
                                                        <td class='Centro tdX'><img src='../imagens/icones/xVermelho.png' alt=''/></td>
                                                        <td class='Centro'>{turma.Nome}</td>
                                                        <td class='Centro'>{turma.TipoPeriodo.Nome}</td>
                                                        <td>{turma.InstituicaoUnica.Nome}</td>
                                                        <td class='Centro'>{turma.Situacao}</td>
                                                    </tr>";
                        }
                    }

                    litNomeProfessor.Text = professor.Nome;
                    litEmailProfessor.Text = professor.Email;
                    litProntuarioProfessor.Text = " " + professor.Codigo.ToString();
                    litCargaHorariaProfessorAnterior.Text = " " + professor.Jornada.CargaHoraria.HTA.ToString() + "h";
                    litCargaHorariaProfessorAtual.Text = " " + jornada.CargaHoraria.HTA.ToString() + "h";
                }
            }

            ProfessorUnico professorAtribuir = listaProfessores.ElementAtOrDefault(posicao);
            ProfessorUnico professorProximo = listaProfessores.ElementAtOrDefault(posicao + 1);

            if (professorAtribuir != null)
            {
                codigo = professorAtribuir.Codigo;
                Session["codigoProfessor"] = codigo;

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
                pnlAguardando.Visible = true;
                pnlAtribuicao.Visible = false;
                pnlAtribuicaoPerdeuTempo.Visible = false;

                Fases fases = new Fases();
                Fase fase = fases.buscarProximaFase();

                string nomeProxFase = fase.Nome;
                DateTime dtInicio = fase.DtInicio;

                string dia = dtInicio.Day.ToString();
                string mes = dtInicio.Month.ToString("00");

                string horas = dtInicio.Hour.ToString();
                string min = dtInicio.Minute.ToString("00");

                litAguardando.Text = $@"Todas as atribuições estão completas, aguarde o início da próxima fase -<span class='remocao span'> {nomeProxFase} - {dia}/{mes} - {horas}:{min}h </span>";
                return;
            }
        }

        protected void btnChamar_Click(object sender, EventArgs e)
        {
            Instituicoes instituicoes = new Instituicoes();

            try
            {
                if (btnChamar.Text != "Aguardando")
                {
                    if (codigo != 0)
                    instituicoes.ChamarProfessor(Session["logado"].ToString(), codigo);

                    litH3.Text = "Aguardando o professor atribuir...";
                    litScript.Text += $@"<script>
                                                    console.log('aqui tem que buscar tempo');
                                                    const formdata = new FormData;       
                                                    fetch('../lib/verificarTempoAtribuidor.aspx', {{
                                                        method: 'post',
                                                        body: formdata
                                                    }})
                                                        .then(function (response) {{
                                                            return response.text();
                                                        }})
                                                        .then(function (data) {{
                                                            console.log(data);
                                                            let jsonData = JSON.parse(data.trim().replace('-', ''));  
                                                            let tempoTotal = jsonData['tempoRestante'];
                                                            temporizador(tempoTotal);
                                                        }})
                                                        .catch(function (error) {{
                                                            console.error('erro ao buscar os dados:', error);
                                                        }});
                                                    </script>";
                    btnChamar.Text = "Aguardando";
                    btnChamar.Enabled = false;

                    Session["codigoProfessor"] = codigo;
                }
            }
            catch (Exception erro)
            {
                litH3.Text = erro.Message;
            }
            
        }

        protected void btnAtribuir_Click(object sender, EventArgs e)
        {
            Atribuicoes atribuicoes = new Atribuicoes();

            try
            {
                atribuicoes.validarAtribuicaoProfessor(codigo);

                litH3.Text = "Chamar próximo professor";

                btnChamar.Text = "Chamar próximo";
                btnChamar.Enabled = true;

                litScript.Text = "";

                InserirDadosTabela();

            }
            catch (Exception erro)
            {
                litH3.Text = erro.Message;
            }
        }
    }
}
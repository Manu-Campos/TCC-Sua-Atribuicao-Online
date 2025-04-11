using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class andamentoProfessorEspecifico : System.Web.UI.Page
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

            if (Request["c"] == null)
            {
                Response.Redirect("andamentoProfessores.aspx");
            }

            if (String.IsNullOrEmpty(Request["c"].ToString()))
            {
                Response.Redirect("andamentoProfessores.aspx");
            }

            int codigo = int.Parse(Request["c"].ToString());
            int ano = int.Parse(Request["a"].ToString());

            Professores professores = new Professores();
            ProfessorUnico professor = professores.buscarDadosGeraisProfessor(codigo);

            string emailInstituicao = null;

            if (professor.Instituicao.Nome != null)
            {
                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicao = instituicoes.BuscarEmailInstituicao(professor.Instituicao.Nome);
                emailInstituicao = instituicao.Email;
            }

            litNome.Text = professor.Nome;
            litEmail.Text = professor.Email;
            litProntuario.Text = professor.Codigo.ToString();
            litPontuacao.Text = professor.QtdPontuacao.ToString();
            litCargo.Text = professor.TipoEnsino.Nome;
            litDisciplina.Text = professor.Disciplina.Nome;
            litAnosPrefeitura.Text = professor.TempoPrefeitura.ToString();
            litEscolaSede.Text = professor.Instituicao.Nome;
            litClassificacaoGeral.Text = professores.buscarClassificacaoProfessor(null, null, null, codigo).ToString();
            litClassificacaoEscola.Text = professores.buscarClassificacaoProfessor(null, null, emailInstituicao, codigo).ToString();

            string nome = professor.Nome;

            Usuarios usuarios = new Usuarios();
            Usuario usuario = usuarios.buscarImagem(Session["cargo"].ToString(), Session["logado"].ToString());

            if (usuario.ImgPerfil != null)
            {
                pnlImgPerfil.Visible = true;
                pnlIniciais.Visible = false;
                imgPerfilHeader.ImageUrl = usuario.ImgPerfil;
            }
            else
            {
                string[] separacoes = nome.Split(' ');
                string iniciais = separacoes[0].Substring(0, 1) + separacoes[separacoes.Length - 1].Substring(0, 1);

                pnlImgPerfil.Visible = false;
                pnlIniciais.Visible = true;
                litIniciais.Text = iniciais;
            }

            Turmas turmas = new Turmas();
            List<Turma> listaTurmas = turmas.BuscarTurmasAtribuidasProfessor(codigo, ano, null);

            if (listaTurmas.Count != 0)
            {
                foreach (var turma in listaTurmas)
                {
                    litTabelaAulas.Text += $@"<tr>
                                                <td class='Centro'>{turma.SiglaTurma}</td>
                                                <td class='Centro'>{turma.TipoEnsino.Nome}</td>
                                                <td>{turma.Disciplina.Nome}</td>
                                                <td>{turma.InstituicaoUnica.Nome}</td>
                                            </tr>";
                }
            }
            else
            {
                litTabelaAulas.Text += $@"<tr>
                                            <td class='Centro'>-</td>
                                            <td class='Centro'>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>";
            }

            Anexos anexos = new Anexos();
            List<Anexo> listaAnexos = anexos.buscarAnexosProfessor(codigo, 0);

            if (listaAnexos.Count != 0)
            {
                foreach (var anexo in listaAnexos)
                {
                    string jornadaProfessor = "-";

                    if (anexo.Jornada.CargaHoraria.HTA != 0)
                    {
                        jornadaProfessor = anexo.Jornada.CargaHoraria.HTA.ToString() + "hrs";
                    }

                    litTabelaAtas.Text += $@"<tr id='linhaTabela'>
                                                    <td>ANEXO_{anexo.Professor.Codigo}_{anexo.Atribuicao.DataAtribuicao.Year}.pdf</td>
                                                    <td class='Centro'>{anexo.Atribuicao.DataAtribuicao.Year}</td>
                                                    <td class='Centro'>{jornadaProfessor}</td>
                                                </tr>";
                }
            }
            else
            {
                litTabelaAtas.Text += $@"<tr id='linhaTabela'>
                                                    <td>-</td>
                                                    <td class='Centro'>-</td>
                                                    <td class='Centro'>-</td>
                                                </tr>";
            }

            if (Request["l"].ToString() == "instituicao")
            {
                string nomeInstituicao = Request["n"].ToString();
                litVoltar.Text = $"<a href='andamentoInstituicaoEspecifica.aspx?i={nomeInstituicao}&a={ano}'><img src='../imagens/icones/setaAzul.png' alt='voltar' id='setaVoltar'></a>";
                litNomeHeader.Text = $"Instituições - {nomeInstituicao} - {professor.Nome}";
            }
            else
            {
                litVoltar.Text = $"<a href='andamentoProfessores.aspx?a={ano}'><img src='../imagens/icones/setaAzul.png' alt='voltar' id='setaVoltar'></a>";
            } 


        }
    }
}
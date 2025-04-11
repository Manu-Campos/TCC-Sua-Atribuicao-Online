using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            litAvisoSenha.Text = "";
            litAvisoEmail.Text = "";
            txtEmail.CssClass = "email";
            txtSenha.CssClass = "";
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            #region Validações

            if (String.IsNullOrEmpty(txtEmail.Text))
            {
                txtEmail.CssClass = "email caixaAviso";
                litAvisoEmail.Text = $@"<p class='erro pAlertaEmail SemMargin'>É necessário digitar o email!</p>";
                return;
            }
            if (String.IsNullOrEmpty(txtSenha.Text))
            {
                txtSenha.CssClass = "caixaAviso";
                litAvisoSenha.Text = $@"<p class='erro pAlertaSenha SemMargin'>É necessário digitar a senha!</p>";
                return;

            }
            #endregion

            try
            {

                Usuarios usuarios = new Usuarios();
                List<string> listaDados = usuarios.Logar(txtEmail.Text, txtSenha.Text);

                Fases fases = new Fases();
                Fase fase = fases.buscarFaseAtual();

                string nomeFase = fase.Nome;
                Session["nomeFase"] = nomeFase;

                if (listaDados[0] != null)
                {
                    Session["logado"] = txtEmail.Text;
                    Session["nome"] = listaDados[1];
                    Session["cargo"] = listaDados[0];

                    if (listaDados[0] == "atribuidor")
                    {
                        Response.Redirect($@"paginas_{listaDados[0]}/dashboard.aspx", false);
                    }

                    if (listaDados[0] == "professor")
                    {
                        Session["codigo"] = listaDados[2];

                        #region Definição Fases

                        if (nomeFase == "Pré-Atribuição")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/preAtribuicao.aspx", false);
                        }

                        if (nomeFase == "1º Atribuição")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/primeiraAtribuicao.aspx", false);
                        }

                        if (nomeFase == "Remoção")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/remocao.aspx", false);
                        }

                        if (nomeFase == "2º Atribuição")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/segundaAtribuicao.aspx", false);
                        }

                        if (nomeFase == "Carga Complementar")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/cargaComplementar.aspx", false);
                        }

                        if (nomeFase == "Trocas")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/trocas.aspx", false);
                        }

                        if (nomeFase == "Período de Manutenção")
                        {
                            Response.Redirect($@"paginas_{listaDados[0]}/atribuicoes_professor/manutencao.aspx", false);
                        }
                        #endregion
                    }

                    if (listaDados[0] == "supervisor")
                    {
                        Session["codigo"] = listaDados[2];

                        Response.Redirect($@"paginas_{listaDados[0]}/atribuicao.aspx", false);
                    }

                    if (listaDados[0] == "instituicao")
                    {
                        Response.Redirect($@"paginas_{listaDados[0]}/dashboard.aspx", false);
                    }

                    Context.ApplicationInstance.CompleteRequest();
                }
            }
            catch (Exception erro)
            {
                litAvisoSenha.Text = $@"<p class='erro pAlertaSenha SemMargin'>{erro.Message}!</p>";

                #region Aparência TextBox

                txtEmail.Text = "";
                txtSenha.Text = "";
                txtEmail.CssClass = " email caixaErro";
                txtSenha.CssClass = "caixaErro";

                #endregion
            }
        }
    }
}
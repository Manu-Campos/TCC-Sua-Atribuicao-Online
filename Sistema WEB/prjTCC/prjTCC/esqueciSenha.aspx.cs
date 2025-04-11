using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace prjTCC.paginas_atribuidor
{
    public partial class esqueciSenha : System.Web.UI.Page
    {
        Usuarios usuarios = new Usuarios();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == null)
            {
                txtEmail.CssClass = "email loginAviso";
                litAviso.Text = $@"<p class='erro'>É necessário digitar o email!</p>";
                return;
            }

            if (String.IsNullOrEmpty(txtEmail.Text))
            {
                txtEmail.CssClass = "email loginAviso";
                litAviso.Text = $@"<p class='erro'>É necessário digitar o email!</p>";
                return;
            }

            string email = txtEmail.Text;

            try
            {
                string cargo = usuarios.verificarUsuarioEsqueceuSenha(email);

                if (cargo != null)
                {
                    bool resultado = false;

                    Random randow = new Random();
                    int codigo = randow.Next(000001,999999);

                    try
                    {
                        #region Configuração do Servidor de Email
                        SmtpClient client = new SmtpClient();
                        client.Host = "smtp.mailersend.net";
                        client.Port = 587;
                        client.EnableSsl = true;
                        client.Credentials = new NetworkCredential("MS_vZV9lC@trial-pxkjn418906lz781.mlsender.net", "kZ88vtE95IftGCvN");
                        #endregion

                        #region Registrar Código de Recuperação

                        usuarios.gravarRecuperacao(email, codigo);

                        #endregion

                        #region Criação da Mensagem de email

                        MailMessage theEmail = new MailMessage();

                        theEmail.To.Add("grazielli.godoy06@gmail.com");
                        //theEmail.To.Add(email);

                        theEmail.From = new MailAddress("MS_vZV9lC@trial-pxkjn418906lz781.mlsender.net", "Sua atribuição online", System.Text.Encoding.UTF8);

                        theEmail.Subject = $@"Recuperação de Senha";
                        theEmail.SubjectEncoding = System.Text.Encoding.UTF8;

                       
                        theEmail.Body = $@" <section style='background-color: white; width: 300px;border: 2px solid #031D44;border-radius:15px;'>
                                                <header style='background-color:#031D44;width: 100%;text-align: center;padding: 20px 0;border-radius: 10px 10px 0 0px;' >
                                                    <img src='https://i.postimg.cc/pX2QdYff/logo-branca.png' alt='' style='width: 75%;margin: auto;'>
                                                </header>
                                                <div style='text-align: center;'>
                                                    <h1 style='font-size: 16px !important;
                                                                color: black !important;
                                                                margin-top: 20px !important;
                                                            '>Código de recuperação de senha:</h1>
                                                    <h1 style='font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;font-size: 22px;font-weight: 600;'>{codigo}</h1>
                                                </div>
                                            </section>";

                        theEmail.BodyEncoding = System.Text.Encoding.UTF8;

                        theEmail.Priority = MailPriority.High;

                        theEmail.IsBodyHtml = true;

                        #endregion

                        #region Envio do Email

                        client.Send(theEmail);

                        #endregion

                        ViewState["email"] = email;

                        areaEmail.Visible = false;
                        areaCodigoEmail.Visible = true;
                    }
                    catch
                    {
                        usuarios.excluirRecuperacao(email);

                        litAviso.Text = $@"<p class='erro'>Não foi possível enviar o email.</p>";
                        return;
                    }

                } 
                else
                {
                    txtEmail.CssClass = "loginAviso";
                    litAviso.Text = $@"Não existe esse login no sistema.";
                    return;
                }

            }
            catch (Exception erro)
            {

                litAviso.Text = erro.Message;
                return;
            }
        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            int codigo = 0;

            if (txtCodigo.Text == null)
            {
                litAvisoCodigo.Text = $@"<p class='erro'Digite o código de recuperação</p>";
                txtCodigo.CssClass = "loginAviso";
                return;
            }

            if (String.IsNullOrEmpty(txtCodigo.Text))
            {
                litAvisoCodigo.Text = $@"Digite o código de recuperação";
                txtCodigo.CssClass = "loginAviso";
                return;
            }

            try
            {
                codigo = usuarios.consultarRecuperacao(ViewState["email"].ToString());
            }
            catch
            {
                litAvisoCodigo.Text = "Não foi possível verificar o código de recuperação";
                return;
            }

            if (txtCodigo.Text == codigo.ToString())
            {
                areaEmail.Visible = false;
                areaCodigoEmail.Visible = false;
                areaNovaSenha.Visible = true;
            }
            else
            {
                litAvisoCodigo.Text = $@"Não foi possível verificar o código de recuperação";
                txtCodigo.CssClass = "loginAviso";
                return;
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (txtNovaSenha.Text == null)
            {
                litAvisoNovaSenha.Text = $@"Digite sua nova senha";
                txtNovaSenha.CssClass = "loginAviso";
                return;
            }

            if (String.IsNullOrEmpty(txtNovaSenha.Text))
            {
                litAvisoNovaSenha.Text = $@"Digite sua nova senha";
                txtNovaSenha.CssClass = "loginAviso";
                return;
            }

            if (txtConfirmarSenha.Text == null)
            {
                litAvisoNovaSenha.Text = $@"Confirme sua nova senha";
                txtConfirmarSenha.CssClass = "loginAviso";
                return;
            }

            if (String.IsNullOrEmpty(txtConfirmarSenha.Text))
            {
                litAvisoNovaSenha.Text = $@"Confirme sua nova senha";
                txtConfirmarSenha.CssClass = "loginAviso";
                return;
            }

            if (txtNovaSenha.Text != txtConfirmarSenha.Text)
            {
                litAvisoNovaSenha.Text = $@"As senhas não conferem!";
                txtNovaSenha.CssClass = "loginAviso";
                txtConfirmarSenha.CssClass = "loginAviso";
                return;
            }

            try
            {
                usuarios.alterarSenha(ViewState["email"].ToString(), null, txtNovaSenha.Text);
                usuarios.excluirRecuperacao(ViewState["email"].ToString());

                Session.Abandon();
                Response.Redirect("index.aspx");
            }
            catch
            {
                litAvisoNovaSenha.Text = "Não foi possível renovar sua senha!";
                return;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace prjTCC.instituicao
{
    public partial class avisos : System.Web.UI.Page
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

            Panel divSelecionada = (Panel)Master.FindControl("avisos");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion


            litLinhaTabela.Text = "";

            TiposAssuntos tiposAssuntos = new TiposAssuntos();
            Avisos avisos = new Avisos();


            if (!IsPostBack)
            {
                ddlAssuntoAvisosEnviados.Items.Add("Todos");

                foreach (TipoAssunto tipoAssunto in tiposAssuntos.listarAssuntos())
                {
                    ddlAssunto.Items.Add(tipoAssunto.Nome);
                    ddlAssuntoAvisosEnviados.Items.Add(tipoAssunto.Nome);
                }
                ddlClassificacao.Items.Add("Mais recentes");
                ddlClassificacao.Items.Add("Mais antigos");
                ddlClassificacao.Items.Add("Visualizados");
                ddlClassificacao.Items.Add("Não visualizados");

                if (!Directory.Exists(Request.PhysicalApplicationPath + $@"imagens\imagensTemporario\"))
                {
                    Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"imagens\imagensTemporario\");
                }

                string caminhoArqui = Request.PhysicalApplicationPath + @"imagens\imagensTemporario\";
                if (Directory.Exists(caminhoArqui))
                {

                    string[] arquivosTemp = Directory.GetFiles((caminhoArqui));
                    foreach (string arquivo in arquivosTemp)
                    {
                        File.Delete(arquivo);
                    }
                    Directory.Delete(caminhoArqui);
                }
                litArquivos.Text = "";


            }

            litDestinatario.Text = avisos.buscarEmailDestinatario();

            foreach (Aviso aviso in avisos.listarAvisosInstituicao(Session["logado"].ToString(), null, "Mais recentes"))
            {
                string status = string.Empty;

                if (aviso.Lido == false)
                {
                    status = "Não visualizada";
                }
                else
                {
                    status = "Visualizada";
                }

                litLinhaTabela.Text += $@"<tr>
                                                <td>{aviso.TipoAssunto.Nome}</td>
                                                <td>{aviso.DataAviso.ToString("dd/MM/yyyy")}</td>
                                                <td>'{aviso.Descricao}'</td>
                                                <td>{status}</td>
                                            </tr>";
            }

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtMensagemAviso.Text))
            {
                litAvisoSucesso.Text = "<p class= 'SemMargin erro pAviso'>Digite a mensagem do aviso!</p>";
                return;
            }

            #region Configuração do Servidor de Email
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.mailersend.net";
            client.Port = 587;
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("MS_vZV9lC@trial-pxkjn418906lz781.mlsender.net", "kZ88vtE95IftGCvN");
            #endregion

            #region Criação da Mensagem de email

            MailMessage theEmail = new MailMessage();

            //theEmail.To.Add(Session["logado"].ToString());
            theEmail.To.Add("grazielli.godoy06@gmail.com");

            theEmail.From = new MailAddress("MS_vZV9lC@trial-pxkjn418906lz781.mlsender.net", "Sua atribuição online", System.Text.Encoding.UTF8);

            theEmail.Subject = $@"Assunto: {ddlAssunto.SelectedValue}" + " - Aviso enviado pela instituição - " + Session["nome"].ToString();
            theEmail.SubjectEncoding = System.Text.Encoding.UTF8;

            theEmail.Body = $@"<p style='font-size:16px;font-weight:400;font-family: ""Avantgarde"", ""TeX Gyre Adventor"", ""URW Gothic L"", sans-serif;'>{txtMensagemAviso.Text}</p>";

            if (Directory.Exists(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\"))
            {
                foreach (string arquivo in Directory.GetFiles(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\"))
                {
                    theEmail.Attachments.Add(new Attachment(arquivo));
                }
            }

            theEmail.BodyEncoding = System.Text.Encoding.UTF8;

            theEmail.Priority = MailPriority.High;

            theEmail.IsBodyHtml = true;

            #endregion

            #region Envio do Email
            try
            {
                client.Send(theEmail);
                Avisos avisos = new Avisos();
                avisos.registrarAviso(txtMensagemAviso.Text, "erica.campos@gmail.com", Session["logado"].ToString(), ddlAssunto.SelectedValue);
                theEmail.Dispose();

                string caminhoArqui = Request.PhysicalApplicationPath + @"imagens\imagensTemporario\";


                if (Directory.Exists(caminhoArqui))
                {
                    string[] arquivosTemp = Directory.GetFiles((caminhoArqui));
                    foreach (string arquivo in arquivosTemp)
                    {
                        File.Delete(arquivo);
                    }
                    Directory.Delete(caminhoArqui);
                }

                litLinhaTabela.Text = "";

                foreach (Aviso aviso in avisos.listarAvisosInstituicao(Session["logado"].ToString(), null, "Mais recentes"))
                {
                    string status = string.Empty;

                    if (aviso.Lido == false)
                    {
                        status = "Não visualizada";
                    }
                    else
                    {
                        status = "Visualizada";
                    }

                    litLinhaTabela.Text += $@"<tr>
                                                <td>{aviso.TipoAssunto.Nome}</td>
                                                <td>{aviso.DataAviso.ToString("dd/MM/yyyy")}</td>
                                                <td>'{aviso.Descricao}'</td>
                                                <td>{status}</td>
                                            </tr>";
                }


                txtMensagemAviso.Text = "";
                litArquivos.Text = "";
                litAvisoSucesso.Text = $@"<p class= 'SemMargin sucesso'>Aviso enviado com sucesso!</p>";
            }
            catch (Exception erro)
            {
                litAvisoSucesso.Text = erro.Message;
            }
            #endregion
        }

        protected void ddlAssuntoAvisosEnviados_SelectedIndexChanged(object sender, EventArgs e)
        {
            Avisos avisos = new Avisos();
            litLinhaTabela.Text = "";

            string assuntoEscolhido = null;

            if (ddlAssuntoAvisosEnviados.SelectedValue != "Todos")
            {
                assuntoEscolhido = ddlAssuntoAvisosEnviados.SelectedValue;
            }

            List<Aviso> lista = avisos.listarAvisosInstituicao(Session["logado"].ToString(), assuntoEscolhido,ddlClassificacao.SelectedValue);

            if (lista.Count != 0)
            {
                foreach (Aviso aviso in lista)
                {
                    string status = string.Empty;

                    if (aviso.Lido == false)
                    {
                        status = "Não visualizada";
                    }
                    else
                    {
                        status = "Visualizada";
                    }

                    litLinhaTabela.Text += $@"<tr>
                                                <td>{aviso.TipoAssunto.Nome}</td>
                                                <td>{aviso.DataAviso.ToString("dd/MM/yyyy")}</td>
                                                <td>'{aviso.Descricao}'</td>
                                                <td>{status}</td>
                                            </tr>";
                }
            }
            else
            {
                litLinhaTabela.Text += $@"<tr>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                            </tr>";
            }
            
   

        }

        protected void ddlClassificacao_SelectedIndexChanged(object sender, EventArgs e)
        {
            Avisos avisos = new Avisos();
            litLinhaTabela.Text = "";

            string assuntoEscolhido = null;

            if (ddlAssuntoAvisosEnviados.SelectedValue != "Todos")
            {
                assuntoEscolhido = ddlAssuntoAvisosEnviados.SelectedValue;
            }

            List<Aviso> lista = avisos.listarAvisosInstituicao(Session["logado"].ToString(), assuntoEscolhido,ddlClassificacao.SelectedValue);

            if (lista.Count != 0)
            {
                foreach (Aviso aviso in lista)
                {
                    string status = string.Empty;

                    if (aviso.Lido == false)
                    {
                        status = "Não visualizada";
                    }
                    else
                    {
                        status = "Visualizada";
                    }

                    litLinhaTabela.Text += $@"<tr>
                                                <td>{aviso.TipoAssunto.Nome}</td>
                                                <td>{aviso.DataAviso.ToString("dd/MM/yyyy")}</td>
                                                <td>'{aviso.Descricao}'</td>
                                                <td>{status}</td>
                                            </tr>";
                }
            }
            else
            {
                litLinhaTabela.Text += $@"<tr>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                                <td>-</td>
                                            </tr>";
            }
        }

        protected void btnEscolherArquivos_Click(object sender, EventArgs e)
        {
            int cont = 0;
            litAvisoSucesso.Text = "";

            string caminhoArqui = Request.PhysicalApplicationPath + @"imagens\imagensTemporario\";

            if (!Directory.Exists(caminhoArqui))
            {
                Directory.CreateDirectory(caminhoArqui);
            }

            string[] arquivosTemp = Directory.GetFiles(caminhoArqui);
            int quantidadeArquivos = arquivosTemp.Length;

            if (fileUpload.PostedFiles.Count > 2)
            {
                litAvisoSucesso.Text = $@"<p class='SemMargin alertas'>Você pode selecionar no máximo 2 arquivos.</p>";
                return;
            }
            if (quantidadeArquivos >= 2)
            {
                litAvisoSucesso.Text = $@"<p class='SemMargin alertas'>Você pode selecionar no máximo 2 arquivos.</p>";
                return;
            }


                if (fileUpload.PostedFile.ContentLength < 4000000)
                {

                    List<string> caminhos = new List<string>();


                    if (fileUpload.HasFiles)
                    {
                        List<HttpPostedFile> arquivos = new List<HttpPostedFile>();
                        arquivos.Add(fileUpload.PostedFile);

                        fileUpload.SaveAs(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\" + fileUpload.FileName);
                        btnRemoverArquivos.Enabled = true;

                        foreach (HttpPostedFile arquivo in arquivos)
                        {

                            string caminho = Server.MapPath("~/Uploads/") + arquivo.FileName;

                            litArquivos.Text += $@"<div codigo='{cont}'>
                                <p class='SemMargin'>{arquivo.FileName}</p>
                                </div>";
                         
                            caminhos.Add(arquivo.FileName);

                         }

                    }


                }
                else
                {
                    litAvisoSucesso.Text = $@"<p class='SemMargin alertas'>O arquivo {fileUpload.FileName} excede o tamanho máximo de 4MB.<p>";
                }


        }

        protected void btnRemoverArquivos_Click(object sender, EventArgs e)
        {
            string caminhoArqui = Request.PhysicalApplicationPath + @"imagens\imagensTemporario\";
            if (Directory.Exists(caminhoArqui))
            {
                litArquivos.Text = "";



                string[] arquivosTemp = Directory.GetFiles((caminhoArqui));
                foreach (string arquivo in arquivosTemp)
                {
                    File.Delete(arquivo);
                }

                btnRemoverArquivos.Enabled = false;
            }
          
        }
    }
    
}
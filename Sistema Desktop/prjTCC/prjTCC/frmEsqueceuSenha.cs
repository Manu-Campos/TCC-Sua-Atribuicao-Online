using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MimeKit;

namespace prjTCC
{
    public partial class frmEsqueceuSenha : Form
    {
        public frmEsqueceuSenha()
        {
            InitializeComponent();
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuarios usuarios = new Usuarios();

                if (usuarios.EsqueceuSenha(txtLogin.Text) == true)
                {

                    SmtpClient smtpClient = new SmtpClient("smtp.office365.com")
                    {
                        Port = 587,
                        Credentials = new NetworkCredential("isa37268@outlook.com", "@Oi12345"),
                        EnableSsl = true,
                    };

                    MailMessage mailMessage = new MailMessage
                    {
                        From = new MailAddress("isa37268@outlook.com"),
                        Subject = "Redefinir sua senha",
                        Body = $@"<h1 style='
                                    font-size: 20px;
                                    font-weight: bold;
                                    font-family: serif;
                                    background-color: #031d44;
                                    color: white;
                                    padding: 20px;
                                    margin: auto;
                                    width: 100%;
                                 '><img src='../imagens/logoSozinho.png' style='width: 30px; padding: 10px;'><p>Olá usuário(a)!</p></h1>
                                 <main>
                                  <main style='width: 80%;margin: auto;' class=''>
                                  Seu código é <strong style='
                                        color: #031d44;
                                        text-decoration: underline;
                                     '>123</strong>

                                  Volte a aplicação windows form para continuar a recuperação.
                                 </main>",
                        IsBodyHtml = true,
                    };

                    mailMessage.To.Add("isa37268@outlook.com" /*aqui é para ser o e-mail do cara*/);
                    smtpClient.Send(mailMessage);

                    frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                    frmAvisoCorreto.AlterarTextoLabel("Verifique o código que enviamos ao seu e-mail!");
                    frmAvisoCorreto.ShowDialog();
                }
                else
                {
                    frmAvisoErro frmAvisoErro = new frmAvisoErro();
                    frmAvisoErro.AlterarTextoLabel("O login informado não existe!");
                    frmAvisoErro.ShowDialog();
                }
            }
            catch (Exception ex)
            {
                frmAvisoErro frmAvisoErro = new frmAvisoErro();
                frmAvisoErro.AlterarTextoLabel($@"Não conseguimos mandar o e-mail, tente novamente!");
                frmAvisoErro.ShowDialog();
            }

            //try
            //{
            //    Usuarios usuarios = new Usuarios();

            //    if (usuarios.EsqueceuSenha(txtLogin.Text))
            //    {
            //        using (SmtpClient smtpClient = new SmtpClient("smtp.aol.com")
            //        {
            //            Port = 465, // Ou 587, dependendo do que você testar
            //            Credentials = new NetworkCredential("suaatribuicaoonlineguaruja@aol.com", "Guaruja@2024"),
            //            EnableSsl = true,
            //        })
            //        {
            //            MailMessage mailMessage = new MailMessage
            //            {
            //                From = new MailAddress("suaatribuicaoonlineguaruja@aol.com"),
            //                Subject = "Redefinir sua senha",
            //                Body = "<h1>Olá usuário(a)!</h1><p>Seu código é <strong>123</strong></p>",
            //                IsBodyHtml = true,
            //            };

            //            mailMessage.To.Add("suaatribuicaoonlineguaruja@gmail.com");
            //            smtpClient.Send(mailMessage);
            //        }

            //        frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
            //        frmAvisoCorreto.AlterarTextoLabel("Verifique o código que enviamos ao seu e-mail!");
            //        frmAvisoCorreto.ShowDialog();
            //    }
            //    else
            //    {
            //        frmAvisoErro frmAvisoErro = new frmAvisoErro();
            //        frmAvisoErro.AlterarTextoLabel("O login informado não existe!");
            //        frmAvisoErro.ShowDialog();
            //    }
            //}
            //catch (SmtpException smtpEx)
            //{
            //    Console.WriteLine($"Erro SMTP: {smtpEx.StatusCode} - {smtpEx.Message}");
            //    frmAvisoErro frmAvisoErro = new frmAvisoErro();
            //    frmAvisoErro.AlterarTextoLabel("Erro ao enviar e-mail. Verifique as configurações.");
            //    frmAvisoErro.ShowDialog();
            //}
            //catch (FormatException formatEx)
            //{
            //    Console.WriteLine($"Erro de Formato: {formatEx.Message}");
            //    frmAvisoErro frmAvisoErro = new frmAvisoErro();
            //    frmAvisoErro.AlterarTextoLabel("Erro de formato no e-mail.");
            //    frmAvisoErro.ShowDialog();
            //}
            //catch (Exception ex)
            //{
            //    Console.WriteLine($"Erro geral: {ex.Message}");
            //    frmAvisoErro frmAvisoErro = new frmAvisoErro();
            //    frmAvisoErro.AlterarTextoLabel("Não conseguimos mandar o e-mail, tente novamente!");
            //    frmAvisoErro.ShowDialog();
            //}

            //try
            //{
            //    Usuarios usuarios = new Usuarios();

            //    if (usuarios.EsqueceuSenha(txtLogin.Text))
            //    {
            //        var message = new MimeKit.MimeMessage();
            //        message.From.Add(new MimeKit.MailboxAddress("Seu Nome", "suaatribuicaoonlineguaruja@gmail.com"));
            //        message.To.Add(new MimeKit.MailboxAddress("Destinatário", "suaatribuicaoonlineguaruja@gmail.com" /* aqui vai ficar o txtemail */));
            //        message.Subject = "Redefinir sua senha";

            //        message.Body = new MimeKit.TextPart("html")
            //        {
            //            Text = $@"<h1 style='
            //            font-size: 20px;
            //            font-weight: bold;
            //            font-family: serif;
            //            background-color: #031d44;
            //            color: white;
            //            padding: 20px;
            //            margin: auto;
            //            width: 100%;'>
            //           <img src='../imagens/logoSozinho.png' style='width: 30px; padding: 10px;'>
            //           <p>Olá usuário(a)!</p>
            //         </h1>
            //         <main style='width: 80%;margin: auto;'>
            //           Seu código é <strong style='color: #031d44; text-decoration: underline;'>123</strong>
            //           Volte à aplicação Windows Form para continuar a recuperação.
            //         </main>"
            //        };

            //        using (var client = new MailKit.Net.Smtp.SmtpClient())
            //        {
            //            client.Connect("smtp.gmail.com", 587, MailKit.Security.SecureSocketOptions.StartTls);
            //            client.Authenticate("suaatribuicaoonlineguaruja@gmail.com", "Guaruja@2024");

            //            client.Send(message);
            //            client.Disconnect(true);
            //        }
            //    }
            //    else
            //    {
            //        frmAvisoErro frmAvisoErro = new frmAvisoErro();
            //        frmAvisoErro.AlterarTextoLabel("O login informado não existe!");
            //        frmAvisoErro.ShowDialog();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    frmAvisoErro frmAvisoErro = new frmAvisoErro();
            //    frmAvisoErro.AlterarTextoLabel("Não conseguimos mandar o e-mail, tente novamente!");
            //    frmAvisoErro.ShowDialog();
            //}
        }
    }
}

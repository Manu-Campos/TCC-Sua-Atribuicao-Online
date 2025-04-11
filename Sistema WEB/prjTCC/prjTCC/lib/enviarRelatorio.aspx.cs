using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjTCC.instituicao;

namespace prjTCC.lib
{
    public partial class enviarRelatorio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            try
            {
                string arquivoModelo = Request.PhysicalApplicationPath + $@"arquivos\ModeloRelatorio";

                Excel excel = new Excel();
                excel.AbreArquivo(arquivoModelo);
                excel.EscolhaPlanilha(1);

                excel.AtribuirTexto(16, 5, $"Emitido em: {DateTime.Now}");
                excel.AtribuirTexto(5, 3, Session["nome"].ToString());

                Aulas aulas = new Aulas();
                List<string> dados = aulas.buscarDadosAulasRelatorio(DateTime.Now.Year);

                excel.AtribuirTexto(7, 4, dados[0]);
                excel.AtribuirTexto(7, 10, dados[1]);
                excel.AtribuirTexto(9, 5, dados[2]);

                Relatorios relatorios = new Relatorios();
                List<Relatorio> relatoriosTurmas = relatorios.BuscarAulasNaoAtribuidas(Session["logado"].ToString(), int.Parse(DateTime.Now.Year.ToString()), null, null, null);

                int a = 12;

                foreach (var item in relatoriosTurmas)
                {
                    if (a != 12)
                    {
                        excel.AdicionarLinha(a);
                        excel.Mesclar($"D{a}", $"E{a}");
                        excel.Mesclar($"F{a}", $"G{a}");
                        excel.Mesclar($"H{a}", $"K{a}");

                        excel.Borda($"B{a}", $"B{a}", "fina");
                        excel.Borda($"C{a}", $"C{a}", "fina");
                        excel.Borda($"D{a}", $"E{a}", "fina");
                        excel.Borda($"F{a}", $"G{a}", "fina");
                        excel.Borda($"H{a}", $"K{a}", "fina");

                    }

                    excel.AtribuirTexto(a, 2, $"{item.Turma.SiglaTurma}");
                    excel.AtribuirTexto(a, 3, $"{item.TipoEnsino.Nome}");
                    excel.AtribuirTexto(a, 4, $"{item.Turma.TipoPeriodo.Nome}");
                    excel.AtribuirTexto(a, 6, $"{item.Disciplina.Nome}");
                    excel.AtribuirTexto(a, 8, $"{item.Instituicao.Nome}");

                    a++;
                }

                if (!Directory.Exists(Request.PhysicalApplicationPath + $@"arquivos\temporario\"))
                {
                    Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"arquivos\temporario\");
                }

                excel.SalvarComo(Request.PhysicalApplicationPath + $@"arquivos\temporario\relatorio.xlsx");
                excel.ExportarPlanilhaComoPDF(Request.PhysicalApplicationPath + $@"arquivos\temporario\relatorio{DateTime.Now.Year}");

                excel.Fechar();
            }
            catch
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
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

            //theEmail.To.Add("email RH");
            //theEmail.To.Add("email atribuidor");
            theEmail.To.Add("grazielli.godoy06@gmail.com");

            theEmail.From = new MailAddress("MS_vZV9lC@trial-pxkjn418906lz781.mlsender.net", "Sua atribuição online", System.Text.Encoding.UTF8);

            theEmail.Subject = $@"Relatório de aulas não atribuídas";
            theEmail.SubjectEncoding = System.Text.Encoding.UTF8;

            theEmail.Body = $@"<p>Segue arquivo em pdf para registro dos dados das aulas não atribuídas do ano de {DateTime.Now.Year}</p>";

            theEmail.Attachments.Add(new Attachment(Request.PhysicalApplicationPath + $@"arquivos\temporario\relatorio{DateTime.Now.Year}.pdf"));

            theEmail.BodyEncoding = System.Text.Encoding.UTF8;

            theEmail.Priority = MailPriority.High;

            theEmail.IsBodyHtml = true;

            #endregion

            #region Envio do Email
            try
            {
                client.Send(theEmail);
                theEmail.Dispose();

                string caminhoArqui = Request.PhysicalApplicationPath + @"arquivos\temporario\";

                if (Directory.Exists(caminhoArqui))
                {

                    string[] arquivosTemp = Directory.GetFiles((caminhoArqui));
                    foreach (string arquivo in arquivosTemp)
                    {
                        File.Delete(arquivo);
                    }
                }

                resposta = "{'situacao':'true'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }
            catch
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }
            #endregion
        }
    }
}
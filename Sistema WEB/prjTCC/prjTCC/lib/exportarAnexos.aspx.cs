using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Excel;
using System.IO.Compression;
using System.Globalization;

namespace prjTCC.lib
{
    public partial class exportarAnexos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            int codigo = int.Parse(Session["codigo"].ToString());
            string resposta = "";

            //listar anos
            bool acabou = false;
            int i = 0;

            List<int> listaAnos = new List<int>();

            do
            {
                if (Request[$"anos[{i}]"] != null)
                {
                    listaAnos.Add(int.Parse(Request[$"anos[{i}]"]));
                    i++;
                }
                else
                {
                    acabou = true;
                }
            }
            while (acabou == false);

            if (!Directory.Exists(Request.PhysicalApplicationPath + $@"arquivos\temporario\"))
            {
                Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"arquivos\temporario\");
            }

            if (!Directory.Exists(Request.PhysicalApplicationPath + @"arquivos\temporario\downloadArquivos"))
            {
                Directory.CreateDirectory(Request.PhysicalApplicationPath + @"arquivos\temporario\downloadArquivos");
            }

            foreach (int ano in listaAnos)
            {
                try
                {
                    string caminho = Request.PhysicalApplicationPath + $@"arquivos\ModeloAnexoAtribuicao";

                    Excel excel = new Excel();
                    excel.AbreArquivo(caminho);
                    excel.EscolhaPlanilha(1);

                    excel.AtribuirTexto(6, 1, $@"ANEXO DO PROFESSOR - {ano}");
                    excel.AtribuirTexto(10, 1, $@"Opção de jornada no Município para o exercício de {ano}:");

                    Professores professores = new Professores();
                    ProfessorUnico professor = professores.buscarDadosGeraisProfessor(codigo);

                    excel.AtribuirTexto(8, 1, $@"Nome: {professor.Nome}");
                    excel.AtribuirTexto(8, 11, $@"Pront.: {professor.Codigo}");
                    excel.AtribuirTexto(8, 15, $@"Emprego: {professor.TipoProfessor.Nome}");

                    Jornadas Jornadas = new Jornadas();
                    Jornada jornada = Jornadas.buscarJornadaDoProfessor(codigo, ano);

                    excel.AtribuirTexto(13, 18, $@"{jornada.CargaHoraria.HTA}");
                    excel.AtribuirTexto(13, 19, $@"{jornada.CargaHoraria.HTPC}");
                    excel.AtribuirTexto(13, 20, $@"{jornada.CargaHoraria.HTPL}");

                    excel.AtribuirTexto(12, 12, $@"{jornada.CargaHoraria.QTCargaHoraria}");

                    DateTime dataAtual = DateTime.Now;
                    CultureInfo culturaBrasileira = new CultureInfo("pt-BR");
                    string dataPorExtenso = dataAtual.ToString("dddd, dd 'de' MMMM 'de' yyyy", culturaBrasileira);

                    excel.AtribuirTexto(32, 1, $@"Guarujá, {dataPorExtenso}");

                    Anexos anexos = new Anexos();
                    List<Anexo> listaAnexos = anexos.buscarDadosTurmasAnexos(ano, codigo);

                    int a = 17;
                    foreach (Anexo anexo in listaAnexos)
                    {

                        excel.AtribuirTexto(a, 2, $"{anexo.InstituicaoUnica.Nome}");
                        excel.AtribuirTexto(a, 5, $"{anexo.Disciplina.Nome}");
                        excel.AtribuirTexto(a, 8, $"{anexo.qtManha}");
                        excel.AtribuirTexto(a, 9, $"{anexo.qtIntegral}");
                        excel.AtribuirTexto(a, 10, $"{anexo.qtTarde}");
                        excel.AtribuirTexto(a, 11, $"{anexo.qtVespertino}");
                        excel.AtribuirTexto(a, 12, $"{anexo.qtNoite}");
                        excel.AtribuirTexto(a, 13, $"{anexo.qtManha + anexo.qtTarde + anexo.qtNoite}");
                        excel.AtribuirTexto(a, 15, $"{anexo.Turma.Nome}");
                        
                        if (anexo.Atribuicao.CienciaDiretor == true)
                        {
                            excel.AtribuirTexto(a, 18, $"Ciência do diretor");
                        }

                        if (anexo.Atribuicao.CienciaProfessor == true)
                        {
                            excel.AtribuirTexto(32, 13, $"Ciência do professor");
                        }

                        a++;
                    }

                    excel.SalvarComo(Request.PhysicalApplicationPath + $@"arquivos\temporario\ANEXOS{ano}.xlsx");
                    excel.ExportarPlanilhaComoPDF(Request.PhysicalApplicationPath + $@"arquivos\temporario\downloadArquivos\ANEXOS{ano}.pdf");

                    excel.Fechar();
                }
                catch
                {
                    resposta = "{'situacao':'false'}";
                    Response.Write(resposta.Replace("'", "\""));
                    return;
                }
            }

            if (listaAnos.Count == 1)
            {
                string nomeArquivo = Directory.GetFiles(Request.PhysicalApplicationPath + @"arquivos\temporario\downloadArquivos")[0];

                if (!File.Exists(nomeArquivo))
                {
                    Response.StatusCode = 404;
                    Response.End();
                    return;
                }

                byte[] pdfBytes = File.ReadAllBytes(nomeArquivo);

                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-Disposition", $"inline; filename={nomeArquivo}");
                Response.BinaryWrite(pdfBytes);
                Response.Flush();

                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }
            else
            {
                string caminhoDownload = HttpContext.Current.Server.MapPath("~/arquivos/temporario/downloadArquivos");
                string caminhoDownloadZip = HttpContext.Current.Server.MapPath("~/arquivos/temporario/downloadArquivos.zip");

                if (Directory.Exists(caminhoDownload))
                {
                    ZipFile.CreateFromDirectory(caminhoDownload, caminhoDownloadZip);
                }
                else
                {
                    HttpContext.Current.Response.Write("A pasta não existe.");
                    return;
                }

                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ContentType = "application/zip";
                HttpContext.Current.Response.AddHeader("Content-Disposition", "attachment; filename=arquivos.zip");
                HttpContext.Current.Response.WriteFile(caminhoDownloadZip);
                HttpContext.Current.Response.Flush();

                HttpContext.Current.ApplicationInstance.CompleteRequest();
            }

            string caminhoPasta = Request.PhysicalApplicationPath + @"arquivos\temporario\";

            if (Directory.Exists(caminhoPasta))
            {

                string[] arquivosTemp = Directory.GetFiles((caminhoPasta));
                foreach (string arquivo in arquivosTemp)
                {
                    File.Delete(arquivo);
                }

                if (Directory.Exists(caminhoPasta + $@"downloadArquivos\"))
                {
                    arquivosTemp = Directory.GetFiles((caminhoPasta + $@"downloadArquivos\"));
                    foreach (string arquivo in arquivosTemp)
                    {
                        File.Delete(arquivo);
                    }
                }
            }
        }
    }
}
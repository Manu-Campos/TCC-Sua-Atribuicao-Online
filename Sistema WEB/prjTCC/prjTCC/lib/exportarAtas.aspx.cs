using Microsoft.Office.Interop.Excel;
using prjTCC.instituicao;
using prjTCC.paginas_professor;
using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prjTCC.atribuidor;
using System.Globalization;

namespace prjTCC.lib
{
    public partial class exportarAtas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            //listar anos
            bool acabou = false;
            int i = 0;

            List<string> listaAtas = new List<string>();

            do
            {
                if (Request[$"anos[{i}]"] != null)
                {
                    listaAtas.Add($@"{Request[$"anos[{i}]"]}-{Request[$"tipos[{i}]"]}-{Request[$"disciplinas[{i}]"]}-{Request[$"instituicoes[{i}]"]}");
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

            foreach (string ata in listaAtas)
            {
                string ano = ata.Split('-')[0];
                string tipo = ata.Split('-')[1];
                string disciplina = ata.Split('-')[2];
                string nomeInstituicao = ata.Split('-')[3];
                string[] nome = nomeInstituicao.Split(' ');

                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicao = instituicoes.BuscarEmailInstituicao(nomeInstituicao);

                #region PEB I
                if (tipo == "PEB I")
                {
                    try
                    {
                        string caminho = Request.PhysicalApplicationPath + $@"arquivos\ModeloAtaInstituicaoPEBI";

                        Anexos anexos = new Anexos();
                        List<Anexo> listaAnexos = anexos.buscarDadosAtasPEBI(int.Parse(ano), tipo, disciplina, instituicao.Email);

                        Excel excel = new Excel();
                        excel.AbreArquivo(caminho);
                        excel.EscolhaPlanilha(1);

                        excel.AtribuirTexto(6, 1, $@"{nomeInstituicao}");
                        excel.AtribuirTexto(7, 1, $@"ATA DE ATRIBUIÇÃO DE AULAS {ano} - PEB I");

                        int a = 11;

                        foreach (Anexo anexo in listaAnexos)
                        {
                            if (a != 11)
                            {
                                excel.AdicionarLinha(a);
                                excel.Borda($"A{a}", $"A{a}", "fina");
                                excel.Borda($"B{a}", $"B{a}", "fina");
                                excel.Borda($"C{a}", $"C{a}", "fina");
                                excel.Borda($"D{a}", $"D{a}", "fina");
                                excel.Borda($"E{a}", $"E{a}", "fina");
                                excel.Borda($"F{a}", $"F{a}", "fina");
                                excel.Borda($"G{a}", $"G{a}", "fina");
                                excel.Borda($"H{a}", $"H{a}", "fina");

                            }

                            excel.AtribuirTexto(a, 1, $"{anexo.Ordem}");
                            excel.AtribuirTexto(a, 2, $"{anexo.Professor.Nome}");
                            excel.AtribuirTexto(a, 3, $"{anexo.Professor.Codigo}");
                            excel.AtribuirTexto(a, 4, $"{anexo.Atribuicao.Turma.SiglaTurma}");
                            excel.AtribuirTexto(a, 5, $"{anexo.Atribuicao.Turma.TipoPeriodo.Nome}");
                            excel.AtribuirTexto(a, 6, $"{anexo.Atribuicao.Substituicao}");
                            excel.AtribuirTexto(a, 7, $"{anexo.Professor.Ativo}");

                            if (anexo.Atribuicao.CienciaProfessor == true)
                            {
                                excel.AtribuirTexto(a, 8, $"Ciência do professor");
                            }

                            a++;
                        }

                        excel.AtribuirTexto(a, 1, $@"Por estarem cientes e de acordo com o disposto nas normas elaboradas pela Secretaria da Educação para o ano letivo de {ano}, assinaram a presente ata.");

                        CultureInfo culturaBrasileira = new CultureInfo("pt-BR");
                        string dataPorExtenso = listaAnexos[0].Atribuicao.DataAtribuicao.ToString("dd 'de' MMMM 'de' yyyy", culturaBrasileira);

                        Diretores diretores = new Diretores();
                        string nomeDiretor = diretores.buscarDiretorInstituicao(listaAnexos[0].Atribuicao.DataAtribuicao.Date, instituicao.Email);

                        excel.AtribuirTexto(8, 1, $@"No dia {dataPorExtenso}, sob a presidência do(a) Srs(a). Diretor(a) {nomeDiretor} de acordo com o decreto 15.781 no D.O.M. de 10/10/2023 Da Inscrição e 15.848 no D.O.M. de 01/12/2023 - Da Atribuição de Aulas e Classes aos professores da rede municipal de ensino. Após os esclarecimentos foi iniciada a atribuição de aulas para PEB I de Ensino Fundamental Regular da {nomeInstituicao}, seguindo-se a Classificação abaixo.");

                        excel.SalvarComo(Request.PhysicalApplicationPath + $@"arquivos\temporario\ATA_{nome[1].ToUpper()}_{nome[nome.Length - 1].ToUpper()}_{disciplina.Split(' ')[0].ToUpper()}_{tipo.ToUpper().Replace(" ", "")}_{ano.ToUpper()}");
                        excel.ExportarPlanilhaComoPDF(Request.PhysicalApplicationPath + $@"arquivos\temporario\downloadArquivos\ATA_{nome[1].ToUpper()}_{nome[nome.Length - 1].ToUpper()}_{disciplina.Split(' ')[0].ToUpper()}_{tipo.ToUpper().Replace(" ", "")}_{ano.ToUpper()}.pdf");

                        excel.Fechar();

                    }
                    catch
                    {
                        resposta = "{'situacao':'false'}";
                        Response.ContentType = "application/json";
                        Response.Write(resposta.Replace("'", "\""));
                        Response.End();
                        return;
                    }
                }
                #endregion

                #region PEB III
                if (tipo == "PEB III")
                {
                    try
                    {
                        #region Colocar Turmas
                        Turmas turmas = new Turmas();
                        List<Turma> listaTurmas = turmas.buscarTurmasInstituicao(instituicao.Email, disciplina);

                        int n = 1;

                        while (listaTurmas.Count != 0) {
                            List<Turma> turmasQueFaltaram = new List<Turma>();

                            string caminho = Request.PhysicalApplicationPath + $@"arquivos\ModeloAtaInstituicaoPEBIII";

                            Excel excel = new Excel();
                            excel.AbreArquivo(caminho);
                            excel.EscolhaPlanilha(1);

                            excel.AtribuirTexto(5, 1, $@"{nomeInstituicao}");
                            excel.AtribuirTexto(7, 1, $@"ATA DE ATRIBUIÇÃO DE AULAS {ano} - PEB III");

                            excel.AtribuirTexto(10, 5, $@"{disciplina}");

                            int qtColunasManha = 5;
                            int qtColunasTarde = 17;

                            foreach (Turma turma in listaTurmas)
                            {
                                if (turma.TipoPeriodo.Nome == "Manhã")
                                {
                                    if (qtColunasManha >= 17)
                                    {
                                        turmasQueFaltaram.Add(turma);
                                    }
                                    else
                                    {
                                        excel.AtribuirTexto(13, qtColunasManha, $@"{turma.SiglaTurma}");
                                        qtColunasManha++;
                                    }
                                }

                                if (turma.TipoPeriodo.Nome == "Tarde")
                                {
                                    if (qtColunasTarde >= 25)
                                    {
                                        turmasQueFaltaram.Add(turma);
                                    }
                                    else
                                    {
                                        excel.AtribuirTexto(13, qtColunasTarde, $@"{turma.SiglaTurma}");
                                        qtColunasTarde++;
                                    }
                                }
                            }

                            excel.SalvarComo(Request.PhysicalApplicationPath + $@"arquivos\temporario\ATA_{nome[1].ToUpper()}_{nome[nome.Length - 1].ToUpper()}_{disciplina.Split(' ')[0].ToUpper()}_{tipo.ToUpper().Replace(" ","")}_{ano.ToUpper()}_{n}");

                            excel.Fechar();

                            listaTurmas = turmasQueFaltaram;

                            n++;
                        }
                        #endregion 

                        string[] arquivosDownload = Directory.GetFiles(Request.PhysicalApplicationPath + @"arquivos\temporario");

                        n = 1;

                        foreach (string arquivo in arquivosDownload)
                        {
                            if (arquivo != Request.PhysicalApplicationPath + $@"arquivos\temporario\ATA_{nome[1].ToUpper()}_{nome[nome.Length - 1].ToUpper()}_{disciplina.Split(' ')[0].ToUpper()}_{tipo.ToUpper().Replace(" ", "")}_{ano.ToUpper()}_{n}")
                            {
                                continue;
                            }

                            Excel excel = new Excel();
                            excel.AbreArquivo(arquivo);
                            excel.EscolhaPlanilha(1);

                            #region Atribuir Texto dos professores e suas turmas
                            Anexos anexos = new Anexos();
                            List<Anexo> listaAnexos = anexos.buscarDadosProfessoresAtasPEBIII(int.Parse(ano), tipo, disciplina, instituicao.Email);

                            int a = 15;
                            int professorExiste = 0;

                            foreach (Anexo anexo in listaAnexos)
                            { 

                                #region Adicionar Linha
                                if (a != 15)
                                {
                                    excel.AdicionarLinha(a);
                                    excel.Borda($"A{a}", $"A{a}", "fina");
                                    excel.Borda($"B{a}", $"B{a}", "fina");
                                    excel.Borda($"C{a}", $"C{a}", "fina");
                                    excel.Borda($"D{a}", $"D{a}", "fina");
                                    excel.Borda($"E{a}", $"E{a}", "fina");
                                    excel.Borda($"F{a}", $"F{a}", "fina");
                                    excel.Borda($"G{a}", $"G{a}", "fina");
                                    excel.Borda($"H{a}", $"H{a}", "fina");
                                    excel.Borda($"I{a}", $"I{a}", "fina");
                                    excel.Borda($"J{a}", $"J{a}", "fina");
                                    excel.Borda($"K{a}", $"K{a}", "fina");
                                    excel.Borda($"L{a}", $"L{a}", "fina");
                                    excel.Borda($"M{a}", $"M{a}", "fina");
                                    excel.Borda($"N{a}", $"N{a}", "fina");
                                    excel.Borda($"O{a}", $"O{a}", "fina");
                                    excel.Borda($"P{a}", $"P{a}", "fina");
                                    excel.Borda($"Q{a}", $"Q{a}", "fina");
                                    excel.Borda($"R{a}", $"R{a}", "fina");
                                    excel.Borda($"S{a}", $"S{a}", "fina");
                                    excel.Borda($"T{a}", $"T{a}", "fina");
                                    excel.Borda($"U{a}", $"U{a}", "fina");
                                    excel.Borda($"V{a}", $"V{a}", "fina");
                                    excel.Borda($"W{a}", $"W{a}", "fina");
                                    excel.Borda($"X{a}", $"X{a}", "fina");
                                    excel.Borda($"Y{a}", $"Y{a}", "fina");
                                    excel.Borda($"Z{a}", $"Z{a}", "fina");
                                    excel.Borda($"AA{a}", $"AA{a}", "fina");
                                }
                                #endregion

                                Jornadas jornadas = new Jornadas();
                                Jornada jornada = jornadas.buscarJornadaDoProfessor(anexo.Professor.Codigo, int.Parse(ano));

                                excel.AtribuirTexto(a, 1, $@"{anexo.Ordem}");
                                excel.AtribuirTexto(a, 2, $@"{anexo.Professor.Nome}");
                                excel.AtribuirTexto(a, 3, $@"{anexo.Professor.Codigo}");
                                excel.AtribuirTexto(a, 4, $@"{anexo.Professor.Jornada.CargaHoraria.HTA}");

                                excel.AtribuirTexto(a, 29, $@"{anexo.Professor.Ativo}");

                                if (anexo.Atribuicao.CienciaProfessor == true)
                                {
                                    excel.AtribuirTexto(a, 28, $"Ciência do professor");
                                }

                                #region verificar turmas
                                List<Turma> turmasProfessor = turmas.BuscarTurmasAtribuidasProfessorInstituicao(anexo.Professor.Codigo, int.Parse(ano), instituicao.Email);

                                int qtL = 0;
                                int qtS = 0;

                                bool possui = false;

                                foreach (Turma turma in turmasProfessor)
                                {
                                    string situcao = "";
                                    if (turma.Situacao == "Livre")
                                    {
                                        situcao = "L";
                                        qtL++;
                                    }
                                    else
                                    {
                                        situcao = "S";
                                        qtS++;
                                    }

                                    for (int z = 5; z < 25; z++)
                                    {
                                        string valor = excel.Ler(13, z);
                                        if (valor == turma.SiglaTurma)
                                        {
                                            excel.AtribuirTexto(a, z, $@"{situcao}");
                                            possui = true;
                                            break;
                                        }
                                    }                                   
                                }

                                excel.AtribuirTexto(a, 25, $@"{qtL * jornada.Disciplina.CodigoMultiplicador}");
                                excel.AtribuirTexto(a, 26, $@"{qtS * jornada.Disciplina.CodigoMultiplicador}");
                                excel.AtribuirTexto(a, 27, $@"{(qtL + qtS) * jornada.Disciplina.CodigoMultiplicador}");

                                a++;

                                if (possui == false)
                                {
                                    continue;
                                }
                                else
                                {
                                    professorExiste++;
                                }
                                #endregion
                            }

                            CultureInfo culturaBrasileira = new CultureInfo("pt-BR");
                            string dataPorExtenso = listaAnexos[0].Atribuicao.DataAtribuicao.ToString("dd 'de' MMMM 'de' yyyy", culturaBrasileira);

                            Diretores diretores = new Diretores();
                            string nomeDiretor = diretores.buscarDiretorInstituicao(listaAnexos[0].Atribuicao.DataAtribuicao.Date, instituicao.Email);

                            int linha = a + 2;

                            excel.AtribuirTexto(9, 1, $@"No dia {dataPorExtenso}, sob a presidência do(a) Srs(a). Diretor(a) {nomeDiretor} de acordo com o decreto 15.781 no D.O.M. de 10/10/2023 Da Inscrição e 15.848 no D.O.M. de 01/12/2023 - Da Atribuição de Aulas e Classes aos professores da rede municipal de ensino. Após os esclarecimentos foi iniciada a atribuição de aulas para PEB I de Ensino Fundamental Regular da {nomeInstituicao}, seguindo-se a Classificação abaixo.");
                            excel.AtribuirTexto(a, 1, $@"Por estarem cientes e de acordo com o disposto nas normas elaboradas pela Secretaria da Educação para o ano letivo de {ano}, assinaram a presente ata.");

                            #endregion

                            excel.SalvarComo(arquivo);
                            if (professorExiste != 0)
                            {
                                excel.ExportarPlanilhaComoPDF(Request.PhysicalApplicationPath + $@"arquivos\temporario\downloadArquivos\ATA_{nome[1].ToUpper()}_{nome[nome.Length - 1].ToUpper()}_{disciplina.Split(' ')[0].ToUpper()}_{tipo.ToUpper().Replace(" ","")}_{ano.ToUpper()}.pdf_{n}");
                            }

                            excel.Fechar();

                            n++;
                        }
                    }
                    catch
                    {
                        resposta = "{'situacao':'false'}";
                        Response.Write(resposta.Replace("'", "\""));
                        return;
                    }
                }
                #endregion

            }

            if (Directory.GetFiles(Request.PhysicalApplicationPath + @"arquivos\temporario\downloadArquivos").Length == 1)
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
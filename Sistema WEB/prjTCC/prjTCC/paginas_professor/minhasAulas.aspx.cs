using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mvc;
using System.Runtime.Remoting.Contexts;

namespace prjTCC.professor
{
    public partial class minhasAulas : System.Web.UI.Page
    {
        int codigo = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("minhasAulas");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            codigo = int.Parse(Session["codigo"].ToString());

            if (!IsPostBack)
            {

                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(codigo);

                foreach (var atribuicao in listaAnos)
                {
                    selectAno.Items.Add(atribuicao.DataAtribuicao.Year.ToString());
                }

                EscolaProfessores escolaProfessores = new EscolaProfessores();
                List<EscolaProfessor> ListaEscolas = escolaProfessores.BuscarEscolasProfessor(codigo);

                if (ListaEscolas.Count != 1)
                {
                    selectEscola.Items.Add("Todas as instituições");
                    selectEscola.SelectedIndex = 0;
                }

                foreach (EscolaProfessor escolaProfessor in ListaEscolas)
                {
                    selectEscola.Items.Add(escolaProfessor.Instituicao.Nome);
                }
                
                BuscarTurmas(codigo, int.Parse(selectAno.SelectedValue), null);           
            }
        }

        private void BuscarTurmas(int codigo, int ano, string nomeInstituicao = null)
        {
            litLinhaTabela.Text = "";

            Turmas turmas = new Turmas();
            List<Turma> lista = turmas.BuscarTurmasAtribuidasProfessor(codigo, ano, nomeInstituicao);

            if (lista.Count != 0)
            {
                foreach (var turma in lista)
                {
                    litLinhaTabela.Text += $@"<tr>
                                                <td class='Centro'>{turma.SiglaTurma}</td>
                                                <td class='Centro'>{turma.TipoEnsino.Nome}</td>
                                                <td>{turma.TipoPeriodo.Nome}</td>
                                                <td>{turma.Disciplina.Nome}</td>
                                                <td>{turma.InstituicaoUnica.Nome}</td>
                                            </tr>";
                }
                btnExportar.Enabled = true;
            }
            else
            {
                litLinhaTabela.Text += $@"<tr>
                                            <td class='Centro'>-</td>
                                            <td class='Centro'>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>"; 
                btnExportar.Enabled = false;
            }
        }

        protected void selects_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;
            string instituicao = null;

            ano = int.Parse(selectAno.SelectedValue);

            if (selectEscola.SelectedIndex != 0)
            {
                instituicao = selectEscola.SelectedValue;
            }

            BuscarTurmas(codigo, ano, instituicao);
        }

        protected void btnExportar_Click(object sender, EventArgs e)
        {

            if (!Directory.Exists(Request.PhysicalApplicationPath + $@"arquivos\temporario\"))
            {
                Directory.CreateDirectory(Request.PhysicalApplicationPath + $@"arquivos\temporario\");
            }

            if (!Directory.Exists(Request.PhysicalApplicationPath + @"arquivos\temporario\downloadArquivos"))
            {
                Directory.CreateDirectory(Request.PhysicalApplicationPath + @"arquivos\temporario\downloadArquivos");
            }

            try
            {

                int ano = 0;
                string instituicao = null;

                ano = int.Parse(selectAno.SelectedValue);

                if (selectEscola.SelectedIndex != 0)
                {
                    instituicao = selectEscola.SelectedValue;
                }

                Turmas turmas = new Turmas();
                List<Turma> lista = turmas.BuscarTurmasAtribuidasProfessor(codigo, ano, instituicao);

                string arquivoModelo = Request.PhysicalApplicationPath + $@"arquivos\ModeloMinhasAulas";

                Excel excel = new Excel();
                excel.AbreArquivo(arquivoModelo);
                excel.EscolhaPlanilha(1);
                 
                excel.AtribuirTexto(1, 2, $"Minhas Aulas {ano} - Prefeitura do Guarujá");
                excel.AtribuirTexto(13, 5, $"Emitido em: {DateTime.Now}");
                excel.AtribuirTexto(5, 3, Session["nome"].ToString());
                excel.AtribuirTexto(5, 10, lista.Count.ToString());

                Jornadas jornadas = new Jornadas();
                Jornada jornada = jornadas.buscarJornadaDoProfessor(codigo, ano);

                excel.AtribuirTexto(6, 3, $@"{jornada.CargaHoraria.HTA}h");

                int a = 9;

                foreach (var turma in lista)
                {
                    if (a != 9)
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

                    excel.AtribuirTexto(a, 2, $"{turma.SiglaTurma}");
                    excel.AtribuirTexto(a, 3, $"{turma.TipoEnsino.Nome}");
                    excel.AtribuirTexto(a, 4, $"{turma.TipoPeriodo.Nome}");
                    excel.AtribuirTexto(a, 6, $"{turma.Disciplina.Nome}");
                    excel.AtribuirTexto(a, 8, $"{turma.InstituicaoUnica.Nome}");

                    a++;
                }

                excel.SalvarComo(Request.PhysicalApplicationPath + $@"arquivos\temporario\minhasAulas.xlsx");
                excel.ExportarPlanilhaComoPDF(Request.PhysicalApplicationPath + $@"arquivos\temporario\minhasAulas{ano}.pdf");

                excel.Fechar();

                string caminhoDoArquivo = Request.PhysicalApplicationPath + $@"arquivos\temporario\minhasAulas{ano}.pdf";

                if (!File.Exists(caminhoDoArquivo))
                {
                    Response.StatusCode = 404;
                    Response.End();
                    return;
                }

                byte[] pdfBytes = File.ReadAllBytes(caminhoDoArquivo);

                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-Disposition", $"inline; filename=minhasAulas{ano}.pdf");
                Response.BinaryWrite(pdfBytes);
                Response.Flush();

                HttpContext.Current.ApplicationInstance.CompleteRequest();

                string caminhoArqui = Request.PhysicalApplicationPath + @"arquivos\temporario\";

                if (Directory.Exists(caminhoArqui))
                {

                    string[] arquivosTemp = Directory.GetFiles((caminhoArqui));
                    foreach (string arquivo in arquivosTemp)
                    {
                        File.Delete(arquivo);
                    }
                }

            }
            catch
            {
                litAviso.Text = $@"Não foi possível exportar suas aulas!";
            }
        }
    }
}
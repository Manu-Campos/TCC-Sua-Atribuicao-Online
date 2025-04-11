 using System;
using Microsoft.Office.Interop.Excel;
using ProgramaExcel = Microsoft.Office.Interop.Excel.Application;
using ArquivoExcel = Microsoft.Office.Interop.Excel.Workbook;
using PlanilhaExcel = Microsoft.Office.Interop.Excel.Worksheet;
using AreaPlanilha = Microsoft.Office.Interop.Excel.Range;
using System.Drawing;
using System.Windows.Forms;
using System.Collections.Generic;
using Aspose.Cells;

class Excel
{

    private ProgramaExcel Programa { get; set; }
    public ArquivoExcel ArquivoExcel { get; set; }
    public PlanilhaExcel PlanilhaExcel { get; set; }

    #region Cria Excel
    /// <summary>
    /// Instancia o EXCEL na memória e cria arquivo em Branco
    /// </summary>
    public void CriaExcel()
    {
        try
        {
            Programa = new ProgramaExcel();
            ArquivoExcel = Programa.Workbooks.Add();
        }
        catch (Exception erro)
        {
            throw new Exception(erro.Message);
        }    
    }
    #endregion

    #region Abre Arquivo
    /// <summary>
    /// Abre um arquivo excel já existente
    /// </summary>
    /// <param name="nomeArquivo">Nome completo do arquivo - com caminho</param>
    public void AbreArquivo(string nomeArquivo)
    {
        try
        {
            if (Programa == null)
                Programa = new ProgramaExcel();

            ArquivoExcel = Programa.Workbooks.Open(nomeArquivo);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível abrir o arquivo Excel.");
        }
    }
    #endregion

    #region Escolhe Planilha
    /// <summary>
    /// Escolhe qual Aba deve ficar ativa
    /// </summary>
    /// <param name="qual">Indice da Aba do Arquivo - Iniciando na 1</param>
    public void EscolhaPlanilha(int qual)
    {
        try
        {
            if (ArquivoExcel == null)
                throw new Exception("Nenhum arquivo está em uso!");

            PlanilhaExcel = ArquivoExcel.Worksheets[qual];
        }
        catch (Exception)
        {
            throw new Exception("Planilha inválida!");
        }
    }
    #endregion

    #region Linhas de Grade
    /// <summary>
    /// Ativa ou Desativa as linhas de grade
    /// </summary>
    /// <param name="ativado">true ou false</param>
    public void linhasGrade(bool ativado)
    {
        if (Programa == null)
            throw new Exception("Excel não foi definido, instancie antes de utilizá-lo!");

        Programa.ActiveWindow.DisplayGridlines = ativado;
    }
    #endregion

    #region Cria uma Planilha Antes do Indice referenciado
    /// <summary>
    /// Cria uma nova Aba de Planilha antes do indice referenciado, sendo o primeiro no. 1
    /// </summary>
    /// <param name="indiceRef">Indice da Aba de Referência</param>
    public void CriaPlanilhaAntesDeOutra(int indiceRef)
    {
        try
        {
            if (ArquivoExcel == null)
                throw new Exception("Nenhum arquivo está em uso!");

            PlanilhaExcel = ArquivoExcel.Worksheets[indiceRef];
            ArquivoExcel.Worksheets.Add(PlanilhaExcel);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível criar planilha. Verifique o índice de referência.");
        }
    }
    #endregion

    #region Renomeia Planilha
    /// <summary>
    /// Renomeia a Aba da planilha especificada
    /// </summary>
    /// <param name="qual">Indice da Aba</param>
    /// <param name="nome">Nome para a Aba</param>
    public void RenomeiaPlanilha(int qual, string nome)
    {
        try
        {
            if (ArquivoExcel == null)
                throw new Exception("Nenhum arquivo está em uso!");

            PlanilhaExcel = ArquivoExcel.Worksheets[qual];
            PlanilhaExcel.Name = nome;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível renomear a planilha");
        }
    }
    #endregion

    #region Adicionar Valor Texto
    /// <summary>
    /// Coloca texto em uma célula
    /// </summary>
    /// <param name="linha">número da linha</param>
    /// <param name="coluna">número da coluna (A=1, B=2, etc)</param>
    /// <param name="valor">valor que será atribuído</param>
    public void AtribuirTexto(int linha, int coluna, string valor)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Cells[linha, coluna].Value = valor;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível atribuir o valor para a célula.");
        }
    }
    #endregion

    #region Adicionar Valor Numérico
    /// <summary>
    /// Coloca valor numérico em uma célula
    /// </summary>
    /// <param name="linha">número da linha</param>
    /// <param name="coluna">número da coluna (A=1, B=2, etc)</param>
    /// <param name="valor">valor que será atribuído</param>
    public void AtribuirNumero(int linha, int coluna, double valor)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Cells[linha, coluna].Value = valor;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível atribuir o valor para a célula.");
        }
        
    }
    #endregion

    #region Adicionar Valor de Data
    /// <summary>
    /// Coloca data em uma célula
    /// </summary>
    /// <param name="linha">número da linha</param>
    /// <param name="coluna">número da coluna (A=1, B=2, etc)</param>
    /// <param name="valor">valor que será atribuído</param>
    public void AtribuirData(int linha, int coluna, DateTime valor)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Cells[linha, coluna].Value = valor;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível atribuir o valor para a célula.");
        }
    }
    #endregion

    #region Formata Coluna para Texto
    /// <summary>
    /// Formata uma coluna inteira para exibir valores em Texto
    /// </summary>
    /// <param name="indiceColuna"></param>
    public void FormatarColunaParaTexto(int indiceColuna)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Columns[indiceColuna].NumberFormat = "@"; 
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível formatar a coluna como número.");
        }
    }
    #endregion

    #region Formatar Coluna para Data
    /// <summary>
    /// Formata uma coluna inteira para exibir valores em Data
    /// </summary>
    /// <param name="indiceColuna"></param>
    public void FormatarColunaParaData(int indiceColuna)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Columns[indiceColuna].NumberFormat = "d/mm/yy;@";
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível formatar a coluna como data.");
        }
    }
    #endregion

    #region Ler Célula
    /// <summary>
    /// Le o valor da célula
    /// </summary>
    /// <param name="linha">éndice da linha</param>
    /// <param name="coluna">íncice da coluna (A=1, B=2, etc)</param>
    /// <returns>Valor da Célula no formato desejado</returns>
    public string Ler(int linha, int coluna)
    {
        try
        {
            if (ArquivoExcel == null)
                throw new Exception("Nenhum arquivo está em uso!");

            if (PlanilhaExcel == null)
                throw new Exception("Nenhuma planilha selecionada");

            string valor = PlanilhaExcel.Cells[linha, 1].Value != null ? PlanilhaExcel.Cells[linha, 1].Value.ToString() : null;

            if (!String.IsNullOrEmpty(valor))
            {
                return PlanilhaExcel.Cells[linha, coluna].Value.ToString();
            }
            else
                return "";
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível ler o valor da célula.");
        }
    }
    #endregion

    #region Salva Arquivo
    /// <summary>
    /// Salva o arquivo Excel
    /// </summary>
    public void Salvar()
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        try
        {
            Programa.DisplayAlerts = false;
            ArquivoExcel.Save();
            Programa.DisplayAlerts = true;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível salvar o arquivo.");
        }
    }
    #endregion

    #region Salva Arquivo Nomeando
    /// <summary>
    /// Salva o arquivo Excel
    /// </summary>
    /// <param name="nomeArq">Nome completo do Arquivo - com caminho</param>
    public void SalvarComo(string nomeArq)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        try
        {
            Programa.DisplayAlerts = false;
            ArquivoExcel.SaveAs(nomeArq);
            Programa.DisplayAlerts = true;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível salvar o arquivo.");
        }

    }
    #endregion

    #region Exportar para PDF nomeando
    /// <summary>
    /// Salva o arquivo Excel
    /// </summary>
    /// <param name="nomeArq">Nome completo do Arquivo PDF - com caminho</param>
    public void ExportarPlanilhaComoPDF(string nomeArq)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        try
        {
            ArquivoExcel.ExportAsFixedFormat(XlFixedFormatType.xlTypePDF, nomeArq);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível exportar Planilha para PDF.");
        }
    }
    #endregion

    #region Fechar
    /// <summary>
    /// Fecha a instancia do Excel não gravando o arquivo que estiver aberto
    /// </summary>
    public void Fechar()
    {
        if (ArquivoExcel != null)
        {
            ArquivoExcel.Close();
            System.Runtime.InteropServices.Marshal.ReleaseComObject(ArquivoExcel);
        }
        if (Programa != null)
        {
            Programa.Quit();
            System.Runtime.InteropServices.Marshal.ReleaseComObject(Programa);
        }

        GC.Collect();
        GC.WaitForPendingFinalizers();
    }
    #endregion

    #region Exibir
    /// <summary>
    /// Exibe o Excel na tela
    /// </summary>
    public void Exibir()
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            EscolhaPlanilha(1);

        try
        {
            Programa.Visible = true;
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível abrir o programa para visualização.");
        }
    }
    #endregion

    #region Mesclar
    /// <summary>
    /// Mescla uma região de células
    /// </summary>
    /// <param name="celulaInicio">Célula de início</param>
    /// <param name="celularFim">Célula de fim</param>
    public void Mesclar(string celulaInicio, string celularFim)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.get_Range(celulaInicio, celularFim).Merge(true);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao mesclar as célular.");
        }
    }
    #endregion

    #region Borda ao Redor
    /// <summary>
    /// Cria borda continua e média ao redor das células
    /// </summary>
    /// <param name="celulaInicio">Célula de início</param>
    /// <param name="celularFim">Célula de fim</param>
    /// <param name="espessura">fina, media ou grossa</param>
    public void Borda(string celulaInicio, string celularFim, string espessura)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            AreaPlanilha regiao = PlanilhaExcel.get_Range(celulaInicio, celularFim);
            if (espessura == "fina")    { regiao.BorderAround(XlLineStyle.xlContinuous, XlBorderWeight.xlThin, XlColorIndex.xlColorIndexAutomatic, XlColorIndex.xlColorIndexAutomatic); }
            if (espessura == "media")   { regiao.BorderAround(XlLineStyle.xlContinuous, XlBorderWeight.xlMedium, XlColorIndex.xlColorIndexAutomatic, XlColorIndex.xlColorIndexAutomatic); }
            if (espessura == "grossa")  { regiao.BorderAround(XlLineStyle.xlContinuous, XlBorderWeight.xlThick, XlColorIndex.xlColorIndexAutomatic, XlColorIndex.xlColorIndexAutomatic); }
        }
        catch (Exception)
        {
            throw new Exception("Erro ao definir borda para células");
        }
    }
    #endregion

    #region Negrito
    /// <summary>
    /// Coloca negrito nas células
    /// </summary>
    /// <param name="celulaInicio">Célula de início</param>
    /// <param name="celularFim">Célula de fim</param>
    public void Negrito(string celulaInicio, string celularFim)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            AreaPlanilha regiao = PlanilhaExcel.get_Range(celulaInicio, celularFim);
            regiao.Font.Bold = true;
        }
        catch (Exception)
        {
            throw new Exception("Erro ao definir borda para células");
        }
    }
    #endregion

    #region Alinhamento
    /// <summary>
    /// Realiza o alinhameto na célula
    /// </summary>
    /// <param name="celulaInicio">Célula de início</param>
    /// <param name="celularFim">Célula de fim</param>
    /// <param name="tipo">Tipo do Alinhamento ( esquerda, direita ou centro )</param>
    public void Alinhamento(string celulaInicio, string celularFim, string tipo)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            int numTipo=0;
            AreaPlanilha regiao = PlanilhaExcel.get_Range(celulaInicio, celularFim);
            switch (tipo)
            {
                case "esquerda": numTipo = 1; break;
                case "direita":  numTipo = 2; break;
                case "centro": numTipo = 3; break;
                default: numTipo = 1; break;
            }
            regiao.HorizontalAlignment = numTipo;
            regiao.VerticalAlignment = numTipo;
        }
        catch (Exception)
        {
            throw new Exception("Erro ao definir alinhamento para células");
        }
    }
    #endregion

    #region AutoSize
    /// <summary>
    /// Ajusta baseado nas colunas especificadas
    /// </summary>
    /// <param name="celulaInicio">Célula de Inicio</param>
    /// <param name="celularFim">Célula de Fim</param>
    public void ajustaTamanho(string celulaInicio, string celularFim)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            AreaPlanilha regiao = PlanilhaExcel.get_Range(celulaInicio, celularFim);
            regiao.EntireColumn.AutoFit();
        }
        catch (Exception)
        {
            throw new Exception("Erro ao ajustar largura pelo conteúdo maior.");
        }
    }
    #endregion

    #region AreaPrint
    /// <summary>
    /// Define a área de impressão
    /// </summary>
    /// <param name="celulaInicio">Célula de Início</param>
    /// <param name="celularFim">Célula de Fim</param>
    public void AreaImpressao(string celulaInicio, string celularFim)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            // Região
            AreaPlanilha regiao = PlanilhaExcel.get_Range(celulaInicio, celularFim);

            // Configurações da página
            var pagina = PlanilhaExcel.PageSetup;

            pagina.Zoom = false;
            pagina.PaperSize = XlPaperSize.xlPaperA4; // A4 papersize

            // Orientação do Papel
            pagina.Orientation = XlPageOrientation.xlPortrait; // (ou XlPageOrientation.xlLandscape)

            // Ajuste em Quantidade de Páginas
            pagina.FitToPagesWide = 1;
            pagina.FitToPagesTall = 50;

            // Definição de Margens
            pagina.LeftMargin = Programa.InchesToPoints(0.6);
            pagina.RightMargin = Programa.InchesToPoints(0.6);
            pagina.TopMargin = Programa.InchesToPoints(0.6);
            pagina.BottomMargin = Programa.InchesToPoints(0.6);
            pagina.HeaderMargin = Programa.InchesToPoints(0.2);
            pagina.FooterMargin = Programa.InchesToPoints(0.2);

            // Alinhamento
            pagina.CenterHorizontally = true;

            regiao.PrintOutEx();
        }
        catch (Exception)
        {
            throw new Exception("Erro ao definir Área de Impressão.");
        }
    }
    #endregion

    #region Esconder Coluna
    /// <summary>
    /// Esconde uma coluna
    /// </summary>
    /// <param name="LetraColuna">Letra da Coluna</param>
    public void EsconderColuna(string LetraColuna)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            AreaPlanilha regiao = PlanilhaExcel.get_Range(LetraColuna + ":" + LetraColuna).EntireColumn.Hidden = true;
        }
        catch (Exception)
        {
            throw new Exception("Erro ao esconder coluna.");
        }
    }
    #endregion

    #region Converter Para Excel

    public void SalvarDgvEmExcel(DataGridView dgv,string caminho)
    {
        Fechar();
        try
        {
            CriaExcel();

            EscolhaPlanilha(1);

            int cont = 1;

            foreach (DataGridViewColumn column in dgv.Columns)
            {
                AtribuirTexto(1, cont, column.HeaderText);
                cont++;
            }

            cont = 2;

            foreach (DataGridViewRow row in dgv.Rows)
            {
                int i = 1;
                foreach (DataGridViewCell cell in row.Cells)
                {
                    if (!row.IsNewRow)
                        AtribuirTexto(cont, i, cell.Value.ToString());
                    i++;
                }
                cont++;
            }

            SalvarComo(caminho);
        }
        catch
        {
            throw new Exception("Deu erro");
        }
        finally
        {
            Fechar();
        }
    }

    #endregion

    #region Importar

    public void Importar(string caminho,ETipoUsuarios eTipoUsuarios)
    {
        try
        {
            AbreArquivo(caminho);
            EscolhaPlanilha(1);

            switch (eTipoUsuarios) 
            {
                case ETipoUsuarios.Turma:
                    try
                    {
                        for (int i = 2; i < PlanilhaExcel.UsedRange.Rows.Count; i++)
                        {
                            List<string> linha = new List<string>();

                            for (int j = 1; j <= PlanilhaExcel.UsedRange.Columns.Count; j++)
                            {
                                string celula = Ler(i, j);
                                linha.Add(celula);
                            }

                            Instituicoes instituicoes = new Instituicoes();
                            Turmas turmas = new Turmas();

                            Turma turma = new Turma();
                            turma.Sigla = linha[0];
                            turma.Nome = linha[1];
                            turma.Instituicao = instituicoes.Buscar(linha[5]);
                            turma.TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino),linha[3]);
                            turma.Periodo = linha[4];

                            turmas.Adicionar(turma);
                        }
                    }
                    catch (Exception ex)
                    {
                        if(ex.Message.ToString().Contains("Duplicate entry"))
                        {
                            throw new Exception($"A turma já existe");
                        }
                        else
                        {
                            throw new Exception(ex.Message);
                        }
                    }
                break;

                case ETipoUsuarios.Supervisor:
                    try
                    {
                        for (int i = 2; i <= PlanilhaExcel.UsedRange.Rows.Count; i++)
                        {
                            List<string> linha = new List<string>();

                            for (int j = 1; j <= PlanilhaExcel.UsedRange.Columns.Count; j++)
                            {
                                string celula = Ler(i, j);
                                linha.Add(celula);
                            }

                            Instituicoes instituicoes = new Instituicoes();
                            Supervisores supervisores = new Supervisores();

                            Supervisor Supervisor = new Supervisor();
                            Supervisor.Professor.Codigo = int.Parse(linha[0]);
                            Supervisor.Email = linha[1];
                            Supervisor.Professor.Nome = linha[2];
                            Supervisor.Professor.Numero = linha[3];
                            Supervisor.SiglaDisciplina = linha[4];
                            Supervisor.TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino), linha[5]);

                            supervisores.Adicionar(Supervisor);
                        }
                    }
                    catch (Exception ex)
                    {
                        if (ex.Message.ToString().Contains("Duplicate entry"))
                        {
                            throw new Exception($"O supervisor já existe");
                        }
                        else
                        {
                            throw new Exception(ex.Message);
                        }
                    }
                    break;

                case ETipoUsuarios.Instituicao:
                    try
                    {
                        for (int i = 2; i <= PlanilhaExcel.UsedRange.Rows.Count; i++)
                        {
                            List<string> linha = new List<string>();

                            for (int j = 1; j <= PlanilhaExcel.UsedRange.Columns.Count; j++)
                            {
                                string celula = Ler(i, j);
                                linha.Add(celula);
                            }

                            Instituicoes instituicoes = new Instituicoes();
                            Instituicao instituicao = new Instituicao();

                            instituicao.Email = linha[0];
                            instituicao.Nome = linha[1];
                            instituicao.Telefone = linha[2];

                            instituicoes.Adicionar(instituicao);
                        }
                    }
                    catch (Exception ex)
                    {
                        if (ex.Message.ToString().Contains("Duplicate entry"))
                        {
                            throw new Exception($"A instituicao já existe");
                        }
                        else
                        {
                            throw new Exception(ex.Message);
                        }
                    }
                break;

                case ETipoUsuarios.Diretor:
                    try
                    {
                        for (int i = 2; i <= PlanilhaExcel.UsedRange.Rows.Count; i++)
                        {
                            List<string> linha = new List<string>();

                            for (int j = 1; j <= PlanilhaExcel.UsedRange.Columns.Count; j++)
                            {
                                string celula = Ler(i, j);
                                linha.Add(celula);
                            }

                            Diretores Diretores = new Diretores();
                            Instituicoes Instituicoes = new Instituicoes();
                            Diretor Diretor = new Diretor();

                            List<Instituicao> ListaInstituicoes = Instituicoes.Listar();

                            Diretor.Professor.Codigo = int.Parse(linha[0]);
                            Diretor.Instituicao.Email = linha[5];
                            Diretor.DataInicioAtividade = DateTime.Parse(linha[3]);
                            Diretor.DataFimAtividade = DateTime.Parse(linha[4]);

                            Diretores.Adicionar(Diretor);
                        }
                    }
                    catch (Exception ex)
                    {
                        if (ex.Message.ToString().Contains("Duplicate entry"))
                        {
                            throw new Exception($"A instituicao já existe");
                        }
                        else
                        {
                            throw new Exception(ex.Message);
                        }
                    }
                break;

                case ETipoUsuarios.Professor:
                    try
                    {
                        try
                        {
                            for (int i = 2; i <= PlanilhaExcel.UsedRange.Rows.Count; i++)
                            {
                                List<string> linha = new List<string>();

                                for (int j = 1; j <= PlanilhaExcel.UsedRange.Columns.Count; j++)
                                {
                                    string celula = Ler(i, j);
                                    linha.Add(celula);
                                }

                                Professores Professores = new Professores();
                                Instituicoes Instituicoes = new Instituicoes();

                                Professor Professor = new Professor();

                                Professor.Codigo = int.Parse(linha[0].ToString());
                                Professor.Email = linha[1];
                                Professor.Nome = linha[2];
                                Professor.QuantidadeFilhos = int.Parse(linha[3]);
                                Professor.DataNascimento = DateTime.Parse(linha[4]);
                                Professor.DataEntrada = DateTime.Parse(linha[5]);
                                Professor.QuantidadePontuacao = int.Parse(linha[6]);
                                Professor.Numero = linha[7];
                                Professor.Situacao = linha[8];
                                Professor.Disciplina = linha[9];
                                Professor.TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino), linha[10]);

                                Professores.Adicionar(Professor);
                                
                                List<Instituicao> ListaInstituicoes = Instituicoes.Listar();

                                string EmailSede = ListaInstituicoes.Exists(li => li.Nome == linha[11]) ? ListaInstituicoes.Find(li => li.Nome == linha[11]).Email : null;
                                string EmailSecundario = ListaInstituicoes.Exists(li => li.Nome == linha[12]) ? ListaInstituicoes.Find(li => li.Nome == linha[12]).Email : null;

                                EscolaProfessores EscolaProfessores = new EscolaProfessores();
                                EscolaProfessores.inserirInstituicoesProfessor(EmailSede,EmailSecundario,Professor.Codigo);

                            }
                        }
                        catch (Exception ex)
                        {
                            if (ex.Message.ToString().Contains("Duplicate entry"))
                            {
                                throw new Exception($"A instituicao já existe");
                            }
                            else
                            {
                                throw new Exception(ex.Message);
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        if (ex.Message.ToString().Contains("Duplicate entry"))
                        {
                            throw new Exception($"A instituicao já existe");
                        }
                        else
                        {
                            throw new Exception(ex.Message);
                        }
                    }
                   break;
            }
        }
        catch
        {
            return;
        }
        finally
        {
            Fechar();
        }
        
    }

    #endregion

}

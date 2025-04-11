using System;
using Microsoft.Office.Interop.Excel;
using ProgramaExcel = Microsoft.Office.Interop.Excel.Application;
using ArquivoExcel = Microsoft.Office.Interop.Excel.Workbook;
using PlanilhaExcel = Microsoft.Office.Interop.Excel.Worksheet;
using AreaPlanilha = Microsoft.Office.Interop.Excel.Range;
using System.Drawing;

class Excel
{

    private ProgramaExcel Programa { get; set; }
    private ArquivoExcel ArquivoExcel { get; set; }
    private PlanilhaExcel PlanilhaExcel { get; set; }

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
        catch (Exception)
        {
            throw new Exception("Não foi possível criar Planilha Excel vazia!");
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

            var celulaInicial = PlanilhaExcel.Cells[linha, 1];
            string valor = celulaInicial?.Value != null ? celulaInicial.Value.ToString() : null;

            if (!string.IsNullOrEmpty(valor))
            {
                var celulaDestino = PlanilhaExcel.Cells[linha, coluna];
                return celulaDestino?.Value != null ? celulaDestino.Value.ToString() : "";
            }
            else
            {
                return "";
            }
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
            // Configurações de página para caber em uma página
            var pagina = PlanilhaExcel.PageSetup;
            pagina.Zoom = false;               // Desativa o zoom para permitir ajustes de página
            pagina.FitToPagesWide = 1;         // Ajusta para caber em uma página de largura
            pagina.FitToPagesTall = false;     // Permite quantas páginas forem necessárias em altura

            // Exporta para PDF
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

    #region Adicionar Coluna
    /// <summary>
    /// Adiciona uma coluna na posição especificada (1 = A, 2 = B, etc.)
    /// </summary>
    /// <param name="indiceColuna">Índice da coluna onde a nova coluna será inserida</param>
    public void AdicionarColuna(int indiceColuna)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Columns[indiceColuna].Insert(XlInsertShiftDirection.xlShiftToRight);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível adicionar a coluna.");
        }
    }
    #endregion

    #region Adicionar Linha
    /// <summary>
    /// Adiciona uma linha na posição especificada
    /// </summary>
    /// <param name="indiceLinha">Índice da linha onde a nova linha será inserida</param>
    public void AdicionarLinha(int indiceLinha)
    {
        if (ArquivoExcel == null)
            throw new Exception("Nenhum arquivo está em uso!");

        if (PlanilhaExcel == null)
            throw new Exception("Nenhuma planilha selecionada");

        try
        {
            PlanilhaExcel.Rows[indiceLinha].Insert(XlInsertShiftDirection.xlShiftDown);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível adicionar a linha.");
        }
    }
    #endregion
}

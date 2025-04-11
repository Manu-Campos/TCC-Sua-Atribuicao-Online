using System;
using System.IO;
using Microsoft.Office.Interop.Word;
using ProgramaWord = Microsoft.Office.Interop.Word.Application;
using DocumentoWord = Microsoft.Office.Interop.Word.Document;

class Word
{
    private ProgramaWord Programa { get; set; }
    private DocumentoWord ArquivoWord { get; set; }

    #region Cria Word
    /// <summary>
    /// Instancia o WORD na memória e cria arquivo em Branco
    /// </summary>
    public void CriaWord()
    {
        try
        {
            Programa = new ProgramaWord();
            ArquivoWord = Programa.Documents.Add();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível Criar arquivo em branco do Word!");
        }
    }
    #endregion

    #region Abre Arquivo
    /// <summary>
    /// Abre um arquivo word já existente
    /// </summary>
    /// <param name="nomeArquivo">Nome completo do arquivo - com caminho</param>
    public void AbreArquivo(string nomeArquivo)
    {
        try
        {
            if (Programa == null)
                Programa = new ProgramaWord();

            ArquivoWord = Programa.Documents.Open(nomeArquivo);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível abrir o arquivo");
        }
    }
    #endregion

    #region Adicionar Paragrafo
    /// <summary>
    /// Cria um parágrafo de Texto
    /// </summary>
    /// <param name="texto">Texto do parágrafo</param>
    /// <param name="negrito">Define se paragrafo é negrito</param>
    /// <param name="alinhamento">Define alinhamento (esquerda, centro, direita, justificado), caso não seja especificado será esquerda</param>
    public void NovoParagrafo(string texto, bool negrito, string alinhamento = null)
    {
        if (ArquivoWord == null)
            throw new Exception("Nenhum arquivo está em uso para poder criar parágrafo!");

        try
        {
            Paragraph paragrafo = ArquivoWord.Content.Paragraphs.Add();
            paragrafo.Range.Text = texto;
            paragrafo.Range.Font.Bold = negrito ? 1 : 0;
            switch (alinhamento)
            {
                case "esquerda": paragrafo.Alignment = WdParagraphAlignment.wdAlignParagraphLeft; break;
                case "centro": paragrafo.Alignment = WdParagraphAlignment.wdAlignParagraphCenter; break;
                case "direita": paragrafo.Alignment = WdParagraphAlignment.wdAlignParagraphRight; break;
                case "justificado": paragrafo.Alignment = WdParagraphAlignment.wdAlignParagraphJustify; break;
                default: paragrafo.Alignment = WdParagraphAlignment.wdAlignParagraphLeft; break;
            }
            paragrafo.Range.InsertParagraphAfter();
        }
        catch (Exception)
        {
            throw new Exception("Erro ao tentar adicionar o parágrafo!");
        }
    }
    #endregion

    #region Salva Arquivo
    /// <summary>
    /// Salva o arquivo Word
    /// </summary>
    public void Salvar()
    {
        try
        {
            ArquivoWord.Save();
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível salvar o arquivo.");
        }
    }
    #endregion

    #region Salva Arquivo Nomeando
    /// <summary>
    /// Salva o arquivo Word
    /// </summary>
    /// <param name="nomeArq">Nome completo do Arquivo - com caminho</param>
    public void SalvarComo(string nomeArq)
    {
        try
        {
            ArquivoWord.SaveAs2(nomeArq);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível salvar o arquivo.");
        }
    }
    #endregion

    #region Salva Arquivo em PDF
    /// <summary>
    /// Salva o arquivo Word como PDF
    /// </summary>
    /// <param name="nomeArq">Nome completo do Arquivo - com caminho</param>
    public void ExportarComoPDF(string nomeArq)
    {
        try
        {
            ArquivoWord.SaveAs2(nomeArq, WdSaveFormat.wdFormatPDF);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível exportar como PDF.");
        }
    }
    #endregion

    #region Fechar
    /// <summary>
    /// Fecha a instancia do Word não gravando o arquivo que estiver aberto
    /// </summary>
    public void Fechar()
    {
        if (ArquivoWord != null)
        { 
            ArquivoWord.Close();
            System.Runtime.InteropServices.Marshal.ReleaseComObject(ArquivoWord); 
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
    /// Exibe o Word na tela
    /// </summary>
    public void Exibir()
    {
        if (Programa != null)
            Programa.Visible = true;
    }
    #endregion

    #region Copiar de um Modelo
    /// <summary>
    /// Cria um arquivo baseado em um modelo
    /// </summary>
    /// <param name="modelo">Caminho completo do arquivo de modelo</param>
    /// <param name="arquivoCopia">Caminho completo do novo arquivo</param>
    public void CopiarDoModelo(string modelo, string arquivoCopia)
    {
        try
        {
            string arqOrigem = modelo;
            string arqDestino = arquivoCopia;
            File.Copy(arqOrigem, arqDestino, true);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível copiar o modelo. Tente novamente.");
        }
    }
    #endregion

    #region Substituir Texto
    /// <summary>
    /// Substitui todas as ocorrencias de um texto por outro
    /// </summary>
    /// <param name="textoAtual">Chave a ser procurada (no modelo ela deve estar entre #)"</param>
    /// <param name="novoTexto">Novo texto que ficará no lugar da #chave# procurada</param>
    public void Substituir(string textoAtual, string novoTexto)
    {
        try
        {
            object ProcurarPor = $@"#{textoAtual}#";
            object SubstituirPor = novoTexto;
            object todasOcorrencias = WdReplace.wdReplaceAll;

            Find procurar = Programa.Selection.Find;
            procurar.Execute(FindText: ref ProcurarPor, ReplaceWith: ref SubstituirPor, Replace: ref todasOcorrencias);
        }
        catch (Exception)
        {
            throw new Exception("Erro ao substituir o texto. Tente novamente.");
        }
    }
    #endregion

    #region Quebra de Página
    public void QuebraPagina()
    {
        try
        {
            Paragraph paragrafo = ArquivoWord.Content.Paragraphs.Add();
            paragrafo.Range.InsertBreak(WdBreakType.wdPageBreak);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível adicionar a quebra de linha");
        }
    }
    #endregion
    
}

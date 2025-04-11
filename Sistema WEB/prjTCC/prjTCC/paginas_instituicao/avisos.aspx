<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_instituicao/Instituicao.Master" AutoEventWireup="true" CodeBehind="avisos.aspx.cs" Inherits="prjTCC.instituicao.avisos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAvisos.css">
    <title>Avisos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Avisos</h1>
    <div id="areaDivAvisos">
        <div class="areaConteudo" id="envio">
            <h2 class="SemMargin">Envio de dados</h2>
            <div id="divEnvio">
                <p class="Subtitulo SemMargin">Assunto:</p>
                <asp:DropDownList ID="ddlAssunto" runat="server"></asp:DropDownList>
            </div>
            <div id="mensAviso">
                <div id="destinatario">
                    <p>Para:</p>
                    <p id="destAtribuidor"><asp:Literal ID="litDestinatario" runat="server"></asp:Literal></p>
                </div>
                <hr class="SemMargin">
                <asp:TextBox ID="txtMensagemAviso" runat="server" TextMode="MultiLine" cols="20" rows="100" maxlength="240" CssClass="mensagemAviso"></asp:TextBox>
                <div id="itensAviso">
                     <asp:Button ID="btnRemoverArquivos" runat="server" Text="Remover" CssClass="btnRemover" OnClick="btnRemoverArquivos_Click" Enabled="false"/>
                    <div id="arquivosEscolhidos">
                        <asp:Literal ID="litArquivos" runat="server"></asp:Literal>
           
                    </div>
                    <p class="SemMargin" id="qtdCaracteres">0/240</p>
                    <div id="fundoUpload">
                        <img src="../imagens/icones/upload.png" alt="" id="uploadIcon">
                    </div>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="fileUpload escondido" name="image[]"  multiple="multiple" AllowMultiple="True" /> 
                    <asp:Button ID="btnEscolherArquivos" runat="server" CssClass="BotaoEscolherArquivo escondido" OnClick="btnEscolherArquivos_Click" />
                    <%--<input type="file" name="image[]" ID="fileUpload" Class="fileUpload escondido" multiple="multiple" webkitdirectory =""/>--%>
                </div>
            </div>
            <div class="botao">
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                <asp:Literal ID="litAvisoSucesso" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="areaConteudo" id="historico">
            <h2 class="SemMargin">Avisos enviados</h2>
            <div id="filtrosAviso">
                <div>
                    <p class="Subtitulo SemMargin">Assunto:</p>
                    <asp:DropDownList ID="ddlAssuntoAvisosEnviados" runat="server" OnSelectedIndexChanged="ddlAssuntoAvisosEnviados_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                </div>
                <div>
                    <p class="Subtitulo SemMargin">Classificar por:</p>
                    <asp:DropDownList ID="ddlClassificacao" runat="server" OnSelectedIndexChanged="ddlClassificacao_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                </div>
            </div>
            <div class="tabelaFixa">
                <table>
                    <thead>
                        <tr>
                            <th class="Inicio">Assunto</th>
                            <th class="Inicio">Data envio</th>
                            <th class="Inicio">Mensagem</th>
                            <th class="Inicio">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                        <%--<tr>
                            <td>Afastamento</td>
                            <td>05/03/2024</td>
                            <td>"Olá, preciso que envie um..."</td>
                            <td>Não visualizado</td>
                        </tr>--%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptAvisos.js"></script>
</asp:Content>

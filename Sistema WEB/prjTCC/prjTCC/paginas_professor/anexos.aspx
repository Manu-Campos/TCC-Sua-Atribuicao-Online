<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_professor/Professor.Master" AutoEventWireup="true" CodeBehind="anexos.aspx.cs" Inherits="prjTCC.paginas_professor.anexos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAtas.css">
    <title>Anexos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoinferior" runat="server">
    <h1 class="tituloPagina">Anexos</h1>
    <h2 class="tituloFiltrar">Filtrar</h2>
    <div id="filtrosAtas">
        <div id="digitarFiltro">
            <asp:TextBox CssClass="barraPesquisa"  TextMode="Search" placeholder="Pesquisar..." runat="server"></asp:TextBox>
            <div>
                <button id="BotaoBuscar">
                    <img src="../imagens/icones/lupa.png" alt="icone_email">
                </button>                
            </div>
        </div>
        <div id="areaFiltros" class="areaAnexos">
             <asp:DropDownList id="selectAno" runat="server" CssClass="selectAno" onSelectedIndexChanged="select_SelectedIndexChanged" AutoPostBack="true">
        </asp:DropDownList>
        </div>
       
    </div>
    <section>
        <div class="tabelaFixa">
            <table class="tabelaAtas">
            <thead>
                <tr>
                    <th>\</th>
                    <th class="Inicio">Arquivo</th>
                    <th>Ano</th>
                    <th>Jornada</th>
                </tr>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                <%--<tr id="linhaTabela">
                        <td class="Input Centro"><input type="checkbox" name="documentos" class="checkbox checkboxDocumentos"></td>
                        <td>ANEXO_123456.pdf</td>
                        <td class="Centro">2019</td>
                        <td>32hrs</td>
                        <td>E.M. Profª Lúcia Flora dos Santos</td>
                    </tr>--%>
            </tbody>
            </table>
        </div>
        </section>
    <div class="botao">
        <p class='erro pAviso'></p>
        <asp:Button ID="btnExportar" CssClass="btnExportar" runat="server" Text="Exportar em PDF"/>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
    <script src="../js/scriptExportarAnexos.js"></script>
</asp:Content>

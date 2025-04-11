<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="atas.aspx.cs" Inherits="prjTCC.atribuidor.atas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAtas.css">
    <title>Atas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Atas</h1>
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
        <div id="areaFiltros">
             <asp:DropDownList id="selectAno" CssClass="selectAno" runat="server" OnSelectedIndexChanged="selectAno_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList id="selectTipo" CssClass="selectTipo" runat="server" OnSelectedIndexChanged="selectTipo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList id="selectDisciplina" CssClass="selectDisciplina" runat="server" OnSelectedIndexChanged="selectDisciplina_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList id="selectInstituicao" CssClass="selectEscola" runat="server" OnSelectedIndexChanged="selectInstituicao_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
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
                    <th>Tipo</th>
                    <th class="Inicio">Disciplina</th>
                    <th class="Inicio">Instituição</th>
                </tr>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                <%--<tr id="linhaTabela">
                    <td class="Input Centro"><input type="checkbox" name="documentos" class="checkbox checkboxDocumentos"></td>
                    <td>ATA_123456.pdf</td>
                    <td class="Ano Centro">2019</td>
                    <td class="Disciplina">Matemática</td>
                    <td>E.M. Profª Lúcia Flora dos Santos</td>
                </tr>--%>
            </tbody>
            </table>
        </div>
        </section>
    <div class="botao">
        <p class='erro pAviso'></p>
        <asp:Button ID="btnExportar" CssClass="btnExportar" runat="server" Text="Exportar em PDF" />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
    <script src="../js/scriptExportarAtas.js"></script>
</asp:Content>
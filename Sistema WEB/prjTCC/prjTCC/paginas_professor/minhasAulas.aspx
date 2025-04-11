<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_professor/Professor.Master" AutoEventWireup="true" CodeBehind="minhasAulas.aspx.cs" Inherits="prjTCC.professor.minhasAulas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloMinhasAulas.css">
    <title>Minhas aulas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoinferior" runat="server">
    <h1 class="tituloPagina">Minhas aulas</h1>
    <h2 class="tituloFiltrar">Filtrar</h2>
    <div id="filtros">
        <div id="digitarFiltro">
            <asp:TextBox CssClass="barraPesquisa"  TextMode="Search" placeholder="Pesquisar..." runat="server"></asp:TextBox>
            <div>
                <button id="BotaoBuscar">
                    <img src="../imagens/icones/lupa.png" alt="icone_email">
                </button>                
            </div>
        </div>
        <div id="areaFiltros">
                    <asp:DropDownList id="selectAno" runat="server" CssClass="selectAno" onSelectedIndexChanged="selects_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>

                <asp:DropDownList id="selectEscola" runat="server" CssClass="selectEscola" onSelectedIndexChanged="selects_SelectedIndexChanged" AutoPostBack="true">
                </asp:DropDownList>
        </div>

    </div>
    <section>
        <div class="tabelaFixa">
            <table>
                <thead>
                    <th>Turma</th>
                    <th>Tipo</th>
                    <th class="Inicio">Período</th>
                    <th class="Inicio">Disciplina</th>
                    <th class="Inicio">Escola</th>
                </thead>
                <tbody id="tabela">
                    <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                    <%--<tr>
                        <td class="Centro">1A</td>
                        <td class="Centro">PEB I</td>
                        <td>Manhã</td>
                        <td>Núcleo Comum</td>
                        <td>Angelina Daige</td>
                    </tr> --%> 
                </tbody>
            </table>
        </div>
    </section>
    <div class="botao">
        <p class='erro pAviso'><asp:Literal ID="litAviso" runat="server"></asp:Literal></p>
        <asp:Button ID="btnExportar" CssClass="btnExportar" runat="server" Text="Exportar em pdf" OnClick="btnExportar_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
</asp:Content>
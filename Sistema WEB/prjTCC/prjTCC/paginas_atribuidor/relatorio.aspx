<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="relatorio.aspx.cs" Inherits="prjTCC.atribuidor.relatorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloRelatorio.css">
    <title>Relatório RH</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Relatório RH</h1>
    <h2 class="tituloFiltrar">Filtrar</h2>
    <div id="filtrosRelatorio">
        <div id="digitarFiltro">
            <asp:TextBox CssClass="barraPesquisa"  TextMode="Search" placeholder="Pesquisar..." runat="server"></asp:TextBox>
            <div>
                <button id="BotaoBuscar">
                    <img src="../imagens/icones/lupa.png" alt="icone_email">
                </button>                
            </div>
        </div>
        <div id="areaFiltros">
            <asp:DropDownList ID="ddlTipo" name="Tipo" CssClass="selectTipo" runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList ID="ddlDisciplina" name="Disciplina" CssClass="selectDisciplina" runat="server" OnSelectedIndexChanged="ddlDisciplina_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList ID="ddlInstituicao" name="Escola" CssClass="selectEscola" runat="server" OnSelectedIndexChanged="selectEscola_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </div>
      
    </div>
    <section>
        <div class="tabelaFixa">
            <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Tipo</th>
                    <th>Período</th>
                    <th class="Inicio">Disciplina</th>
                    <th class="Inicio">Escola</th>
                </tr>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
<%--                <tr>
                    <td class="Ano Centro">1° A</td>
                    <td class="Tipo Centro">PEB I</td>
                    <td class="Periodo Centro">Manhã</td>
                    <td class="Disciplina">Núcleo comum</td>
                    <td class="Escola">E.M. Profª Lúcia Flora dos Santos</td>
                </tr>--%>
            </tbody>
            </table>
        </div>
    </section>
    <div class="botao">
        <p class='erro pAviso'></p>
        <asp:Button id="btnEnviarRelatorio" runat="server" Text="Enviar" CssClass="btnEnviar"/>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
    <script src="../js/scriptEnviarRelatorio.js"></script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_instituicao/Instituicao.Master" AutoEventWireup="true" CodeBehind="andamento.aspx.cs" Inherits="prjTCC.instituicao.andamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAndamento.css">
    <title>Andamento</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Andamento</h1>
    <h2 class="tituloFiltrar">Filtrar</h2>
    <div id="filtrosEscolas">
        <div id="digitarFiltro">
            <asp:TextBox CssClass="barraPesquisa"  TextMode="Search" placeholder="Pesquisar..." runat="server"></asp:TextBox>
            <div>
                <button id="BotaoBuscar">
                    <img src="../imagens/icones/lupa.png" alt="icone_email">
                </button>                
            </div>
        </div>
        <asp:DropDownList ID="selectAno" CssClass="selectAno" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectAno_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="selectTipo" CssClass="selectTipo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectTipo_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="selectDisciplina" CssClass="selectDisciplina" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectDisciplina_SelectedIndexChanged"></asp:DropDownList>
    </div>
    <div class="tabelaFixa tabelaEscolaEspecifica">
        <table>
            <thead>
                <th class="turma">Turma</th>
                <th class="tipo">Tipo</th>
                <th class="Inicio" id="Disciplina">Disciplina</th>
                <th class="Inicio">Professor Atribuído</th>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                <%--<tr class="situacaoTurma">
                    <td class="Centro">1A</td>
                    <td class="Centro">PEB I</td>
                    <td>Núcleo Comum</td>
                    <td>Angelina Daige</td>
                </tr>--%>
            </tbody>
        </table>
    </div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
</asp:Content>

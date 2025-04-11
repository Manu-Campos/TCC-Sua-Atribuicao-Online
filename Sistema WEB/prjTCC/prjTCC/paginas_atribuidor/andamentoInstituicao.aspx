<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/atribuidor.Master" AutoEventWireup="true" CodeBehind="andamentoInstituicao.aspx.cs" Inherits="prjTCC.atribuidor.andamentoEscolas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/estiloAndamento.css" rel="stylesheet" />
    <title>Andamento - Instituições</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Andamento</h1>
    <a href="andamentoEscolaEspecifica.html"><p class="Subtitulo SemMargin">Instituições</p></a>
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
        <div id="areaFiltros">
            <asp:DropDownList ID="selectAno" runat="server" CssClass="selectAno" OnSelectedIndexChanged="selects_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList ID="selectInstituicao" runat="server"  CssClass="selectInstituicao" OnSelectedIndexChanged="selects_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </div>

    </div>
    <div class="tabelaFixa tabelaEscolas">
        <table>
            <thead>
                <th class="Inicio">Nome</th>
                <th class="situacao Inicio">Situação</th>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
<%--                <tr class="situacaoEscola">
                    <td>Maria de Lurdes Pereira</td>
                    <td> 
                        <div class="cinza">
                            <div class="sucesso"></div>
                        </div>
                        <p>80%</p>
                    </td>
                </tr>--%>
            </tbody>
        </table>
    </div> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
</asp:Content>
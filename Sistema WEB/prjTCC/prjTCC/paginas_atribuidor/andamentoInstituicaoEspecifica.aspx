<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="andamentoInstituicaoEspecifica.aspx.cs" Inherits="prjTCC.atribuidor.andamentoInstituicaoEspecifica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAndamento.css">
    <title>Andamento - Instituições</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <div id="divVoltar">
        <div>
            <a href="andamentoInstituicao.aspx"><img src="../imagens/icones/setaAzul.png" alt="voltar" id="setaVoltar"></a>
        </div>
        <div>
            <h1 class="tituloPagina">Andamento</h1>
            <p class="Subtitulo SemMargin">Instituições - <asp:Literal ID="litNomeEscola" runat="server"></asp:Literal></p>
        </div>
    </div>
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
                <asp:DropDownList ID="selectAno" CssClass="selectAno" runat="server" OnSelectedIndexChanged="selectAno_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <asp:DropDownList ID="selectTipo" CssClass="selectTipo" runat="server" OnSelectedIndexChanged="selectTipo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <asp:DropDownList ID="selectDisciplina" CssClass="selectDisciplina" runat="server" OnSelectedIndexChanged="selectDisciplina_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>
            
        </div>
        <div class="tabelaFixa tabelaEscolaEspecifica">
            <table>
                <thead>
                    <th class="turma">Turma</th>
                    <th class="tipo">Tipo</th>
                    <th class="Inicio">Disciplina</th>
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
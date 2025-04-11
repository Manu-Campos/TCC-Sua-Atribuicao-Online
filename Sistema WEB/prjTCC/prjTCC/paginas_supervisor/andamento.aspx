<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_supervisor/Supervisor.Master" AutoEventWireup="true" CodeBehind="andamento.aspx.cs" Inherits="prjTCC.paginas_supervisor.andamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/estiloAndamento.css" rel="stylesheet" />
    <title>Andamento</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Andamento</h1>
    <p class="Subtitulo SemMargin"><asp:Literal ID="litDisciplina" runat="server"></asp:Literal></p>
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
            <asp:DropDownList ID="selectAno" runat="server" CssClass="selectAno" OnSelectedIndexChanged="selectAno_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        <asp:DropDownList ID="selectInstituicao" runat="server" CssClass="selectEscola" OnSelectedIndexChanged="selectInstituicao_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </div>
        
    </div>
    <div class="tabelaFixa tabelaEscolas">
        <table>
            <thead>
                <tr class="header">
                    <th class="posicao">Posição</th>
                    <th>Código</th>
                    <th class="Inicio">Nome</th>
                    <th>Tipo</th>
                    <th class="Inicio">Disciplina</th>
                    <th class="Inicio">Instituição</th>
                    <th class="Inicio">Situação</th>
                </tr>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
<%--                <tr class="situacaoEscola">
                    <td class="Centro">12345</td>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_instituicao/Instituicao.Master" AutoEventWireup="true" CodeBehind="professor.aspx.cs" Inherits="prjTCC.instituicao.professor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloProfessores.css">
    <title>Professores</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Professores</h1>
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
             <asp:DropDownList ID="selectTipo" CssClass="selectTipo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectTipo_SelectedIndexChanged"></asp:DropDownList>
        <asp:DropDownList ID="selectDisciplina" CssClass="selectDisciplina" runat="server" AutoPostBack="true" OnSelectedIndexChanged="selectDisciplina_SelectedIndexChanged"></asp:DropDownList>
        </div>
       
    </div>
    <section>
        <div class="tabelaFixa tabelaProfessores">
            <table>
                <thead>
                    <tr>
                        <th class="Centro" id="Posicao">Posição</th>
                        <th class="Centro" id="Codigo">Código</th>
                        <th class="Centro" id="Tipo">Tipo</th>
                        <th class="Inicio">Nome</th>
                        <th class="Inicio" id="Disciplina">Disciplina</th>
                        <th class="Inicio">Situação</th>
                    </tr>
                </thead>
                <tbody id="tabela">
                    <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                    <%--<tr>
                        <td class="Centro">1°</td>
                        <td class="Centro">12345</td>
                        <td class="Centro">PEB III</td>
                        <td>Maria de Lurdes Santos Pereira</td>
                        <td>Matemática</td>
                        <td>Não atribuído</td>
                    </tr>--%>
                </tbody>
            </table>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
</asp:Content>
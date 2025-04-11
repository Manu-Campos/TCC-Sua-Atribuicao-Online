<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="andamentoProfessores.aspx.cs" Inherits="prjTCC.atribuidor.andamentoProfessores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/estiloAndamento.css" rel="stylesheet" />
    <title>Andamento - Professores</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Andamento</h1>
    <p class="Subtitulo SemMargin">Professores</p>
    <h2 class="tituloFiltrar">Filtrar</h2>
    <div id="filtrosProfessores"> 
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
            <asp:DropDownList ID="selectTipo" runat="server" CssClass="selectTipo" OnSelectedIndexChanged="selectTipo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList ID="selectDisciplina" runat="server" CssClass="selectDisciplina" OnSelectedIndexChanged="selectDisciplina_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            <asp:DropDownList ID="selectInstituicao" runat="server" CssClass="selectEscola" OnSelectedIndexChanged="selectInstituicao_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        </div>
       
    </div>
    <section>
        <div class="tabelaFixa tabelaProfessores">
            <table>
            <thead>
                <tr class="header">
                    <th class="posicao">Posição</th>
                    <th id="CodigoFe">Código</th>
                    <th class="Inicio" id="Nome">Nome</th>
                    <th>Tipo</th>
                    <th class="Inicio" id="Disciplina2">Disciplina</th>
                    <th class="Inicio">Escola</th>
                    <th class="Inicio">Situação</th>
                </tr>
            </thead>
            <tbody id="tabela">
                <asp:Literal ID="litLinhaTabela" runat="server"></asp:Literal>
                <%--<tr class="atribuido">
                    <td class="Centro">1°</td>
                    <td class="Centro">12345</td>
                    <td>Maria de Lurdes Pereira</td>
                    <td class="Centro">PEB I</td>
                    <td>Matemática</td>
                    <td>E.M. Profª Lúcia Flora dos Santos</td>
                    <td>Atribuído</td>
                </tr>--%>
            </tbody>
            </table>
        </div>
   </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptBarraPesquisa.js"></script>
</asp:Content>

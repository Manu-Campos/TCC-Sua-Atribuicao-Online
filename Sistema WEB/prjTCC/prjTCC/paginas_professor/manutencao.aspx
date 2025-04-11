<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_professor/Professor.Master" AutoEventWireup="true" CodeBehind="manutencao.aspx.cs" Inherits="prjTCC.paginas_professor.manutencao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../css/estiloAtribuicao.css" rel="stylesheet" />
    <link rel="stylesheet" href="../../css/estiloAtribuicaoProfessor.css">
    <title>Atribuição</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
    <asp:Literal ID="litFases" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoinferior" runat="server">
    <h1 class="tituloPagina">Atribuição</h1>
    <h2 class="Subtitulo"><asp:Literal ID="litFaseAtual" runat="server"></asp:Literal></h2>
    <div class="areaConteudo">
        <div id="areaAguardandoFase">
            <p class="SemMargin">Estamos em período de manutenção das datas. Aguarde até a próxima fase.</p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="areaPopUps" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="codigoJS" runat="server">
</asp:Content>

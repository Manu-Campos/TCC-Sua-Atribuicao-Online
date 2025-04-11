<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="prjTCC.atribuidor.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/estiloDashboard.css" rel="stylesheet" />
    <title>Dashboard</title>
    <script src="../highcharts/highcharts.js"></script>
    <script src="../highcharts/highcharts-3d.js"></script>
    <script src="../highcharts/modules/accessibility.js"></script>
    <script src="../highcharts/modules/exporting.js"></script>
    <script src="../highcharts/modules/export-data.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
    <div id="nomeUsuario">
        <h1 class="SemMargin">Seja bem vindo(a),<asp:Literal ID="litNome" runat="server"></asp:Literal> </h1>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1>Dashboard</h1>
    <section id="dashboardDados">
        <div id="fase">
            <div id="faseDashboard"></div>
        </div>

        <div id="andamentoBloco">
            <div id="andamentoDashboard"></div>
        </div>

        <div id="professores">
            <div id="professoresDashboard"></div>
        </div>
    </section>
    <script src="../js/scriptDashboard.js"></script>
</asp:Content>



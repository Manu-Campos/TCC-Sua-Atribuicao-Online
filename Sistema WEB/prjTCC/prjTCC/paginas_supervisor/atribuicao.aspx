<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_supervisor/Supervisor.Master" AutoEventWireup="true" CodeBehind="atribuicao.aspx.cs" Inherits="prjTCC.paginas_supervisor.atribuicao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Atribuição</title>
    <link href="../css/estiloAtribuicao.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
      <asp:Literal ID="litFases" runat="server"></asp:Literal>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Atribuição</h1>
    <p class="Subtitulo SemMargin"><asp:Literal ID="litFaseAtual" runat="server"></asp:Literal></p>
    <asp:Panel ID="pnlAtribuicao" runat="server">
        <div class="areaConteudo">
            <div class="inicioArea">
                <h3 class="SemMargin"> <asp:Literal ID="litH3" runat="server"></asp:Literal></h3>
            </div>
            <div class="tabelaFixa">
                <table>
                    <thead>
                        <tr>
                            <th class="Posicao Centro">Posição</th>
                            <th class="Codigo Centro">Código</th>
                            <th class="Nome Inicio">Nome</th>
                            <th class="Situacao Inicio">Situação</th>
                            <th class="Escola Inicio">Escola</th>
                        </tr>
                    </thead>
                    <tbody>
                         <asp:Literal ID="litTabelaAtribuir" runat="server"></asp:Literal>
                        <!--
                        <tr>
                            <td class="Centro">1°</td>
                            <td class="Centro">12345</td>
                            <td>Maria de Lurdes Pereira</td>
                            <td>Excedente</td>
                            <td>E.M. Profª Lúcia Flora dos Santos</td>
                        </tr>
                            -->
                    </tbody>
                </table>
            </div>
            <asp:Button ID="btnIniciar" runat="server" Text="Iniciar" />
        </div>
        <div class="areaConteudo Final">
            <div class="inicioArea">
                <h3 class="SemMargin">Próximo professor</h3>
            </div>
            <div class="tabelaFixa">
                <table>
                    <thead>
                        <tr>
                            <th class="Posicao Centro">Posição</th>
                            <th class="Codigo Centro">Código</th>
                            <th class="Nome Inicio">Nome</th>
                            <th class="Situacao Inicio">Situação</th>
                            <th class="Escola Inicio">Escola</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="litTabelaProximoProfessor" runat="server"></asp:Literal>
                    <%-- <tr>
                            <td class="Centro">2°</td>
                            <td class="Centro">12345</td>
                            <td>Maria de Lurdes Pereira</td>
                            <td>Excedente</td>
                            <td>E.M. Profª Lúcia Flora dos Santos</td>
                        </tr>--%>
                    </tbody>
                </table>
            </div>
        </div>
    </asp:Panel>
     <asp:Panel ID="pnlAguardando" runat="server" CssClass="pnlAguardando">
        <div class="areaConteudo areaAguardandoFase" >
               <div id="areaAguardandoFase">
                <p class="SemMargin"><asp:Literal ID="litAguardando" runat="server"></asp:Literal></p>
            </div>
        </div>
    </asp:Panel>
</asp:Content>

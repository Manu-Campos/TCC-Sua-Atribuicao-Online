<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="atribuicaoPEBI.aspx.cs" Inherits="prjTCC.atribuidor.atribuicaoPEBI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/estiloAtribuicao.css" rel="stylesheet" />
    <title>Atribuição - PEB I</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
    <%--<div id="areaFaseAtual">
        <div id="PreAtribuicao" class="Fases"></div>
        <div id="PrimeiraAtribuicao" class="Fases"></div>
        <div id="Remocao" class="Fases">Remoção</div>
        <div id="SegundaAtribuicao" class="Fases"></div>
        <div id="CargaComplementar" class="Fases"></div>
        <div id="Trocas" class="Fases"></div>
    </div>--%>
    <asp:Literal ID="litFases" runat="server"></asp:Literal>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Atribuição</h1>
    <p class="Subtitulo SemMargin"><asp:Literal ID="litFaseAtual" runat="server"></asp:Literal></p>

    <asp:Panel ID="pnlAtribuicao" runat="server">
    <div class="areaConteudo">
        <div class="InicioTitulo">
            <h3 class="SemMargin"><asp:Literal ID="litH3" runat="server"></asp:Literal></h3>
        </div>
        <div class="tabelaFixa">
            <table>
                <thead>
                    <tr>
                        <th class="Centro">Posição</th>
                        <th class="Centro">Código</th>
                        <th class="Inicio">Nome</th>
                        <th class="Inicio">Situação</th>
                        <th class="Inicio">Escola</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="litTabelaAtribuir" runat="server"></asp:Literal>
<%--                    <tr>
                        <td class="Centro">1°</td>
                        <td class="Centro">12345</td>
                        <td>Maria de Lurdes Pereira</td>
                        <td>Excedente</td>
                        <td>E.M. Profª Lúcia Flora dos Santos</td>
                    </tr>--%>
                </tbody>
            </table>
        </div>
        <asp:Button ID="btnIniciar" runat="server" Text="Iniciar" /> 
    </div>
    <div class="areaConteudo Final">
        <div class="InicioTitulo">
            <h3 class="SemMargin">Próximo professor</h3>
        </div>
        <div class="tabelaFixa">
            <table>
                <thead>
                    <tr>
                        <th id="Posicao" class="Centro">Posição</th>
                        <th id="Codigo" class="Centro">Código</th>
                        <th id="Nome" class="Inicio">Nome</th>
                        <th id="Situacao" class="Inicio">Situação</th>
                        <th id="Escola" class="Inicio">Escola</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="litTabelaProximoProfessor" runat="server"></asp:Literal>
                    <%--<tr>
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

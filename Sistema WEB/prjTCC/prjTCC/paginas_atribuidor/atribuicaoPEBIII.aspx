<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="atribuicaoPEBIII.aspx.cs" Inherits="prjTCC.atribuidor.atribuicaoPEBIII" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/estiloAtribuicao.css" rel="stylesheet" />
    <title>Atribuição - PEB III</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
    <asp:Literal ID="litFases" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Atribuição</h1>
    <p class="Subtitulo SemMargin"><asp:Literal ID="litFaseAtual" runat="server"></asp:Literal></p>
    <asp:Panel ID="pnlAtribuicao" runat="server">
         <div class="areaConteudo">
        <div class="InicioTitulo">
            <h3 class="SemMargin"><asp:Literal ID="litH3" runat="server"></asp:Literal></h3>
            <asp:DropDownList ID="ddlDisciplinas" runat="server" name="Disciplinas" OnSelectedIndexChanged="ddlDisciplinas_SelectedIndexChanged"  ></asp:DropDownList>
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
                    <asp:Literal ID="litTabelaAtribuir" runat="server"></asp:Literal>
                    <%--<tr>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_professor/Professor.Master" AutoEventWireup="true" CodeBehind="preAtribuicao.aspx.cs" Inherits="prjTCC.paginas_professor.preAtribuicao" %>
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

        <div id="selects">
            <div id="jornada">
                <h4>Selecione sua jornada:</h4>
                <asp:DropDownList ID="ddlJornada" runat="server" OnSelectedIndexChanged="ddlJornada_SelectedIndexChanged" AutoPostBack="true" CssClass="ddlJornada"></asp:DropDownList>
            </div>
            <div id="escolaSede">
                <h4>Selecione sua escola sede:</h4>
                <asp:DropDownList ID="ddlEscolaSede" runat="server" OnSelectedIndexChanged="ddlEscolaSede_SelectedIndexChanged" AutoPostBack="true" CssClass="ddlEscolaSede"></asp:DropDownList>
            </div>

            <asp:Panel ID="pnlSegundaEscola" runat="server">
                <div id="segundaEscola">
                    <h4>Selecione a sua 2° escola: (opcional)</h4>
                    <asp:DropDownList ID="ddlSegundaEscola" runat="server" OnSelectedIndexChanged="ddlSegundaEscola_SelectedIndexChanged" AutoPostBack="true" CssClass="ddlSegundaEscola"></asp:DropDownList>
                </div>
            </asp:Panel>
        </div>
        <div id="selecoes">
            <h3>Selecione as suas preferências de turma:</h3>
            <div id="tabelas">
                <div id="tabela1">
                    <h4>Todas as turmas:</h4>
                    <div class="tabelaFixa tabelaPreAtribuicaoProfessor">
                        <table>
                            <thead>
                                <th id="selecao"></th>
                                <th id="turma">Turma</th>
                                <th id="periodo">Periodo</th>
                                <th id="instituicao">Instituição</th>
                            </thead>
                            <tbody id="todasTurmas">
                                <asp:Literal ID="litTodasTurmas" runat="server"></asp:Literal>
                                <%-- <tr id="linhaTabela">
                                    <td class="Centro"><input type="checkbox" name="turmas" class="checkbox checkPreAtribuicao"></td>
                                    <td class="Centro">1A</td>
                                    <td>PEB I</td>
                                    <td>Manhã</td>
                                    <td>E.M. Profª Lúcia Flora dos Santos</td>
                                </tr>--%>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="tabela2">
                    <h4 id="qtSelecionadas">Turmas selecionadas: 0/<asp:Literal ID="litQtSelecoes" runat="server"></asp:Literal></h4>
                    <div class="tabelaFixa tabelaPreAtribuicaoProfessor">
                        <table>
                            <thead>
                                <th id="turma">Turma</th>
                                <th id="periodo">Periodo</th>
                                <th id="instituicao">Instituição</th>
                            </thead>
                            <tbody id="turmasSelecionadas">
                                <asp:Literal ID="litPreferencias" runat="server"></asp:Literal>
                                <%-- <tr>
                                    <td class="Centro">1º</td>
                                    <td>1A</td>
                                    <td>PEB I</td>
                                    <td>Manhã</td>
                                    <td>E.M. Profª Lúcia Flora dos Santos</td>
                                </tr>--%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="botao">
            <p id="aviso" class="erro pAviso">
                <asp:Literal ID="litAviso" runat="server" ></asp:Literal>
            </p>
            <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" CssClass="btnConfirmar"/>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="areaPopUps" runat="server">
    <section class="areaPopUp escondido popUpPreAtribuicao">
        <h2>Pré-atribuição concluída com sucesso!</h2>
    </section>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptPreferencias.js"></script>
</asp:Content>

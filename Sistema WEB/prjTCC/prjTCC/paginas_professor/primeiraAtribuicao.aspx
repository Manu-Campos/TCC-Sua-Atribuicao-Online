<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_professor/Professor.Master" AutoEventWireup="true" CodeBehind="primeiraAtribuicao.aspx.cs" Inherits="prjTCC.paginas_professor.primeiraAtribuicao" %>
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
        <asp:Panel ID="pnlAguardando" runat="server" CssClass="pnlAguardando">
            <div id="areaAguardandoFase">
                <asp:Literal ID="litAguardando" runat="server"></asp:Literal>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlAtribuicao" runat="server" CssClass ="pnlAtribuicao">
            <div id="selecoes">
                <div id="tabelas">
                    <div id="tabela1">
                        <h3>Selecione as suas turmas:</h3>
                        <h4>Todas as turmas:</h4>
                        <div class="tabelaFixa tabelaPrimeiraAtribuicao">
                            <table>
                                <thead>
                                    <th id="selecao"></th>
                                    <th id="turma">Turma</th>
                                    <th id="periodo">Periodo</th>
                                    <th id="instituicao">Instituição</th>
                                    <th>Situação</th>
                                </thead>
                                <tbody id="todasTurmas">
                                    <asp:Literal ID="litTodasTurmas" runat="server"></asp:Literal>
                                    <asp:Literal ID="litTurmasAtribuidas" runat="server"></asp:Literal>
                                     <%--<tr id="linhaTabela">
                                        <td class="Centro"><input type="checkbox" name="turmas" class="checkbox checkPrimeiraAtribuicao"></td>
                                        <td class="Centro">1A</td>
                                        <td class="Centro">Manhã</td>
                                        <td>E.M. Profª Lúcia Flora dos Santos</td>
                                        <td class="Centro">Livre</td>
                                    </tr>--%>
                                   <%-- <tr class="aulaIndisponivel">
                                        <td class="Centro"><img src="../imagens/icones/xVermelho.png" alt=""/></td>
                                        <td class="Centro">1A</td>
                                        <td class="Centro">Manhã</td>
                                        <td>E.M. Profª Lúcia Flora dos Santos</td>
                                        <td class="Centro">Livre</td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="tabela2">
                        <h3>Tempo restante:</h3>
                        <h4 id="qtSelecionadas">Turmas selecionadas: 0/<asp:Literal ID="litQtSelecoes" runat="server"></asp:Literal></h4>
                        <div class="tabelaFixa tabelaPrimeiraAtribuicao">
                            <table>
                                <thead>
                                    <th id="turma">Turma</th>
                                    <th id="periodo">Periodo</th>
                                    <th id="instituicao">Instituição</th>
                                    <th>Situação</th>
                                </thead>
                                <tbody id="turmasSelecionadas">
                                    <asp:Literal ID="litTurmasSelecionadas" runat="server"></asp:Literal>
                                     <%--<tr>
                                        <td class="Centro">1A</td>
                                        <td class="Centro">Manhã</td>
                                        <td>E.M. Profª Lúcia Flora dos Santos</td>
                                        <td class="Centro">Livre</td>
                                    </tr>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="botao">
                <p id="aviso" class="erro pAviso"></p>
                <asp:Button ID="btnAtribuir" runat="server" Text="Atribuir" CssClass="btnAtribuir" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="areaPopUps" runat="server">
    <section class="areaPopUp escondido popUpProfessor" id="popUpBase">
        <h2></h2>
    </section>

    <section class="areaPopUp popUpProfessor escondido" id="areaSuaVez">
        <h2>É a sua vez de atribuir...</h2>
        <asp:HiddenField ID="hfClicked" runat="server" Value="false" />
        <asp:Button ID="btnIniciarAtribuicao" runat="server" Text="Iniciar" OnClick="btnIniciarAtribuicao_Click" CssClass="btnIniciarAtribuicao" autofocus="true" EnableViewState="false"/>
    </section>

    <section class="areaPopUp popUpProfessor escondido" id="visualizarAnexo">
        <h2>Atribuição concluída com sucesso!</h2>
        <div>
            <input type='submit' class='btnAtribuir btnVisualizar' value='Visualizar Anexo'>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptPrimeiraAtribuicaoProfessor.js"></script>
    <script src="../js/scriptExportarAnexos.js"></script>
    <script src="../js/scriptSuaVez.js"></script>
    <script src="../js/scriptTempo.js"></script>
</asp:Content>

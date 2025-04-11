<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_instituicao/Instituicao.Master" AutoEventWireup="true" CodeBehind="atribuicaoPEBIII.aspx.cs" Inherits="prjTCC.instituicao.atribuicaoPEBIII" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAtribuicao.css">
    <link rel="stylesheet" href="../css/estiloAtribuicaoInstituicao.css">
    <title>Atribuição - PEB III</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
    <asp:Literal ID="litFases" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Atribuição</h1>
    <p class="Subtitulo SemMargin"><asp:Literal ID="litFaseAtual" runat="server"></asp:Literal></p>

    <asp:Panel ID="pnlAguardando" runat="server">
        <div class="areaConteudo areaAguardandoFase">
            <div id="areaAguardandoFase">
                <p class="SemMargin"><asp:Literal ID="litAguardando" runat="server"></asp:Literal></p>
            </div>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnlAtribuirProfessor" runat="server">
        <div class="areaConteudo">
            <div class="InicioTitulo">
                <div>
                    <h3 class="SemMargin" id="tituloH3"><asp:Literal ID="litH3" runat="server"></asp:Literal></h3>
                    <p class="tempo SemMargin"></p>
                </div>
                <asp:DropDownList ID="ddlDisciplina" runat="server" OnSelectedIndexChanged="ddlDisciplina_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>
            <asp:Panel ID="pnlTabelaAtribuir" runat="server">
                <div class="tabelaFixa">
                    <table>
                        <thead>
                            <tr>
                                <th class="Centro" id="Posicao">Posição</th>
                                <th class="Centro" id="Codigo">Código</th>
                                <th class="Inicio">Nome</th>
                                <th class="Inicio">Situação</th>
                                <th class="Inicio">Instituição</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Literal ID="litTabelaAtribuir" runat="server"></asp:Literal>
                            <%--<tr>
                                <td class="Centro">1°</td>
                                <td class="Centro">12345</td>
                                <td>Maria de Lurdes Santos Pereira</td>
                                <td>Excedente</td>
                                <td>Profª Lúcia Flora dos Santos</td>
                            </tr>--%>
                        </tbody>
                    </table>
                </div>
                <asp:Button ID="btnIniciar" runat="server" Text="Iniciar" CssClass="botaoChamar" onClick="btnIniciar_Click"/>
            </asp:Panel>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnlProximoProfessor" runat="server">
        <div class="areaConteudo Final">
            <div class="InicioTitulo">
                <h3 class="SemMargin">Próximo professor</h3>
            </div>
            <div class="tabelaFixa">
                <table>
                    <thead>
                        <tr>
                            <th class="Centro" id="Posicao">Posição</th>
                            <th class="Centro" id="Codigo">Código</th>
                            <th class="Inicio">Nome</th>
                            <th class="Inicio">Situação</th>
                            <th class="Inicio">Instituição</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Literal ID="litTabelaProximoProfessor" runat="server"></asp:Literal>
                        <%--<tr>
                            <td class="Centro">1°</td>
                            <td class="Centro">12345</td>
                            <td>Maria de Lurdes Santos Pereira</td>
                            <td>Excedente</td>
                            <td>Profª Lúcia Flora dos Santos</td>
                        </tr>--%>
                    </tbody>
                </table>
            </div>
        </div>
    </asp:Panel>

    <section id="areaAtribuirProfessor" class="areaPopUp escondido">
        <div id='infoProfessor'>
            <div id="areaFoto">
                <div class="FotoUsuario">
                    <asp:Panel ID="pnlIniciais" CssClass="pnlIniciais" runat="server">
                        <h4 class="txtIniciais"></h4>
                    </asp:Panel>
                    <asp:Panel ID="pnlImgPerfil" CssClass="pnlImgPerfil" runat="server">
                        <asp:Image ID="imgPerfilHeader" runat="server" />
                    </asp:Panel>
                </div>
            </div>
            <div>
                <h1></h1>
                <h2></h2>
                <h3>Prontuário:</h3>
                <p>Carga Horária:</p>
            </div>
        </div >
        <div class='tabelaFixa'>
            <table>
                <thead>
                    <tr>
                        <th id='Posicao' class='Centro'>Turma</th>
                        <th id='Codigo' class='Centro'>Período</th>
                        <th id='Nome' class='Inicio'>Disciplina</th>
                        <th id='Situacao' class='Inicio'>Escola</th>
                        <th id='Escola' class='Inicio'>Situação</th>
                    </tr>
                </thead>
                <tbody id="tabelaTurmas">
                    <%--<tr>
                        <td class='Centro' id="siglaTurma"></td>
                        <td class='Centro' id="periodo"></td>
                        <td id="nomeDisciplina"></td>
                        <td id="nomeInstituicao"></td>
                        <td id="situacaoAula"></td>
                    </tr>--%>
                </tbody>
            </table>
        </div>
        <div class='botao'  id="areaBtnConfirmaAtribuidor">
            <asp:Button ID="btnAtribuir" runat="server" Text="Atribuir" onClick="btnAtribuir_Click" CssClass="btnAtribuir"/>
        </div>
    </section>

    <asp:Panel ID="pnlAtribuicaoPerdeuTempo" runat="server">
        <div class="areaConteudo">
            <div id='infoProfessor' class="infoProfessorPerdeuTempo">
                <div id="areaFoto">
                    <div class="FotoUsuario">
                        <asp:Panel ID="pnlIniciaisProfessor" CssClass="pnlIniciais" runat="server">
                            <h4 class="txtIniciais"><asp:Literal ID="litIniciais" runat="server"></asp:Literal></h4>
                        </asp:Panel>
                        <asp:Panel ID="pnlImgPerfilProfessor" CssClass="pnlImgPerfil" runat="server">
                            <asp:Image ID="Image1" runat="server" />
                        </asp:Panel>
                    </div>
                </div>
                <div>
                    <h1><asp:Literal ID="litNomeProfessor" runat="server"></asp:Literal></h1>
                    <h2><asp:Literal ID="litEmailProfessor" runat="server"></asp:Literal></h2>
                    <h3>Prontuário:<asp:Literal ID="litProntuarioProfessor" runat="server"></asp:Literal></h3>
                    <p>Carga Horária anterior selecionada pelo professor:<asp:Literal ID="litCargaHorariaProfessorAnterior" runat="server"></asp:Literal></p>
                    <p>Carga Horária atual (carga mínima pelo tempo excedido):<asp:Literal ID="litCargaHorariaProfessorAtual" runat="server"></asp:Literal></p>
                </div>
            </div >
            <div id="selecoes" class="selecoesProfessorPerdeuTempo">
                <div id="tabelas">
                    <div id="tabela1">
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
                <input type="submit" name="name" value="Atribuir" class="btnAtribuir" id="btnAtribuirProfessorSemTempo" />
            </div>
        </div>
    </asp:Panel>

   <section class="areaPopUp escondido" id="atribuicaoConcluida">
        <h2>Atribuição concluída com sucesso!</h2>
    </section>

    <script src="../js/scriptPrimeiraAtribuicaoInstituicao.js"></script>
    <script src="../js/scriptAtribuirProfessorAcabouTempo.js"></script>
    <script src="../js/scriptTempoAtribuidor.js"></script>
    <script src="../js/scriptTabelas.js"></script>
    <asp:Literal ID="litScript" runat="server"></asp:Literal>
</asp:Content>

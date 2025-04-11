<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="andamentoProfessorAtribuido.aspx.cs" Inherits="prjTCC.atribuidor.andamentoProfessorEspecifico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloAndamento.css">
    <link href="../css/estiloAndamentoEspecifico.css" rel="stylesheet" />
    <title>Andamento - Professor</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <div id="divVoltar">
        <div>
            <asp:Literal ID="litVoltar" runat="server"></asp:Literal>
        </div>
        <div>
            <h1 class="tituloPagina">Andamento</h1>
            <p class="Subtitulo SemMargin"><asp:Literal ID="litNomeHeader" runat="server"></asp:Literal></p>
        </div>
    </div>
    <div id="areaProfessor">
        <div id="infoProfessor">
            <div id="areaFoto">
                <div class="FotoUsuario">
                    <asp:Panel ID="pnlIniciais" CssClass="pnlIniciais" runat="server">
                        <asp:Literal ID="litIniciais" runat="server"></asp:Literal>
                    </asp:Panel>
                    <asp:Panel ID="pnlImgPerfil" CssClass="pnlImgPerfil" runat="server">
                        <asp:Image ID="imgPerfilHeader" runat="server" />
                    </asp:Panel>
                </div>
            </div>
            <div>
                <div id="infoGeral">
                    <h1><asp:Literal ID="litNome" runat="server"></asp:Literal></h1>
                    <h2><asp:Literal ID="litEmail" runat="server"></asp:Literal></h2>
                    <h3>Prontuário: <asp:Literal ID="litProntuario" runat="server"></asp:Literal></h3>
                </div>
                <div id="infoClassificacao">
                    <h4>Informações sobre classificação:</h4>
                    <p>Pontuação: <asp:Literal ID="litPontuacao" runat="server"></asp:Literal></p>
                    <p>Classificação Geral: <asp:Literal ID="litClassificacaoGeral" runat="server"></asp:Literal>º lugar</p>
                    <p>Classificação por escola: <asp:Literal ID="litClassificacaoEscola" runat="server"></asp:Literal>º lugar</p>
                </div>
                <div id="infoEscola">
                    <h4>Outras Informações:</h4>
                    <p>Cargo: <asp:Literal ID="litCargo" runat="server"></asp:Literal></p>
                    <p>Disciplina: <asp:Literal ID="litDisciplina" runat="server"></asp:Literal></p>
                    <p>Anos de prefeitura: <asp:Literal ID="litAnosPrefeitura" runat="server"> anos</asp:Literal></p>
                    <p>Instituição sede: <asp:Literal ID="litEscolaSede" runat="server"></asp:Literal></p>
                </div>
            </div>
        </div>
        <div id="tabelasProfessor">
            <div id="aulasProfessor">
                <h2>Aulas Atribuídas</h2>
                <div class="tabelaFixa">
                    <table>
                        <thead>
                            <th>Turma</th>
                            <th>Tipo</th>
                            <th class="Inicio">Disciplina</th>
                            <th class="Inicio">Instituição</th>
                        </thead>
                        <tbody>
                            <asp:Literal ID="litTabelaAulas" runat="server"></asp:Literal>
                            <%--<tr>
                                <td class="Centro">1A</td>
                                <td class="Centro">PEB I</td>
                                <td>Núcleo Comum</td>
                                <td>Angelina Daige</td>
                            </tr> --%>
                        </tbody>
                    </table>
                </div>
            </div>

            <div id="atasProfessor">
                <h2>Atas de Atribuição</h2> 
                <div class="tabelaFixa">
                    <table>
                        <thead>
                            <th class="Inicio">Arquivo</th>
                            <th>Ano</th>
                            <th>Jornada</th>
                        </thead>
                        <tbody>
                            <asp:Literal ID="litTabelaAtas" runat="server"></asp:Literal>
                            <%--<tr>
                                <td>ATA_ 563394564.pdf</td>
                                <td class="Centro">2024</td>
                                <td>Núcleo Comum</td>
                                <td>Angelina Daige</td>
                            </tr> --%>
                        </tbody>
                    </table>
                </div> 
            </div>
        </div>
    </div>
</asp:Content>

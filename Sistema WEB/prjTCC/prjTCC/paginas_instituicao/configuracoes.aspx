<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_instituicao/Instituicao.Master" AutoEventWireup="true" CodeBehind="configuracoes.aspx.cs" Inherits="prjTCC.instituicao.configuracoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/estiloConfiguracoes.css">
    <link rel="stylesheet" href="../../css/estiloConfiguracaoInstituicao.css">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>
    <title>Configurações</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="areaConteudoInferior" runat="server">
    <h1 class="tituloPagina">Configurações</h1>
    <p class="Subtitulo SemMargin">Dados pessoais</p>
    <div class="Final" id="areaConfiguracao">
        <div class="conteudo-esquerda">
            <div class="areaConteudo" id="areaDados">
                <div class="linhaDados">
                     <div class="txtNome">
                        <p class="Labels SemMargin">Nome completo:</p>
                        <asp:TextBox id="txtNome" class="Txts" disabled runat="server"></asp:TextBox>
                    </div>
                    <div class="txtTelefone">
                        <p class="Labels SemMargin">Telefone:</p>
                        <asp:TextBox  id="txtTelefone"  CssClass="Txts txtTelefoneC" value="(99) 99999-9999" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="linhaDados">
                     <div class="txtEmail" >
                        <p class="Labels SemMargin">E-mail:</p>
                        <asp:TextBox id="txtEmail" TextMode="Email" class="Txts" disabled runat="server"></asp:TextBox>
                    </div>
                    <div class="txtTipo">
                        <p class="Labels SemMargin">Tipo:</p>
                        <asp:TextBox class="Txts" disabled runat="server" id="txtTipo"></asp:TextBox>
                    </div>
                </div>
                <div class="linhaDados">
                    <div class="txtDiretor">
                        <p class="Labels SemMargin" >Nome diretor:</p>
                        <div id="digitarFiltro">
                            <asp:TextBox ID="txtDiretor" class="Txts" disabled runat="server"></asp:TextBox>
                            <div id="abrirInfoDiretor">
                                <img src="../imagens/icones/pontos.png" alt="icone_email">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="linhaDados">
                    <asp:Literal ID="litAvisoTel" runat="server"></asp:Literal>
                    <div class="divButton">
                        <asp:Button id="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                    </div>
                </div>
               
            </div>
            <div id="Senha">
                <p class="Subtitulo SemMargin">Alterar senha</p>
                <div class="areaConteudo" id="areaSenha">
                    <div class="linhaDados">
                        <div class="Senhas">
                            <p class="Labels SemMargin">Senha atual:</p>
                            <asp:TextBox id="txtSenhaAtual" CssClass="Txts txtSenhaAtual" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="Senhas">
                            <p class="Labels SemMargin">Nova senha:</p>
                            <asp:TextBox id="txtNovaSenha"  CssClass="Txts txtNovaSenha" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="Senhas">
                            <p class="Labels SemMargin">Confirmar nova senha:</p>
                            <asp:TextBox id="txtConfirmaSenha" CssClass="Txts txtConfirmaSenha" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="linhaDados">
                        <asp:Literal ID="litAviso" runat="server"></asp:Literal>
                        <div class="divButton">
                            <asp:Button id="btnSalvarSenha" runat="server" Text="Salvar" OnClick="btnSalvarSenha_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        <div class="areaConteudo" id="areaPerfil">
            <div id="editarPerfil">
                <div class="FotoUsuario">
                    <asp:Panel ID="pnlIniciais" CssClass="pnlIniciais" runat="server">
                        <asp:Literal ID="litIniciais" runat="server"></asp:Literal>
                    </asp:Panel>
                    <asp:Panel ID="pnlImgPerfil" CssClass="pnlImgPerfil" runat="server">
                        <asp:Image ID="imgPerfil" runat="server" />
                    </asp:Panel>
                </div>
                <div>
                    <p id="Nome" class="SemMargin"><asp:Literal ID="litNome" runat="server"></asp:Literal></p>
                    <p class="Medium SemMargin"><asp:Literal ID="litEmail" runat="server"></asp:Literal></p>
                </div>
                <asp:LinkButton ID="alterarFoto" CssClass="alterarFoto" runat="server">
                    Alterar Foto
                </asp:LinkButton>
                <asp:FileUpload ID="fupFoto" runat="server" CssClass="fupFoto escondido"/>
                <asp:Button ID="btnFoto" runat="server" onClick="btnFoto_Click" CssClass="btnFoto escondido"/>
            </div>
          <%--  <div id="Linha"></div>
            <div id="editarAssinatura">
                <p class="Medium" id="tituloAparencia">Aparência da assinatura</p>
                <div id="areaAssinaturaSeta">
                    <div id="areaAssinatura">
                        <div class="tituloAssinatura">
                            <img src="../../imagens/icones/assinatura.png" alt="" >
                            <p class="SemMargin">Assinatura</p>
                        </div>
                        <div id="Assinatura">
                            <img src="../../imagens/icones/x.png" alt="">
                        </div>
                        <div id="dadosSignatario">
                            <p class="SemMargin NomeP"><asp:Literal ID="litNomeSignatario" runat="server"></asp:Literal></p>
                            <p class="SemMargin LabelPequena"><asp:Literal ID="litCPFSignatario" runat="server"></asp:Literal></p>
                            <p class="SemMargin LabelPequena" id="Signatario">Signatário</p>
                        </div>
                    </div>
                    <img src="../../imagens/icones/setaAzul.png" alt="" id="SetaRubrica">
                </div>
                <div class="divButton">
                    <asp:Button id="btnEditarAssinatura" runat="server" Text="Editar" />
                </div>
            </div>--%>
        </div>              
    </div>

    <div class="areaPopUp escondido" id="areaDadosDiretor">
        <div id="tituloNotificacoes">
            <h1 class=SemMargin>Dados diretor</h1>
            <img src="../../imagens/icones/xPreto.png" alt="" id="removerDadosDiretor">
        </div>
        <div id="infoDiretor"> 
            <div class="txtNome">
                <p class="Labels SemMargin">Nome completo:</p>
                <asp:TextBox id="txtNomeDiretor" class="Txts" disabled runat="server"></asp:TextBox>
            </div>
            <div class="txtProntuario">
                <p class="Labels SemMargin">Prontuário:</p>
                <asp:TextBox id="txtProntuarioDiretor" class="Txts" disabled runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="txtEmail">
                <p class="Labels SemMargin">E-mail:</p>
                <asp:TextBox id="txtEmailDiretor" TextMode="Email" class="Txts" disabled runat="server"></asp:TextBox>
            </div>
            <div class="txtTelefone">
                <p class="Labels SemMargin">Telefone:</p>
                <asp:TextBox id="txtTelefoneDiretor" TextMode="Number" value="(99) 99999-9999" class="Txts" disabled runat="server"></asp:TextBox>
            </div>
            <div class="txtDataN">
                <p class="Labels SemMargin">Data de nascimento:</p>
                <asp:TextBox id="txtDataNascimentoDiretor" class="Txts" disabled runat="server" TextMode="Date"></asp:TextBox>
            </div>
        </div>
    </div>

    <section id="areaEditarAssinatura" class="escondido areaPopUp">
        <h2 class="SemMargin">Alterar aparência da assinatura</h2> 

        <div id="menuEditarAssinatura">
            <ul>
                <li class="OpcaoSelecionada">
                    <div>
                        <input type="radio" name="OpcaoAssinatura" id="Texto">
                        <label for="Texto">
                            <p class="SemMargin">Texto</p>
                        </label>
                    </div>
                </li>
                <li>
                    <div>
                        <input type="radio" name="OpcaoAssinatura" id="Desenhar">
                        <label for="Desenhar">
                            <p class="SemMargin">Desenhar</p>
                        </label>
                    </div>
                </li>
                <li>
                    <div>
                        <input type="radio" name="OpcaoAssinatura" id="Imagem">
                        <label for="Imagem">
                            <p class="SemMargin">Imagem</p>
                        </label>
                    </div>
                </li>
                <li>
                    <div>
                        <input type="radio" name="OpcaoAssinatura" id="Marcacao">
                        <label for="Marcacao">
                            <p class="SemMargin">Marcação</p>
                        </label>
                    </div>
                </li>
            </ul>
        </div>
            
        <div id="tipoTexto">
            <div class="areaAssinaturaTexto">
                <div class="tituloAssinatura">
                    <img src="../../imagens/icones/assinatura.png" alt="" >
                    <p class="SemMargin">Assinatura</p>
                </div>
                <div class="Assinatura">
                    <img src="../../imagens/icones/x.png" alt="">
                    <p class="SemMargin"></p>
                </div>
            </div>
            <div class="areaAssinaturaTexto">
                <div class="tituloAssinatura">
                    <img src="../../imagens/icones/rubrica.png" alt="" id="rubricaImg">
                    <p class="SemMargin">Rubrica</p>
                </div>
                <div class="Assinatura">
                    <img src="../../imagens/icones/x.png" alt="">
                    <p class="SemMargin"></p>
                </div>
            </div>
        </div>
        <div id="fontes">
            <p>Fontes:</p>
            <asp:DropDownList id="ddlFontesAssinatura" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Button id="btnCancelarAssinatura" runat="server" Text="Cancelar" />
            <asp:Button id="btnSalvarAssinatura" runat="server" Text="Salvar" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJs" runat="server">
    <script src="../js/scriptConfiguracaoDiretor.js"></script>
    <script src="../js/scriptConfiguracao.js"></script>
    <script src="../js/scriptErroConfig.js"></script>
</asp:Content>

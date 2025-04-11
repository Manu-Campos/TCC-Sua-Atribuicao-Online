<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="configuracoes.aspx.cs" Inherits="prjTCC.atribuidor.configuracoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloConfiguracoes.css">
    <title>Configurações</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="areaConteudoSuperior" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina">Configurações</h1>
    <p class="Subtitulo SemMargin">Dados pessoais</p>
    <div class="Final" id="areaConfiguracao">
        <div class="conteudo-esquerda">
            <div class="areaConteudo" id="areaDados">
                <div class="linhaDados"> 
                    <div class="txtNome">
                        <p class="Labels SemMargin">Nome completo:</p>
                        <asp:TextBox ID="txtNome" name="Nome" cssClass="Txts" disabled runat="server"></asp:TextBox>
                    </div>
                     <div class="txtDataN">
                        <p class="Labels SemMargin">Data de nascimento:</p>
                        <asp:TextBox ID="txtDataNascimento" TextMode="Date" name="DataN" cssClass="Txts" disabled runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="linhaDados">
                     <div class="txtEmail">
                        <p class="Labels SemMargin">E-mail:</p>
                        <asp:TextBox ID="txtEmail" TextMode="Email" name="Email" cssClass="Txts" disabled runat="server"></asp:TextBox>
                    </div>
                    <div class="txtTelefone">
                        <p class="Labels SemMargin">Telefone:</p>
                        <asp:TextBox ID="txtTelefone" TextMode="SingleLine" name="Telefone" CssClass="Txts txtTelefoneC" runat="server" MaxLength="15"></asp:TextBox>
                    </div>
                </div>
                <div class="linhaDados">

                    <asp:Literal ID="litAvisoTel" runat="server" ></asp:Literal>

                    <div class="divButton">
                        <%--<asp:Button ID="btnSalvarInfo" runat="server" Text="Salvar" onclick="btnSalvarInfo_Click"/>--%>
                        <asp:Button ID="btnSalvarTelefone" runat="server" Text="Salvar" onClick="btnSalvarTelefone_Click"/>
                    </div>
                </div>
                
            </div>
            <div id="Senha">
                <p class="Subtitulo SemMargin">Alterar senha</p>
                <div class="areaConteudo" id="areaSenha">
                    <div class="linhaDados">
                        <div class="Senhas">
                            <p class="Labels SemMargin">Senha atual:</p>
                            <asp:TextBox ID="txtSenhaAtual" TextMode="Password" name="SenhaAtual" CssClass="Txts txtSenhaAtual" runat="server"></asp:TextBox>
                        </div>
                        <div class="Senhas">
                            <p class="Labels SemMargin">Nova senha:</p>
                            <asp:TextBox ID="txtNovaSenha" name="NovaSenha" CssClass="Txts txtNovaSenha" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="Senhas">
                            <p class="Labels SemMargin">Confirmar nova senha:</p>
                            <asp:TextBox ID="txtConfirmaSenha" TextMode="Password" name="ConfirmaSenha" CssClass="Txts txtConfirmaSenha" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="linhaDados">

                            <asp:Literal ID="litAviso" runat="server" ></asp:Literal>

                        <div class="divButton">
                            <asp:Button ID="btnSalvarSenha" runat="server" Text="Salvar" OnClick="btnSalvarSenha_Click"/>
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
<%--         <div id="Linha"></div>
            <div id="editarAssinatura">
                <p class="Medium" id="tituloAparencia">Aparência da assinatura</p>
                <div id="areaAssinaturaSeta">
                    <div id="areaAssinatura">
                        <div id="tituloAssinatura">
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
                    <asp:Button ID="btnEditarAssinatura" runat="server" Text="Editar" />
                    <%--onclick="AbrirFecharAbaAssinatura()"
                </div>
            </div>
        </div>              
    </div>--%>
    <asp:Literal ID="litMenssagem" runat="server"></asp:Literal>
    <%--<div class="areaPopUp">
        <h1>
            A senha foi alterada com sucesso!
        </h1>
    </div>--%>
    <%--<div class="areaPopUp bloqueio">
        <h1>
            O telefone foi alterado com sucesso!
        </h1>
    </div>
    <div class="areaPopUp bloqueio">
        <h1>
            Ops! deu erro, tente novamente!
        </h1>
    </div>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptConfiguracao.js"></script>
    <script src="../js/scriptErroConfig.js"></script>
</asp:Content>

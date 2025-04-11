<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_supervisor/Supervisor.Master" AutoEventWireup="true" CodeBehind="configuracoes.aspx.cs" Inherits="prjTCC.paginas_supervisor.configuracoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="../css/estiloConfiguracoes.css">
    <link rel="stylesheet" href="../css/estiloConfiguracoesProfessor.css">
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
                    <asp:TextBox ID="txtNome" runat="server" CssClass="Txts" Enabled="true" disabled></asp:TextBox>
                </div>
                <div class="txtTelefone">
                    <p class="Labels SemMargin">Telefone:</p>
                    <asp:TextBox ID="txtTelefone" TextMode="SingleLine" name="Telefone" CssClass="Txts txtTelefoneC" runat="server" MaxLength="15"></asp:TextBox>
                </div>
            </div>
             <div class="linhaDados" id="espacinho">
                 <div class="txtEmail">
                    <p class="Labels SemMargin">E-mail:</p>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="Txts" TextMode="Email" Enabled="true" disabled></asp:TextBox>
                </div>
                <div class="txtDataN">
                    <p class="Labels SemMargin">Data de nascimento:</p>
                    <asp:TextBox ID="txtDataN" runat="server" CssClass="Txts" TextMode="Date" Enabled="true" disabled></asp:TextBox>
                </div>
                 <div class="txtProntuario">
                    <p class="Labels SemMargin">Prontuário:</p>
                    <asp:TextBox ID="txtProntuario" runat="server" CssClass="Txts" TextMode="Number" Enabled="true" disabled></asp:TextBox>
                </div>
            </div>
            <div class="linhaDados">
                <asp:Literal ID="litAvisoTel" runat="server" ></asp:Literal>
                <div class="divButton">
                    <asp:Button ID="btnSalvarDados" runat="server" Text="Salvar" OnClick="btnSalvarDados_Click"/>
                </div>
            </div>
        </div>
        <div id="Senha">
            <p class="Subtitulo SemMargin">Alterar senha</p>
            <div class="areaConteudo" id="areaSenha">
                <div class="linhaDados">
                    <div class="Senhas">
                        <p class="Labels SemMargin">Senha atual:</p>
                        <asp:TextBox ID="txtSenhaAtual" runat="server" CssClass="Txts txtSenhaAtual" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="Senhas">
                        <p class="Labels SemMargin">Nova senha:</p>
                        <asp:TextBox ID="txtNovaSenha" runat="server" CssClass="Txts txtNovaSenha" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="Senhas">
                        <p class="Labels SemMargin">Confirmar nova senha:</p>
                        <asp:TextBox ID="txtConfirmaSenha" runat="server" CssClass="Txts txtConfirmaSenha" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="linhaDados">
                <asp:Literal ID="litAviso" runat="server"></asp:Literal>
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
  <%--  <div id="Linha"></div>
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
                    <p class="SemMargin NomeP">Pamela Vieira Martins</p>
                    <p class="SemMargin LabelPequena">123.456.789/00</p>
                    <p class="SemMargin LabelPequena" id="Signatario" >Signatário</p>
                </div>
            </div>
            <img src="../../imagens/icones/setaAzul.png" alt="" id="SetaRubrica">
        </div>
        <div class="divButton">
            <asp:Button ID="btnEditarAssinatura" runat="server" Text="Editar" />
       <%--     <button id="btnEditarAssinatura" onclick="AbrirFecharAbaAssinatura()">Editar</button>
        </div>
    </div>--%>
</div>              
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptConfiguracao.js"></script>
    <script src="../js/scriptErroConfig.js"></script>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/paginas_atribuidor/Atribuidor.Master" AutoEventWireup="true" CodeBehind="fases.aspx.cs" Inherits="prjTCC.atribuidor.fases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/estiloFases.css">
    <title>Fases</title>
    <script src="../highcharts/highcharts.js"></script>
    <script src="../highcharts/highcharts-3d.js"></script>
    <script src="../highcharts/modules/accessibility.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="conteudoInferior" runat="server">
    <h1 class="tituloPagina SemMargin">Fases</h1>
    <asp:Panel ID="pnlAreaConteudo" runat="server" CssClass="areaConteudo">
        <asp:Panel ID="pnlCriarFase" runat="server">
        <div class="areaCriarFase">
            <h3 class="SemMargin">Determine as datas das fases da atribuição:</h3>
            <div class="infoFase">
                <div id="EscolhaFase">
                    <p class="Label">Fases:</p>
                    <asp:TextBox ID="txtFases" Enabled="false" runat="server" CssClass="txtFases"></asp:TextBox>
                </div>
                <div>
                    <p class="Label">Data início:</p>
                    <asp:TextBox ID="txtDataInicio" TextMode="Date" name="dtInicio" runat="server" CssClass="dataInicio" ></asp:TextBox>
                </div>
                <div>
                    <p class="Label">Horário início:</p>
                    <asp:TextBox ID="txtHoraInicio" TextMode="Time" name="hrInicio" runat="server" CssClass="hrInicio"></asp:TextBox>
                </div>
                <div>
                    <p class="Label">Data fim:</p>
                    <asp:TextBox ID="txtDataFim" TextMode="Date" name="dtFim" runat="server" CssClass="dataFim" ></asp:TextBox>
                </div>
                <div>
                    <p class="Label">Horário fim:</p>
                    <asp:TextBox ID="txtHoraFim" TextMode="Time" name="hrFim" runat="server" CssClass="hrFim"></asp:TextBox>
                </div>
            </div> 
            <div id="areaBtn">
                 <p id="aviso">
                    <asp:Literal ID="litAviso" runat="server" ></asp:Literal>
                </p>
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btnSalvarFases"/>
            </div>
        </div>
        </asp:Panel>
        <div id="areaAguardandoFase" class="escondido">
            <p class="SemMargin">Aguardando o início da próxima fase - <asp:Literal ID="litProximaFase" runat="server"></asp:Literal></p>
         </div>
    </asp:Panel>
    <asp:Panel ID="pnlInfoFaseAtual" runat="server" CssClass="areaInfoFaseAtual" Visible="false">
               <div id="dadosFase"> 
                   <p class="pFases SemMargin">A fase que estamos é:</p>
                   <div id="dadosFaseAtual">
                         <asp:Literal ID="litNomeFaseAtual" runat="server"></asp:Literal>
                        <asp:Literal ID="litPeriodoFaseAtual" runat="server"></asp:Literal>
                   </div>
                      <p class="pFases SemMargin">Próxima fase: <asp:Literal ID="litProximaFase2" runat="server"></asp:Literal></p>
               </div>
               <div>
                   <div id="graficoAtribuicao"></div>
               </div>
    </asp:Panel>
    <div class="areaConteudo Final">
        <h3 class="SemMargin">As fases da atribuição:</h3>
        <div id="coresDatas">
             <div id="areaCoresFases">
                <div id="PreAtribuicao" class="Fases"></div>
                <div class="Fases PrimeiraAtribuicao"></div>
                <div class="Fases Remocao"></div>
                <div class="Fases SegundaAtribuicao"></div>
                <div class="Fases CargaComplementar"></div>
                <div id="Trocas" class="Fases"></div>
            </div>
             <div class="dtsFases">
                 <asp:Literal ID="litDatasFases" runat="server"></asp:Literal>
            </div>
        </div>
        <div id="Legenda">
            <div class="BlocoLegenda">
                <div class="LinhaLegenda">
                    <div  class="QuadradoLegenda" id="PreAtribuicaoQ"></div>
                    <p class="FonteLegenda">Pré-Atribuição</p>
                </div>
                <div class="LinhaLegenda">
                    <div  class="QuadradoLegenda PrimeiraAtribuicao"></div>
                    <p class="FonteLegenda">1° Atribuição</p>
                </div> 
            </div> 
            <div class="BlocoLegenda">
                 <div class="LinhaLegenda">
                    <div  class="QuadradoLegenda Remocao"></div>
                    <p class="FonteLegenda">Remoção</p>
                </div>
                <div class="LinhaLegenda">
                    <div  class="QuadradoLegenda SegundaAtribuicao"></div>
                    <p class="FonteLegenda">2° Atribuição</p>
                </div>
            </div>
            <div class="BlocoLegenda">
                <div class="LinhaLegenda">
                    <div  class="QuadradoLegenda CargaComplementar"></div>
                    <p class="FonteLegenda">Carga complementar</p>
                </div>
                <div class="LinhaLegenda">
                    <div  class="QuadradoLegenda" id="TrocasQ"></div>
                    <p class="FonteLegenda">Período de trocas</p>
                </div> 
            </div>            
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="codigoJS" runat="server">
    <script src="../js/scriptFases.js"></script>
    <script src="../js/scriptGraficoFases.js"></script>
</asp:Content>


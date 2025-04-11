using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prjTCC.atribuidor
{
    public partial class fases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("fases");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            Fases fases = new Fases();

            if (!IsPostBack)
            {
                Fase faseAtual = fases.buscarDadosFaseAtual();

                if (faseAtual.Nome != null)
                {

                    string cor = "";

                    if (faseAtual.Nome == "1º Atribuição")
                    {
                        cor = "primeiraAtribuicao";
                    }
                    if (faseAtual.Nome == "2° Atribuição")
                    {
                        cor = "segundaAtribuicao";
                    }
                    if (faseAtual.Nome == "Remoção")
                    {
                        cor = "remocao";
                    }
                    if (faseAtual.Nome == "Carga complementar")
                    {
                        cor = "cargaComplementar";
                    }
                    if (faseAtual.Nome == "Trocas")
                    {
                        cor = "trocas";
                    }
                    if (faseAtual.Nome == "Pré-Atribuição")
                    {
                        cor = "preAtribuicao";
                    }

                    pnlAreaConteudo.Visible = false;
                    pnlInfoFaseAtual.Visible = true;
                    litNomeFaseAtual.Text = $@"<p id='nomeFaseAtual' class='{cor} SemMargin'>{faseAtual.Nome}";
                    litPeriodoFaseAtual.Text = $@"<p id='periodoFaseAtual' class='{cor} SemMargin'>{faseAtual.DtInicio.ToString("dd-MM").Replace("-", "/") + " - " + faseAtual.DtFim.ToString("dd-MM").Replace("-", "/")}</p>";

                    Fase proximafase = fases.buscarProximaFase();

                    litProximaFase2.Text = proximafase.Nome;

                    foreach (Fase fase in fases.buscarDatasFases())
                    {
                        litDatasFases.Text += $@"<div class='DatasCdFase'>
                                                <p class='SemMargin'>
                                                  {fase.DtInicio.ToString("dd-MM").Replace("-", "/")}  
                                                </p>
                                                <p class='SemMargin'> 
                                                    {fase.DtFim.ToString("dd-MM").Replace("-", "/")}  
                                                </p>
                                                </div>";
                    }

                }
                else
                {
                    List<string> listaFases = fases.buscarListaFases();
                    string nomeFase = listaFases.ElementAtOrDefault(0);

                    if (listaFases.Count != 6)
                    {
                        DateTime ultimaDtFim = fases.buscarUltimaDataFim().AddDays(1);
                        string dataCorreta = ultimaDtFim.ToString("yyyy-MM-dd");

                        foreach (Fase fase in fases.buscarDatasFases())
                        {
                            litDatasFases.Text += $@"<div class='DatasCdFase'>
                                                <p class='SemMargin'>
                                                  {fase.DtInicio.ToString("dd-MM").Replace("-", "/")}  
                                                </p>
                                                <p class='SemMargin'> 
                                                    {fase.DtFim.ToString("dd-MM").Replace("-", "/")}  
                                                </p>
                                                </div>";
                        }

                        txtDataInicio.Attributes.Add("min", dataCorreta);
                        txtDataFim.Attributes.Add("min", dataCorreta);

                        txtFases.Text = nomeFase;

                        if (nomeFase == "" || nomeFase == null)
                        {
                            Fase Proximofase = fases.buscarProximaFase();

                            string cor = "";

                            if (Proximofase.Nome == "1º Atribuição")
                            {
                                cor = "primeiraAtribuicao";
                            }
                            if (Proximofase.Nome == "2° Atribuição")
                            {
                                cor = "segundaAtribuicao";
                            }
                            if (Proximofase.Nome == "Remoção")
                            {
                                cor = "remocao";
                            }
                            if (Proximofase.Nome == "Carga complementar")
                            {
                                cor = "cargaComplementar";
                            }
                            if (Proximofase.Nome == "Trocas")
                            {
                                cor = "trocas";
                            }
                            if (Proximofase.Nome == "Pré-Atribuição")
                            {
                                cor = "preAtribuicao";
                            }

                            litProximaFase.Text = $@"<span class = '{cor} span'> {Proximofase.Nome}  - 
                                                      {Proximofase.DtInicio.ToString("dd/MM")} - 
                                                      {Proximofase.DtInicio.ToString("HH:mm")}h
                                                    </span>";



                        }
                    }
                }

                   
                

            }

        }
    }
}
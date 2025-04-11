using prjTCC.atribuidor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Mysqlx;

namespace prjTCC.lib
{
    public partial class gravarFases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            if (Request["dataInicio"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["dataInicio"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (Request["dataFim"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }
            if (String.IsNullOrEmpty(Request["dataFim"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            string dataInicioS = Request["dataInicio"].ToString();
            string dataFimS = Request["dataFim"].ToString();

            DateTime dataInicio = DateTime.Now;
            DateTime dataFim = DateTime.Now;

            if (!DateTime.TryParse(dataInicioS, out dataInicio))
            {
                resposta = "{'erro':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (!DateTime.TryParse(dataFimS, out dataFim))
            {
                resposta = "{'erro':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            try
            {
                Fases fases = new Fases();

                List<string> listaFases = fases.buscarListaFases();


                if (listaFases.Count != 0)
                {
                    fases.criarDataFase(listaFases.ElementAtOrDefault(0), Session["logado"].ToString(), dataInicio, dataFim);
                    DateTime ultimaDtFim = fases.buscarUltimaDataFim().AddDays(1);
                    string dataCorreta = ultimaDtFim.ToString("yyyy-MM-dd");

                    List<Fase> listaDatas = fases.buscarDatasFases();

                    if (listaFases.ElementAtOrDefault(0) == listaFases.Last())
                    {
                        JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                        Fase fase = fases.buscarProximaFase();

                        if (fase != null)
                        {
                            string dtInicioFormatada = fase.DtInicio.ToString("yyyy-MM-ddTHH:mm:ss");
                            string dtFimFormatada = fase.DtFim.ToString("yyyy-MM-ddTHH:mm:ss");

                            resposta = "{'nmfase':'" + listaFases.Last() + "', 'ultimaDtFim':'" + dataCorreta + "', 'proximaFase':" + javaScriptSerializer.Serialize(fase) + ", 'dtInicio':'" + dtInicioFormatada + "', 'dtFim':'" + dtFimFormatada + "'}";
                        }
                        else
                        {
                            resposta = "{'nmfase':'" + listaFases.Last() + "', 'ultimaDtFim':'" + dataCorreta + "'}";
                        }
                        Response.Write(resposta.Replace("'", "\""));
                    }
                    else
                    {
                        resposta = "{'nmfase':'" + listaFases.ElementAtOrDefault(1) + "', 'ultimaDtFim':'" + dataCorreta + "'}";
                        Response.Write(resposta.Replace("'", "\""));
                    }
                }
                else
                {
                    JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                    Fase fase = fases.buscarProximaFase();

                    if (fase != null)
                    {
                        resposta = javaScriptSerializer.Serialize(fase);
                    }
                    else
                    {
                        resposta = "{'erro':'Nenhuma fase disponível ou próxima fase encontrada.'}";
                    }

                    Response.Write(resposta.Replace("'", "\""));
                }



            }
            catch
            {
                resposta = "{'erro':'Nenhuma fase disponível ou próxima fase encontrada.'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    
    }
}
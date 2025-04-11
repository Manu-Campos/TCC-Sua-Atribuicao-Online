using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class buscarNotificacoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            try
            {
                if (Request["i"] != null)
                {
                    if (!String.IsNullOrEmpty(Request["i"].ToString()))
                    {
                        int inicio = int.Parse(Request["i"].ToString());

                        Notificacoes avisos = new Notificacoes();
                        string email = Session["logado"].ToString();
                        List<Notificacao> ListaAvisos = avisos.ListarNotificacoesPorAtribuidor(email,inicio, inicio + 30);
                        if (ListaAvisos.Count > 0)
                        {
                            JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();

                            resposta = javaScriptSerializer.Serialize(ListaAvisos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'TemAvisos':'false'}";
                            Response.Write(resposta.Replace("'", "\""));
                        }
                    }
                }
            }
            catch
            {
                resposta = "{'erro':'Não foi possível buscar os avisos'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class BuscarNotificacoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";

            try
            {
                Avisos avisos = new Avisos();
                List<Aviso> ListaAvisos = avisos.ListarAvisosPorAtribuidor(Session["logado"].ToString());

                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();

                resposta = javaScriptSerializer.Serialize(ListaAvisos);
                Response.Write(resposta);
            }
            catch
            {
                resposta = "{'erro':'Não foi possível buscar os avisos'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
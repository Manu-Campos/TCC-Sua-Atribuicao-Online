using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class buscarProximaFase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AddHeader("Access-Control-Allow-Origin", "*");
            Response.ContentType = "application/json";
            string resposta = "";

            try
            {

                Fases fases = new Fases();
                Fase fase = fases.buscarProximaFase();

                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                resposta = javaScriptSerializer.Serialize(fase);
                Response.Write(resposta);

            }
            catch (Exception erro)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
        }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class MarcarNotificacaoComoLido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            try
            {
                string Remetente = Request["Remetente"].ToString();
                string Data = Request["Data"].ToString();
                string Tipo = Request["Tipo"].ToString();

                Notificacoes avisos = new Notificacoes();

                avisos.MarcarAvisoComoLido(Data,Remetente,Tipo,Session["logado"].ToString());

                resposta = "{'situacao':'true'}";
                Response.Write(resposta.Replace("'", "\""));
            }
            catch
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class MarcarNotificacaoSistemaComoLido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            try
            {
                string Data = Request["Data"].ToString();
                string Tipo = Request["Tipo"].ToString();

                Notificacoes avisos = new Notificacoes();

                if(Tipo == "instituicao")
                    avisos.MarcarNotificacaoSistemaComoLido(Data, Session["logado"].ToString(), Tipo);
                if(Tipo == "professor")
                    avisos.MarcarNotificacaoSistemaComoLido(Data, Session["codigo"].ToString(), Tipo);
                if (Tipo == "supervisor")
                    avisos.MarcarNotificacaoSistemaComoLido(Data, Session["codigo"].ToString(), Tipo);

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
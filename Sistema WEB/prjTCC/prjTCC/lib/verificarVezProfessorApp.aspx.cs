using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarVezProfessorApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AddHeader("Access-Control-Allow-Origin", "*");
            Response.ContentType = "application/json";
            string resposta = "";


            #region Validações 

            if (Request["c"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["c"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            #endregion

            string codigo = Request["c"].ToString();

            try
            {
                Professores professores = new Professores();
                string suaVez = professores.verificarSePodeAtribuir(int.Parse(codigo));

                if (suaVez != "")
                {
                    JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                    resposta = javaScriptSerializer.Serialize(suaVez);
                    Response.Write(resposta.Replace("'", "\""));

                }
                else
                {
                    resposta = "{'situacao':'false'}";
                    Response.Write(resposta.Replace("'", "\""));

                }
            }
            catch
            {
                resposta = "{'erro':'Não foi possível verificar a sua vez!'}";
                Response.Write(resposta.Replace("'", "\""));

            }
        }
    }
}
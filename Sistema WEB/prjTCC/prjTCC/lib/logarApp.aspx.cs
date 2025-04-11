using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Script.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class logarApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";
            Response.AddHeader("Access-Control-Allow-Origin", "*");

            #region Validações 

            if (Request["l"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["l"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (Request["s"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["s"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            #endregion

            string supostoLogin = Request["l"].ToString();
            string supostaSenha = Request["s"].ToString();
            try
            {

               Professores professores = new Professores();
               ProfessorUnico professor = professores.LogarApp(supostoLogin, supostaSenha);


                if (professor != null)
                {

                    JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                    resposta = javaScriptSerializer.Serialize(professor);
                    Response.Write(resposta);
                   
                }
                else
                {
                    resposta = "{'situacao':'false'}";
                    Response.Write(resposta.Replace("'", "\""));
                }
            }
            catch (Exception erro)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarTurmasPreferenciaProfessor : System.Web.UI.Page
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
            string instituicao = Request["i"].ToString();

            try
            {
                Turmas turmas = new Turmas();
                List<Turma> Lista = new List<Turma>();
                Lista = turmas.verificarTurmasPreferenciaProfessor(int.Parse(Session["codigo"].ToString()), instituicao);

                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                resposta = javaScriptSerializer.Serialize(Lista);
            }
            catch
            {
                resposta = "{'erro':'Não foi possível verificar a sua vez!'}";
                Response.Write(resposta.Replace("'", "\""));

            }
        }
    }
}
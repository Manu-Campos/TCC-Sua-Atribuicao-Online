using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace prjTCC.lib
{
    public partial class verificarVezProfessor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AddHeader("Access-Control-Allow-Origin", "*");
            Response.ContentType = "application/json";
            string resposta = "";
            int codigo = int.Parse(Session["codigo"].ToString());

            try
            {
                Professores professores = new Professores();
                string suaVez = professores.verificarSePodeAtribuir(codigo);

                if (suaVez != "")
                {
                    Session["instituicaoChamada"] = suaVez;
                    resposta = "{'situacao':'true'}";
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
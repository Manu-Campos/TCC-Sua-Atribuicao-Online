using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class buscarInstituicaoChamada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";
            Response.AddHeader("Access-Control-Allow-Origin", "*");
            
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
            
            string codigo = Request["c"].ToString();            

            InstituicaoUnica instituicaoUnica = new InstituicaoUnica();

            try
            {
                Instituicoes instituicoes = new Instituicoes();

                instituicaoUnica = instituicoes.buscarInstituicaoChamada(int.Parse(codigo));


                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                resposta = javaScriptSerializer.Serialize(instituicaoUnica);
                return;

            }
            catch
            {
                resposta = "{'erro':'Não foi possível buscar a instituicao!'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }


        }
    }
}
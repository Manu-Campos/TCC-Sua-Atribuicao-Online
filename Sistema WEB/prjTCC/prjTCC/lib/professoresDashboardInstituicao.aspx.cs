using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class professoresDashboardInstituicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";

            try
            {
                Professores professores = new Professores();
                List<string> lista = professores.BuscarQuantidadeProfessoresInstituicao(Session["logado"].ToString());

                if (lista.Count >= 3)
                {
                    var respostaObj = new
                    {
                        ativos = lista[0],
                        substitutos = lista[1],
                        afastados = lista[2]
                    };

                    resposta = new JavaScriptSerializer().Serialize(respostaObj);
                    Response.Write(resposta);
                }
                else
                {
                    resposta = new JavaScriptSerializer().Serialize(new { erro = "Dados insuficientes para exibir quantidade de professores!" });
                    Response.Write(resposta);
                }
            }
            catch
            {
                resposta = new JavaScriptSerializer().Serialize(new { erro = "Não foi possível quantificar os professores!" });
                Response.Write(resposta);
            }
        }
    }
}
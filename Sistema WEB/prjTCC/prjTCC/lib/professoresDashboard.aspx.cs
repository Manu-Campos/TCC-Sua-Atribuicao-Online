using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class professoresDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            try
            {
                Professores professores = new Professores();

                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();

                List<string> lista = professores.BuscarQuantidadeProfessores();
                var respostaProfessores = new List<object>();

                var item = new
                {
                    ativos = lista[0],
                    substitutos = lista[1],
                    afastados = lista[2]
                };

                resposta = javaScriptSerializer.Serialize(item);
                Response.Write(resposta);

            }
            catch
            {
                resposta = "{'erro':'Não foi possível quantificar os professores!'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
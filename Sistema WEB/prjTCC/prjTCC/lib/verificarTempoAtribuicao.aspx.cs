using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarTempoAtribuicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             Response.ContentType = "application/json";
            string resposta = "";
            int codigo = int.Parse(Session["codigo"].ToString());

            try
            {
                Professores professores = new Professores();
                TimeSpan tempoPassou = professores.verificarQuantoTempoFalta(codigo);

                TimeSpan tempoRestante = TimeSpan.FromMinutes(5) - tempoPassou;

                resposta = "{'tempoRestante':'" + tempoRestante.TotalSeconds + "'}";
                Response.Write(resposta.Replace("'", "\""));

            }
            catch
            {
                resposta = "{'erro':'Não foi possível verificar a sua vez!'}";
                Response.Write(resposta.Replace("'", "\""));

            }

        }
    
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace prjTCC.lib
{
    public partial class buscarFiltroProfessor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";
            Response.AddHeader("Access-Control-Allow-Origin", "*");

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

            try
            {
                int codigo = int.Parse(Request["c"].ToString());

                //Atribuicoes atribuicoes = new Atribuicoes();
                //List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(codigo);

                EscolaProfessores escolaProfessores = new EscolaProfessores();
                List<EscolaProfessor> ListaEscolas = escolaProfessores.BuscarEscolasProfessor(codigo);
                if (ListaEscolas.Count != 0)
                {
                    JavaScriptSerializer serializer = new JavaScriptSerializer();
                    resposta = serializer.Serialize(ListaEscolas);
                    Response.Write(resposta);
                }
                else
                {
                    resposta = "{'situacao':'false'}";
                    Response.Write(resposta.Replace("'", "\""));
                }
               
            }
            catch
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
            }



           
        }
    }
}
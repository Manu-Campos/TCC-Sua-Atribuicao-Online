using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Web.Script.Serialization;

namespace prjTCC.lib
{
    public partial class buscarAulasProfessor : System.Web.UI.Page
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
                string Instituicao = !String.IsNullOrEmpty(Request["i"].ToString()) ? Request["i"].ToString() : "";

                //Atribuicoes atribuicoes = new Atribuicoes();
                //List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(codigo);

                Atribuicoes atribuicoes = new Atribuicoes();
                List<string[]> ListaAulas = new List<string[]>();
                if (Instituicao == "")
                    ListaAulas = atribuicoes.BuscarTurmasAtribuidasProfessorInstituicao(codigo,2024,null);
                else
                    ListaAulas = atribuicoes.BuscarTurmasAtribuidasProfessorInstituicao(codigo,2024,Instituicao);

                if (ListaAulas.Count != 0)
                {
                    JavaScriptSerializer serializer = new JavaScriptSerializer();
                    resposta = serializer.Serialize(ListaAulas);
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
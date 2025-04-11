using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class alterarTelefone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.ContentType = "application/json";
            string resposta = "";
            Response.AddHeader("Access-Control-Allow-Origin", "*");

            #region Validações 

            if (Request["t"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["t"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

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

            string telefone = Request["t"].ToString();
            string email = Request["l"].ToString();
            string codigo = Request["c"].ToString();

            try
            {
                Usuarios usuarios = new Usuarios();
                usuarios.alterarTelefone("professor", email, telefone);


                Professores professores = new Professores();
                ProfessorUnico professor = professores.buscarDadosGeraisProfessor(int.Parse(codigo));

                if (professor != null)
                {

                    JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                    resposta = javaScriptSerializer.Serialize(professor.Telefone);
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
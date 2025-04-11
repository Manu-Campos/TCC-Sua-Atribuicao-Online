using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarSePodeAtribuirPEBIII : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";

            try
            {
                int codigo = int.Parse(Session["codigoProfessor"].ToString());
                string instituicao = Session["logado"].ToString();
                Atribuicoes atribuicoes = new Atribuicoes();
                bool verificada = atribuicoes.verificarSePodeAtribuirPEBIII(codigo, instituicao);

                if (verificada == true)
                {
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
                resposta = "{'erro':'Não foi possível atribuir suas turmas!'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
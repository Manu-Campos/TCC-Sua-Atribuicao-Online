using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarAtribuicaoProfessor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            
            Response.ContentType = "application/json";
            string resposta = "";

            //verificar atribuicao
            try
            {
                int codigo = int.Parse(Session["codigo"].ToString());
                Atribuicoes atribuicoes = new Atribuicoes();
                bool verificada = atribuicoes.verificarValidacaoAtribuicaoProfessor(codigo);

                if (verificada == true)
                {
                    resposta = "{'situacao':'true'}";
                    Response.Write(resposta.Replace("'", "\""));
                    return;
                }
                else
                {
                    resposta = "{'situacao':'false'}";
                    Response.Write(resposta.Replace("'", "\""));
                    return;
                }
            }
            catch
            {
                resposta = "{'erro':'Não foi possível atribuir suas turmas!'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }
        }
    }
}
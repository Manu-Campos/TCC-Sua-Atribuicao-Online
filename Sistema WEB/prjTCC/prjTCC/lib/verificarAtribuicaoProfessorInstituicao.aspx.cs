using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarAtribuicaoProfessorInstituicao : System.Web.UI.Page
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
                bool verificada = atribuicoes.verificarSituacaoAtribuicaoProfessorInstituicao(codigo, instituicao);

                if (verificada == true)
                {
                    Professores professores = new Professores();
                    ProfessorUnico professor = professores.buscarDadosGeraisProfessor(codigo);

                    Jornadas jornadas = new Jornadas();
                    Jornada jornada = jornadas.buscarJornadaDoProfessor(codigo, int.Parse(DateTime.Now.Year.ToString()));

                    List<string[]> atribuicao = atribuicoes.BuscarTurmasAtribuidasProfessorInstituicao(codigo, int.Parse(DateTime.Now.Year.ToString()), instituicao);

                    Usuarios usuarios = new Usuarios();
                    Usuario usuario = usuarios.buscarImagem(Session["cargo"].ToString(), Session["logado"].ToString());

                    JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                    JavaScriptSerializer javaScriptSerializer2 = new JavaScriptSerializer();
                    JavaScriptSerializer javaScriptSerializer3 = new JavaScriptSerializer();
                    JavaScriptSerializer javaScriptSerializer4 = new JavaScriptSerializer();

                    resposta = "{\"professor\":" + javaScriptSerializer.Serialize(professor) + ", \"jornada\":" + javaScriptSerializer2.Serialize(jornada) + ", \"atribuicao\":" +  javaScriptSerializer3.Serialize(atribuicao) + ", \"usuario\":" + javaScriptSerializer3.Serialize(usuario) + "}";
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
                resposta = "{'erro':'Não foi possível atribuir suas turmas!'}";
                Response.Write(resposta.Replace("'", "\""));

            }
        }
    }
}
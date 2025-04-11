using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class verificarAtribuicaoProf : System.Web.UI.Page
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

            string codigo= Request["c"].ToString();

            try
            {

                int qtTurmas = 0;

                Jornadas jornadas = new Jornadas();
                Jornada jornada = jornadas.buscarJornadaDoProfessor(int.Parse(codigo), int.Parse(DateTime.Now.Year.ToString()));
                qtTurmas = jornada.CargaHoraria.HTA / jornada.Disciplina.CodigoMultiplicador;

                Turmas turmas = new Turmas();

                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicaoUnica = instituicoes.buscarInstituicaoChamada(int.Parse(codigo));
                List<Turma> listaTurmas = turmas.verificarTurmasPreferenciaProfessor(int.Parse(codigo), instituicaoUnica.Email);

                var resultado = new
                {
                    turmas = listaTurmas,
                    quantidadeTurmas = qtTurmas
                };

                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                resposta = javaScriptSerializer.Serialize(resultado);

                Response.Write(resposta);
            }
            catch (Exception erro)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }

            
    }
}
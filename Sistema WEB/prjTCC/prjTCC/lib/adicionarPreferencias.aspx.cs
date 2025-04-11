using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class preAtribuicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";
            string segundaInstituicao = null;

            if (Request["jornada"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["jornada"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (Request["escolaSede"] == null)
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["escolaSede"].ToString()))
            {
                resposta = "{'situacao':'false'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (int.Parse(Request["tipoEnsino"]) == 2)
            {
                if (Request["segundaEscola"] != "Escolha a segunda instituição")
                {
                    segundaInstituicao = Request["segundaEscola"];
                }        
            }

            int jornada = int.Parse(Request["jornada"]);
            string instituicaoSede = Request["escolaSede"];
            int tipoEnsino = int.Parse(Request["tipoEnsino"]);

            //inserir jornada
            try
            {
                Professores professores = new Professores();
                professores.inserirJornadaProfessor(jornada, int.Parse(Session["codigo"].ToString()), Session["disciplina"].ToString(), tipoEnsino);
            }
            catch 
            {
                resposta = "{'erro':'Não foi possível inserir sua jornada!'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            //inserir instituicao
            try
            {

                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica emailInstituicaoSede = instituicoes.BuscarEmailInstituicao(instituicaoSede);
                InstituicaoUnica emailSegundaInstituicao = instituicoes.BuscarEmailInstituicao(segundaInstituicao);

                Professores professores = new Professores();
                professores.inserirInstituicoesProfessor(emailInstituicaoSede.Email, emailSegundaInstituicao.Email, int.Parse(Session["codigo"].ToString()));

            }
            catch
            {
                resposta = "{'erro':'Não foi possível inserir sua instituição sede!'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            //listar turmas
            bool acabou = false;
            int i = 0;

            List<string> listaTurmas = new List<string>();

            do
            {
                if (Request[$"turmas[{i}]"] != null)
                {
                    string siglaTurma = Request[$"turmas[{i}]"].ToString();
                    string instituicaoTurma = Request[$"instituicaoTurma[{i}]"].ToString();
                    listaTurmas.Add($@"{siglaTurma}-{instituicaoTurma}");
                    i++;
                }
                else
                {
                    acabou = true;
                }
            }
            while (acabou == false);

            //inserir preferencias
            try
            {
                Professores professores = new Professores();

                foreach (var turmas in listaTurmas)
                {
                    string siglaTurma = turmas.Split('-')[0];
                    string instituicaoTurma = turmas.Split('-')[1];
                    professores.inserirPreferenciaProfessor(Session["disciplina"].ToString(), int.Parse(Session["codigo"].ToString()), siglaTurma, tipoEnsino, instituicaoTurma);
                }

                resposta = "{'situacao':'true'}";
                Response.Write(resposta.Replace("'", "\""));
                return;

            }
            catch
            {
                resposta = "{'erro':'Não foi possível inserir suas preferências!'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class adicionarAtribuicaoProfessorAcabouTempo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            //pegar via json
            int codigo = int.Parse(Request["codigoProfessor"].ToString());

            Professores Professores = new Professores();
            ProfessorUnico professor = Professores.buscarDadosGeraisProfessor(codigo);
            string disciplina = professor.Disciplina.Sigla;
            int tipoEnsino = professor.TipoEnsino.Codigo;

            //listar turmas
            bool acabou = false;
            int i = 0;

            List<string> listaTurmas = new List<string>();

            do
            {
                if (Request[$"turmas[{i}]"] != null)
                {
                    string siglaTurma = Request[$"turmas[{i}]"].ToString();
                    listaTurmas.Add($@"{siglaTurma}");
                    i++;
                }
                else
                {
                    acabou = true;
                }
            }
            while (acabou == false);

            //inserir atribuição
            try
            {
                Professores professores = new Professores();

                foreach (var turma in listaTurmas)
                {
                    professores.inserirAtribuicaoProfessorAcabouTempo(codigo, disciplina, turma, Session["logado"].ToString(), tipoEnsino);
                }

                resposta = "{'situacao':'true'}";
                Response.Write(resposta.Replace("'", "\""));
                return;

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
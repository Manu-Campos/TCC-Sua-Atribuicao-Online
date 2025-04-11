using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class adicionarAtribuicaoProfessor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";
            int codigo = int.Parse(Session["codigo"].ToString());
            string disciplina = Session["disciplina"].ToString();
            int tipoEnsino = int.Parse(Session["tipoEnsino"].ToString());

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

            //inserir atribuição
            try
            {
                Professores professores = new Professores();

                foreach (var turmas in listaTurmas)
                {
                    string siglaTurma = turmas.Split('-')[0];
                    string instituicaoTurma = turmas.Split('-')[1];

                    professores.inserirAtribuicaoProfessor(codigo, disciplina, siglaTurma, instituicaoTurma, tipoEnsino);
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    using System;
    using System.Web;
    using System.Web.Script.Serialization;

    public partial class buscarPorcentagemFasesInstituicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";

            try
            {
                Fases fases = new Fases();

                Fase faseAtual = fases.buscarDadosFaseAtualInstituicao(Session["logado"].ToString());

                if (faseAtual.Nome != null)
                {

                    string corEscura = "";
                    string corClara = "";

                    if (faseAtual.Nome == "1º Atribuição")
                    {
                        corEscura = "--Cor-5";
                        corClara = "--Cor-5-degrade-3";
                    }
                    if (faseAtual.Nome == "2° Atribuição")
                    {
                        corEscura = "--Cor-3";
                        corClara = "--Cor-3-degrade-8";
                    }
                    if (faseAtual.Nome == "Remoção")
                    {
                        corEscura = "--Cor-3-degrade-2";
                        corClara = "--Cor-3-degrade-5";
                    }
                    if (faseAtual.Nome == "Carga complementar")
                    {
                        corEscura = "--Cor-1-degrade-1";
                        corClara = "--Cor-2-degrade-1";
                    }
                    if (faseAtual.Nome == "Trocas")
                    {
                        corEscura = "--Cor-1-degrade-2";
                        corClara = "--Cor-1-degrade-6";
                    }
                    if (faseAtual.Nome == "Pré-Atribuição")
                    {
                        corEscura = "--Cor-4";
                        corClara = "--Cor-4-degrade-3";
                    }

                    JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                    resposta = "{'corEscura':'" + corEscura + "','corClara':'" + corClara + "', 'faseAtual':" + javaScriptSerializer.Serialize(faseAtual) + "}";
                    Response.Write(resposta.Replace("'", "\""));

                }
                else
                {
                    resposta = "{'erro':'Nenhuma fase está em processo no momento!'}";
                    Response.Write(resposta.Replace("'", "\""));
                }


            }
            catch
            {
                resposta = "{'erro':'Nenhuma fase está em processo no momento!'}";
                Response.Write(resposta.Replace("'", "\""));
            }
        }
    }
}
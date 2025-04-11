using MySqlX.XDevAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Mysqlx.Datatypes.Scalar.Types;

namespace prjTCC.lib
{
    public partial class andamentoDashboardInstituicao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";
            string resposta = "";

            try
            {
                Fases fases = new Fases();
                Fase faseAtual = fases.buscarDadosFaseAtual();

                if (faseAtual?.Nome != null)
                {
                    Andamentos andamentos = new Andamentos();
                    List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoDisciplinaInstituicaoDashboard(DateTime.Now.Year, Session["logado"].ToString());

                    if (listaAndamentos.Count > 0)
                    {
                        var respostaAndamentos = listaAndamentos.Select(andamento => new
                        {
                            disciplina = andamento.Disciplina,
                            porcentagem = andamento.Porcentagem,
                            situacaoCor = andamento.Situacao
                        }).ToList();

                        resposta = new JavaScriptSerializer().Serialize(respostaAndamentos);
                        Response.Write(resposta);
                    }
                    else
                    {
                        resposta = new JavaScriptSerializer().Serialize(new { erro = "Nenhum andamento encontrado" });
                        Response.Write(resposta);
                    }
                }
                else
                {
                    resposta = new JavaScriptSerializer().Serialize(new { erro = "Nenhuma fase está em processo no momento!" });
                    Response.Write(resposta);
                }
            }
            catch
            {
                resposta = new JavaScriptSerializer().Serialize(new { erro = "Erro ao buscar andamento das fases!" });
                Response.Write(resposta);
            }
        }
    }
}
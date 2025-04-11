using prjTCC.atribuidor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.lib
{
    public partial class andamentoDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            try
            {
                Fases fases = new Fases();

                Fase faseAtual = fases.buscarDadosFaseAtual();

                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();

                if (faseAtual.Nome != null)
                {

                    if (faseAtual.Nome == "1º Atribuição")
                    {
                        Andamentos andamentos = new Andamentos();
                        List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoInstituicoesDashboard(DateTime.Now.Year);

                        if (listaAndamentos.Count != 0)
                        {
                            var respostaAndamentos = new List<object>();
                            foreach (Andamento andamento in listaAndamentos)
                            {
                                var item = new
                                {
                                    escola = andamento.Instituicao,
                                    porcentagem = andamento.Porcentagem,
                                    situacaoCor = andamento.Situacao
                                };
                                respostaAndamentos.Add(item);
                            }

                            resposta = javaScriptSerializer.Serialize(respostaAndamentos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'erro':'Nenhum andamento encontrado'}";
                            Response.Write(resposta);
                        }
                    }
                    if (faseAtual.Nome == "2° Atribuição")
                    {

                        Andamentos andamentos = new Andamentos();
                        List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoInstituicoesDashboard(DateTime.Now.Year);

                        if (listaAndamentos.Count != 0)
                        {
                            var respostaAndamentos = new List<object>();
                            foreach (Andamento andamento in listaAndamentos)
                            {
                                var item = new
                                {
                                    escola = andamento.Instituicao,
                                    porcentagem = andamento.Porcentagem,
                                    situacaoCor = andamento.Situacao
                                };
                                respostaAndamentos.Add(item);
                            }

                            resposta = javaScriptSerializer.Serialize(respostaAndamentos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'erro':'Nenhum andamento encontrado'}";
                            Response.Write(resposta);
                        }
                    }
                    if (faseAtual.Nome == "Remoção")
                    {
                        Andamentos andamentos = new Andamentos();
                        List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoInstituicoesDashboard(DateTime.Now.Year);

                        if (listaAndamentos.Count != 0)
                        {
                            var respostaAndamentos = new List<object>();
                            foreach (Andamento andamento in listaAndamentos)
                            {
                                var item = new
                                {
                                    escola = andamento.Instituicao,
                                    porcentagem = andamento.Porcentagem,
                                    situacaoCor = andamento.Situacao
                                };
                                respostaAndamentos.Add(item);
                            }

                            resposta = javaScriptSerializer.Serialize(respostaAndamentos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'erro':'Nenhum andamento encontrado'}";
                            Response.Write(resposta);
                        }
                    }
                    if (faseAtual.Nome == "Carga complementar")
                    {
                        Andamentos andamentos = new Andamentos();
                        List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoInstituicoesDashboard(DateTime.Now.Year);

                        if (listaAndamentos.Count != 0)
                        {
                            var respostaAndamentos = new List<object>();
                            foreach (Andamento andamento in listaAndamentos)
                            {
                                var item = new
                                {
                                    escola = andamento.Instituicao,
                                    porcentagem = andamento.Porcentagem,
                                    situacaoCor = andamento.Situacao
                                };
                                respostaAndamentos.Add(item);
                            }

                            resposta = javaScriptSerializer.Serialize(respostaAndamentos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'erro':'Nenhum andamento encontrado'}";
                            Response.Write(resposta);
                        }
                    }
                    if (faseAtual.Nome == "Trocas")
                    {
                        Andamentos andamentos = new Andamentos();
                        List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoInstituicoesDashboard(DateTime.Now.Year);

                        if (listaAndamentos.Count != 0)
                        {
                            var respostaAndamentos = new List<object>();
                            foreach (Andamento andamento in listaAndamentos)
                            {
                                var item = new
                                {
                                    escola = andamento.Instituicao,
                                    porcentagem = andamento.Porcentagem,
                                    situacaoCor = andamento.Situacao
                                };
                                respostaAndamentos.Add(item);
                            }

                            resposta = javaScriptSerializer.Serialize(respostaAndamentos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'erro':'Nenhum andamento encontrado'}";
                            Response.Write(resposta);
                        }
                    }
                    if (faseAtual.Nome == "Pré-Atribuição")
                    {
                        Andamentos andamentos = new Andamentos();
                        List<Andamento> listaAndamentos = andamentos.BuscarAndamentoAtribuicaoInstituicoesDashboard(DateTime.Now.Year);

                        if (listaAndamentos.Count != 0)
                        {
                            var respostaAndamentos = new List<object>();
                            foreach (Andamento andamento in listaAndamentos)
                            {
                                var item = new
                                {
                                    escola = andamento.Instituicao,
                                    porcentagem = andamento.Porcentagem,
                                    situacaoCor = andamento.Situacao
                                };
                                respostaAndamentos.Add(item);
                            }

                            resposta = javaScriptSerializer.Serialize(respostaAndamentos);
                            Response.Write(resposta);
                        }
                        else
                        {
                            resposta = "{'erro':'Nenhum andamento encontrado'}";
                            Response.Write(resposta);
                        }
                    }

                    //resposta = "{'corEscura':'" + corEscura + "','corClara':'" + corClara + "', 'faseAtual':" + javaScriptSerializer.Serialize(faseAtual) + "}";
                    //Response.Write(resposta.Replace("'", "\""));

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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Office.Interop.Excel;
using System.Web.Helpers;
using MySql.Data.MySqlClient;
using Xamarin.Forms;

public class Fases : Banco
{
    public Fase Fase { get; set; }

    public Fase buscarFaseAtual()
    {
        Fase fase = new Fase();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDataAtual", DateTime.Now));
            MySqlDataReader dados = Consultar("buscarFaseAtual",parametros);

            if (dados.Read())
            {
                 fase = new Fase(dados.GetString(0));
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível buscar a fase atual!");
        }
        finally
        {
            Desconectar();
        }
        return fase;
    }

    public Fase buscarDadosFaseAtual ()
    {
        Fase fase = new Fase();
        try
        {
            MySqlDataReader dados = Consultar("buscarDadosFaseAtual");
            if (dados.Read())
            {
                fase.Nome = dados.GetString(0);
                fase.DtInicio = dados.GetDateTime(1);
                fase.DtFim = dados.GetDateTime(2);
                fase.Atribuidor.Email = dados.GetString(3);
                fase.Porcentagem = dados.GetString(4);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível buscar a fase atual!");
        }
        finally
        {
            Desconectar();
        }
        return fase;
    }

    public Fase buscarDadosFaseAtualInstituicao(string email)
    {
        Fase fase = new Fase();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();

            parametros.Add(new MySqlParameter("pInstituicao", email));
            MySqlDataReader dados = Consultar("buscarDadosFaseAtualInstituicao", parametros);

            if (dados != null && dados.Read())
            {
                fase.Nome = dados.GetString(0);
                fase.DtInicio = dados.GetDateTime(1);
                fase.DtFim = dados.GetDateTime(2);
                fase.Atribuidor.Email = dados.GetString(3);
                fase.Porcentagem = dados.GetString(4);
            }
            else
            {
                throw new Exception("Nenhum dado encontrado para a fase atual.");
            }

            dados?.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erro ao buscar fase atual: {ex.Message}");
            throw new Exception("Não foi possível buscar a fase atual.");
        }
        finally
        {
            Desconectar();
        }
        return fase;
    }

    public void criarDataFase(string nome, string email , DateTime dtInicio, DateTime dtFim)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNome", nome));
            parametros.Add(new MySqlParameter("pEmail", email));
            parametros.Add(new MySqlParameter("pDataInicio", dtInicio));
            parametros.Add(new MySqlParameter("pDataFim", dtFim));

            Executar("atualizarFase", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }

    }

    public List<string> buscarListaFases()
    {
        List<string> lista = new List<string>();
        try
        {
            MySqlDataReader dados = Consultar("buscarListaFases");
            while (dados.Read())
            {
               
                lista.Add(dados.GetString(0));
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (MySqlException erro)
        {
            throw erro;
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

    public DateTime buscarUltimaDataFim()
    {
        DateTime dataFim = DateTime.Now;
        try
        {
            MySqlDataReader dados = Consultar("buscarUltimaDataFim");
            if (dados.Read())
            {
                dataFim = dados.GetDateTime(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (MySqlException erro)
        {
            throw erro;
        }
        finally
        {
            Desconectar();
        }
        return dataFim;
    }
    public List<Fase> buscarDatasFases()
    {
        List<Fase> lista = new List<Fase>();
        try
        {
            MySqlDataReader dados = Consultar("buscarDatasFases");

            while (dados.Read())
            {
                Fase fase = new Fase(dados.GetDateTime("dt_inicio_fase"), dados.GetDateTime("dt_fim_fase"));
                lista.Add(fase); 
            }

            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (MySqlException erro)
        {
            throw erro;
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

    public Fase buscarProximaFase()
    {
        Fase fase = new Fase();
        try
        {
            MySqlDataReader dados = Consultar("buscarProximaFase");
            if (dados.Read())
            {
                fase.Nome = dados.GetString("nm_fase");
                fase.DtInicio = dados.GetDateTime("dt_inicio_fase");
                fase.DtFim = dados.GetDateTime("dt_fim_fase");
                fase.Atribuidor.Email = dados.GetString("nm_email_atribuidor");
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível buscar a próxima fase!");
        }
        finally
        {
            Desconectar();
        }
        return fase;
    }

}

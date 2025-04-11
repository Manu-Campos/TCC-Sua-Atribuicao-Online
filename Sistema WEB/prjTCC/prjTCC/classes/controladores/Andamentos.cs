using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using MySql.Data.MySqlClient;

public class Andamentos : Banco
{
    public List<Andamento> BuscarAndamentoAtribuicaoInstituicoesDashboard(int ano)
    {
        List<Andamento> lista = new List<Andamento>();

        try
        {

            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAno", ano));
            MySqlDataReader dados = Consultar("buscarSituacaoAndamentoInstituicaoDashboard", parametros);

            while (dados.Read())
            {
                Andamento andamento = new Andamento();
                andamento.Instituicao = dados.GetString(0);
                andamento.Porcentagem = dados.GetString(1);
                andamento.Situacao = dados.GetString(2);

                lista.Add(andamento);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as atribuições!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Andamento> BuscarAndamentoAtribuicaoDisciplinaInstituicaoDashboard(int ano, string email)
    {
        List<Andamento> lista = new List<Andamento>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>
        {
            new MySqlParameter("pAno", ano),
            new MySqlParameter("pInstituicao", email)
        };

            MySqlDataReader dados = Consultar("buscarSituacaoAndamentoDisciplinaDashboardInstituicao", parametros);

            if (dados != null)
            {
                while (dados.Read())
                {
                    Andamento andamento = new Andamento
                    {
                        Disciplina = dados.GetString(0),
                        Porcentagem = dados.GetString(1),
                        Situacao = dados.GetString(2)
                    };
                    lista.Add(andamento);
                }
            }
            else
            {
                throw new Exception("Nenhum dado encontrado para andamento.");
            }

            dados?.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erro ao buscar andamento: {ex.Message}");
            throw new Exception("Não foi possível buscar as atribuições.");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }
}
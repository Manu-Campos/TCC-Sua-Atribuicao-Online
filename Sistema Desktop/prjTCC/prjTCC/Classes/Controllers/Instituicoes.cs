using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

internal class Instituicoes:Instituicao
{
    public List<Instituicao> Listar()
    {
        List<Instituicao> Lista = new List<Instituicao>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pTipo", null));
            MySqlDataReader dados = Consultar("buscarInstituicoesPorTipoEnsino",parametros);

            while (dados.Read())
            {

                Instituicao instituicao = new Instituicao(dados.GetString(0), dados.GetString(1), dados.GetString(2));
                Lista.Add(instituicao);
            }
            if (dados != null)
            {
                if (dados.IsClosed)
                {
                    dados.Close();
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
        finally
        {
            Desconectar();
        }

        return Lista;
    }

    public Instituicao Buscar(string EmailInstituicao)
    {
        List<MySqlParameter> parametros = new List<MySqlParameter>();
        Instituicao instituicao = null;
        try
        {
            parametros.Add(new MySqlParameter("pEmail", EmailInstituicao));
            MySqlDataReader dados = Consultar("buscarinstituicaoPorEmail", parametros);
            if (dados.Read())
            {
                instituicao = new Instituicao(dados.GetString(0), dados.GetString(1), dados.GetString(2));
            }
            else
            {
                return null;
            }
            if (dados != null)
            {
                if (dados.IsClosed)
                {
                    dados.Close();
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
        finally
        {
            Desconectar();
        }

        return instituicao;
    }

    public void Adicionar(Instituicao instituicao)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNome", instituicao.Nome));
            parametros.Add(new MySqlParameter("pEmail", instituicao.Email));
            parametros.Add(new MySqlParameter("pTelefone", instituicao.Telefone));

            Executar("AdicionarInstituicao", parametros);
        }
        catch(Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }

    public void Editar(Instituicao instituicao)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNome", instituicao.Nome));
            parametros.Add(new MySqlParameter("pEmail", instituicao.Email));
            parametros.Add(new MySqlParameter("pTelefone", instituicao.Telefone));

            Executar("EditarInstituicao", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }
}

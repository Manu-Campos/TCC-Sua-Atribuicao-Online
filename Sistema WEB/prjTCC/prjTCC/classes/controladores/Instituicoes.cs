using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Instituicoes : Banco
{
    public InstituicaoUnica BuscarEmailInstituicao(string nome)
    {
        InstituicaoUnica instituicao = new InstituicaoUnica();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNome", nome));
            MySqlDataReader dados = Consultar("buscarEmailInstituicao", parametros);
            while (dados.Read())
            {
                instituicao.Email = dados.GetString(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar a instituição!");
        }
        finally
        {
            Desconectar();
        }

        return instituicao;
    }

    public InstituicaoUnica buscarInstituicaoChamada(int codigo)
    {
        InstituicaoUnica instituicao = new InstituicaoUnica();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            MySqlDataReader dados = Consultar("buscarInstituicaoChamada", parametros);
            while (dados.Read())
            {
                instituicao.Email = dados.GetString(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar a instituição!");
        }
        finally
        {
            Desconectar();
        }

        return instituicao;
    }


    public void ChamarProfessor(string EmailInstituicao, int CodigoProfessor)
    {
        List<MySqlParameter> parametros = new List<MySqlParameter>();
        parametros.Add(new MySqlParameter("pEmail", EmailInstituicao));
        parametros.Add(new MySqlParameter("pCodigo", CodigoProfessor));
        Executar("ChamarProfessorParaAtribuirInstituicao", parametros);
    }

    public List<InstituicaoUnica> BuscarInstituicoesPorTipoEnsino(string tipo = null)
    {
        List<InstituicaoUnica> lista = new List<InstituicaoUnica>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pTipo", tipo));
            MySqlDataReader dados = Consultar("buscarInstituicoesPorTipoEnsino", parametros);
            while (dados.Read())
            {
                InstituicaoUnica instituicao = new InstituicaoUnica();
                instituicao.Nome = dados.GetString(0);
                instituicao.Email = dados.GetString(1);
                lista.Add(instituicao);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as Instituições!");
        }
        finally
        {
            Desconectar();
        }
        return lista;

    }

    public List<InstituicaoUnica> BuscarInstituicoesPorProfessor(int codigo)
    {
        List<InstituicaoUnica> lista = new List<InstituicaoUnica>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pProfessor", codigo));
            MySqlDataReader dados = Consultar("buscarInstituicoesDoProfessor", parametros);
            while (dados.Read())
            {
                InstituicaoUnica instituicao = new InstituicaoUnica();
                instituicao.Nome = dados.GetString(0);
                lista.Add(instituicao);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as Instituições!");
        }
        finally
        {
            Desconectar();
        }
        return lista;

    }

    public InstituicaoUnica Buscar(string EmailInstituicao)
    {
        List<MySqlParameter> parametros = new List<MySqlParameter>();
        parametros.Add(new MySqlParameter("pEmail", EmailInstituicao));
        MySqlDataReader dados = Consultar("buscarinstituicaoPorEmail", parametros);
        if (dados.Read())
        {
            InstituicaoUnica instituicao = new InstituicaoUnica(dados.GetString(0), dados.GetString(1), dados.GetString(2));
            Desconectar();
            if (dados != null)
            {
                if (dados.IsClosed)
                    dados.Close();
            }
            return instituicao;
        }
        else
        {
            if (dados != null)
                if (dados.IsClosed)
                    dados.Close();
            Desconectar();
            return null;
        }

    }
    public InstituicaoUnica buscarDadosInstituicao(string EmailInstituicao)
    {
        InstituicaoUnica instituicao = new InstituicaoUnica();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", EmailInstituicao));
            MySqlDataReader dados = Consultar("buscarDadosInstituicao", parametros);

            if (dados.Read())
            {
               ProfessorUnico professor = new ProfessorUnico(dados.GetInt32("cd_professor"), dados.GetString("nm_professor"), dados.GetString("nm_email_professor"),  dados.GetString("cd_numero_professor"), dados.GetDateTime("dt_nascimento_professor")) ;  
               Diretor diretor = new Diretor(professor);
               List<TipoEnsino> lista = dados.GetString(2).Split(',').Select(tp => new TipoEnsino { Nome = tp.Trim() }) .ToList();

               instituicao = new InstituicaoUnica( EmailInstituicao, dados.GetString("nm_instituicao"), dados.GetString("cd_numero_instituicao"),lista, diretor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os dados da instituição");
        }
        finally
        {
            Desconectar();
        }
        return instituicao;

    }

}

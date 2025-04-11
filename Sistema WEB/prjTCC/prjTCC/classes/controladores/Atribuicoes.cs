using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public class Atribuicoes : Banco
{

    public List<string[]> BuscarTurmasAtribuidasProfessorInstituicao(int codigoProfessor, int ano, string emailInstituicao)
    {
        List<string[]> linhas = new List<string[]>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();

            parametros.Add(new MySqlParameter("pCodigo", codigoProfessor));
            parametros.Add(new MySqlParameter("pAnoAtribuicao", ano));
            parametros.Add(new MySqlParameter("pEmailInstituicao", emailInstituicao));

            MySqlDataReader dados = Consultar("BuscarTurmasAtribuidasProfessorInstituicao", parametros);

            while (dados.Read())
            {
                string[] linhaTabela = { dados.GetString(0), dados.GetString(1), dados.GetString(2), dados.GetString(3), dados.GetString(4) };
                linhas.Add(linhaTabela);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível buscar suas turmas!");
        }
        finally
        {
            Desconectar();
        }
        return linhas;
    }

    public List<Atribuicao> buscarAnosAtribuicao(int codigoProfessor = 0, string emailInstituicao = null)
    {
        List<Atribuicao> lista = new List<Atribuicao>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pProfessor", codigoProfessor));
            parametros.Add(new MySqlParameter("pInstituicao", emailInstituicao));
            MySqlDataReader dados = Consultar("buscarAnosAtribuicao", parametros);

            while (dados.Read())
            {
                Atribuicao atribuicao = new Atribuicao();
                atribuicao.DataAtribuicao = dados.GetDateTime(0);

                lista.Add(atribuicao);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os anos da atribuição!");
        }
        finally
        {
            Desconectar();
        }
        return lista;

    }

    public void validarAtribuicaoProfessor(int codigo)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            Executar("validarAtribuicaoProfessor", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public bool verificarSituacaoAtribuicaoProfessorInstituicao(int codigo, string email)
    {
        bool suaVez = false;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pEmail", email));
            MySqlDataReader dados = Consultar("verificarSituacaoAtribuicaoProfessorinstituicao", parametros);

            if (dados.Read())
            {
                suaVez = dados.GetBoolean(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível verificar a atribuição!");
        }
        finally
        {
            Desconectar();
        }

        return suaVez;
    }

    public bool verificarSePodeAtribuirPEBIII(int codigo, string email)
    {
        bool suaVez = false;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pEmail", email));
            MySqlDataReader dados = Consultar("verificarSePodeAtribuirPEBIII", parametros);

            if (dados.Read())
            {
                suaVez = dados.GetBoolean(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível verificar a atribuição!");
        }
        finally
        {
            Desconectar();
        }

        return suaVez;
    }

    public string verificarSituacaoAtribuicaoProfessor(int codigo)
    {
        string suaVez = "";

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            MySqlDataReader dados = Consultar("verificarSituacaoAtribuicaoProfessor", parametros);

            if (dados.Read())
            {
                suaVez = dados.GetString(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível verificar a atribuição!");
        }
        finally
        {
            Desconectar();
        }

        return suaVez;
    }

    public bool verificarValidacaoAtribuicaoProfessor(int codigoProfessor)
    {
        bool situacao = false;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigoProfessor));
            MySqlDataReader dados = Consultar("verificarValidacaoAtribuicao", parametros);

            if (dados.Read())
            {
                if (dados.GetBoolean(0) == true)
                {
                    situacao = true;
                }
                else
                {
                    situacao = false;
                }
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
        return situacao;
    }

    public List<List<string>> BuscarAndamentoAtribuicaoInstituicoes(int ano, string instituicao)
    {
        List<List<string>> lista = new List<List<string>>();

        try
        {

            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroAno", ano));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarSituacaoAndamentoInstituicao", parametros);

            while (dados.Read())
            {
                List<string> atribuicao = new List<string>();

                atribuicao.Add(dados.GetString(0));
                atribuicao.Add(dados.GetString(1));
                atribuicao.Add(dados.GetString(2));

                lista.Add(atribuicao);
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

    public bool VerificarSeTemQueAtribuirTudo(int codigo, string instituicao)
    {
        bool suaVez = false;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pProfessor", codigo));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            MySqlDataReader dados = Consultar("VerificarSeTemQueAtribuirTudo", parametros);

            if (dados.Read())
            {
                suaVez = dados.GetBoolean(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível verificar a atribuição!");
        }
        finally
        {
            Desconectar();
        }

        return suaVez;
    }
}

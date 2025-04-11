using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

public class Anexos : Banco
{
    public List<Anexo> buscarAnexosProfessor(int codigo, int ano = 0)
    {
        List<Anexo> lista = new List<Anexo>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pFiltroAno", ano));
            MySqlDataReader dados = Consultar("buscarHistoricoProfessor", parametros);

            while (dados.Read())
            {
                Anexo anexo = new Anexo();
                anexo.Professor.Codigo = codigo;
                anexo.Atribuicao.DataAtribuicao = dados.GetDateTime(0);
                anexo.Jornada.CargaHoraria.HTA = dados.GetInt32(1);

                lista.Add(anexo);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os anexos!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Anexo> buscarAnexosInstituicao(int ano, string tipo, string disciplina, string instituicao)
    {
        List<Anexo> lista = new List<Anexo>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroAno", ano));
            parametros.Add(new MySqlParameter("pTipoEnsino", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarHistoricoInstituicao", parametros);

            while (dados.Read())
            {
                Anexo anexo = new Anexo();
                anexo.InstituicaoUnica.Nome = dados.GetString(0);
                anexo.Atribuicao.DataAtribuicao = dados.GetDateTime(1);
                anexo.Disciplina.Nome = dados.GetString(2);
                anexo.Disciplina.TipoEnsino.Nome = dados.GetString(3);

                lista.Add(anexo);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os anexos!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Anexo> buscarDadosAtasPEBI(int ano, string tipo, string disciplina, string instituicao)
    {
        List<Anexo> lista = new List<Anexo>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAno", ano));
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarDadosAtasPEBI", parametros);

            while (dados.Read())
            {
                Anexo anexo = new Anexo();
                anexo.Ordem = dados.GetString(0);
                anexo.Professor.Nome = dados.GetString(1);
                anexo.Professor.Codigo = dados.GetInt32(2);
                anexo.Atribuicao.Turma.SiglaTurma = dados.GetString(3);
                anexo.Atribuicao.Turma.TipoPeriodo.Nome = dados.GetString(4);
                anexo.Atribuicao.Substituicao = dados.GetString(5);
                anexo.Professor.Ativo = dados.GetString(6);
                anexo.Atribuicao.DataAtribuicao = dados.GetDateTime(7);
                anexo.Atribuicao.CienciaDiretor = dados.GetBoolean(8);
                anexo.Atribuicao.CienciaProfessor = dados.GetBoolean(9);

                lista.Add(anexo);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os dados!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Anexo> buscarDadosProfessoresAtasPEBIII(int ano, string tipo, string disciplina, string instituicao)
    {
        List<Anexo> lista = new List<Anexo>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAno", ano));
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarDadosProfessoresAtasPEBIII", parametros);

            while (dados.Read())
            {
                Anexo anexo = new Anexo();
                anexo.Ordem = dados.GetString(0);
                anexo.Professor.Nome = dados.GetString(1);
                anexo.Professor.Codigo = dados.GetInt32(2);
                anexo.Professor.Jornada.CargaHoraria.HTA = dados.GetInt32(3);
                anexo.Professor.Ativo = dados.GetString(4);
                anexo.Atribuicao.DataAtribuicao = dados.GetDateTime(5);
                anexo.Atribuicao.CienciaProfessor = dados.GetBoolean(6);

                lista.Add(anexo);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os dados!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Anexo> buscarDadosTurmasAnexos(int ano, int codigo)
    {
        List<Anexo> lista = new List<Anexo>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAno", ano));
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            MySqlDataReader dados = Consultar("buscarDadosTurmasAnexos", parametros);

            while (dados.Read())
            {
                Anexo anexo = new Anexo();
                anexo.InstituicaoUnica.Nome = dados.GetString(0);
                anexo.Disciplina.Nome = dados.GetString(1);
                anexo.qtManha = dados.GetInt32(2);
                anexo.qtIntegral = dados.GetInt32(3);
                anexo.qtTarde = dados.GetInt32(4);
                anexo.qtVespertino = dados.GetInt32(5);
                anexo.qtNoite = dados.GetInt32(6);
                anexo.Turma.Nome = dados.GetString(7);
                anexo.Atribuicao.CienciaDiretor = dados.GetBoolean(8);
                anexo.Atribuicao.CienciaProfessor = dados.GetBoolean(9);

                lista.Add(anexo);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os dados!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

}

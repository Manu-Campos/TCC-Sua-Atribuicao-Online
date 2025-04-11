using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;


public class Turmas : Banco
{
    public List<Turma> BuscarTurmasAtribuidasProfessor(int codigo, int ano, string instituicao)
    {
        List<Turma> lista = new List<Turma>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pAnoAtribuicao", ano));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            MySqlDataReader dados = Consultar("BuscarTurmasAtribuidasProfessor", parametros);

            while (dados.Read())
            {
                Turma turma = new Turma();

                turma.SiglaTurma = dados.GetString(0);
                turma.TipoEnsino.Nome = dados.GetString(1);
                turma.TipoPeriodo.Nome = dados.GetString(2);
                turma.Disciplina.Nome = dados.GetString(3);
                turma.InstituicaoUnica.Nome = dados.GetString(4);

                lista.Add(turma);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as turmas!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Turma> BuscarTurmasAtribuidasProfessorInstituicao(int codigo, int ano, string instituicao)
    {
        List<Turma> lista = new List<Turma>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pAnoAtribuicao", ano));
            parametros.Add(new MySqlParameter("pEmailInstituicao", instituicao));
            MySqlDataReader dados = Consultar("BuscarTurmasAtribuidasProfessorInstituicao", parametros);

            while (dados.Read())
            {
                Turma turma = new Turma();

                turma.SiglaTurma = dados.GetString(0);
                turma.TipoPeriodo.Nome = dados.GetString(1);
                turma.Disciplina.Nome = dados.GetString(3);
                turma.InstituicaoUnica.Nome = dados.GetString(4);
                turma.Situacao = dados.GetString(4);

                lista.Add(turma);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as turmas!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<List<string>> buscarAndamentoInstituicao(int ano, string tipo, string disciplina, string instituicao)
    {
        List<List<string>> lista = new List<List<string>>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroAno", ano));
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarAndamentoInstituicao", parametros);

            while (dados.Read())
            {
                List<string> turmas = new List<string>();

                turmas.Add(dados.GetString(0));
                turmas.Add(dados.GetString(1));
                turmas.Add(dados.GetString(2));
                turmas.Add(dados.GetString(3));

                lista.Add(turmas);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as turmas!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<Turma> buscarTurmasInstituicao(string instituicao, string disciplina)
    {
        List<Turma> lista = new List<Turma>();
        try
        {

            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));

            MySqlDataReader dados = Consultar("buscarTurmasInstituicao", parametros);

            while (dados.Read())
            {
                Turma turma = new Turma();
                turma.SiglaTurma = dados.GetString(0);
                turma.TipoEnsino.Nome = dados.GetString(1);
                turma.TipoPeriodo.Nome = dados.GetString(2);
                turma.InstituicaoUnica.Nome = dados.GetString(3);
                lista.Add(turma);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as turmas!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

    public List<Turma> buscarTurmasDisponiveis(int codigo, string primeiraInstituicao, string segundaInstituicao)
    {
        List<Turma> lista = new List<Turma>();
        try
        {

            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pProfessor", codigo));
            parametros.Add(new MySqlParameter("pPrimeiraInstituicao", primeiraInstituicao));
            parametros.Add(new MySqlParameter("pSegundaInstituicao", segundaInstituicao));

             MySqlDataReader dados = Consultar("buscarTurmasDisponiveisProfessores", parametros);

            while (dados.Read())
            {
                Turma turma = new Turma();
                turma.Nome = dados.GetString(0);
                turma.TipoPeriodo.Nome = dados.GetString(1);
                turma.InstituicaoUnica.Nome = dados.GetString(2);
                lista.Add(turma);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as turmas!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

    public List<Turma> verificarTurmasPreferenciaProfessor(int codigo, string emailInstituicao)
    {
        List<Turma> lista = new List<Turma>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pEmailInstituicao", emailInstituicao));

            MySqlDataReader dados = Consultar("verificarTurmasPreferenciaProfessor", parametros);

            while (dados.Read())
            {
                Turma turma = new Turma();

                turma.Nome = dados.GetString(0);
                turma.TipoPeriodo.Nome = dados.GetString(1);
                turma.InstituicaoUnica.Nome = dados.GetString(2);
                turma.Situacao = dados.GetString(3);
                turma.NivelPreferencia = dados.GetString(4);

                lista.Add(turma);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as turmas!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    } 
}

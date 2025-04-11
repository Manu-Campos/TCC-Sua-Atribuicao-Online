using Microsoft.Office.Interop.Excel;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI;
using prjTCC.instituicao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Professores : Banco
{
    public List<ProfessorUnico> buscarProfessoresAtribuidosInstituicao(string tipo, string disciplina, string EmailInstituicao)
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", EmailInstituicao));
            MySqlDataReader dados = Consultar("buscarProfessoresAtribuidosInstituicao", parametros);

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();
                professor.Ordem = dados.GetString(0);
                professor.Nome = dados.GetString(1);
                professor.Codigo = dados.GetInt32(2);
                professor.TipoEnsino.Nome = dados.GetString(3);
                professor.Disciplina.Nome = dados.GetString(4);
                professor.SituacaoAtribuicao = dados.GetString(5);

                lista.Add(professor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }
    public List<ProfessorUnico> buscarProfessoresAtribuidosDashboard(string EmailInstituicao, string disciplina, int tipo )
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pTipoEnsino", tipo));
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pEmailInstituicao", EmailInstituicao));
            MySqlDataReader dados = Consultar("buscarProfessoresAtribuicaoDashboard", parametros);

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();
                professor.Ordem = dados.GetString(0);
                professor.Codigo = dados.GetInt32(1);
                professor.Nome = dados.GetString(2);
                professor.Email = dados.GetString(3);
                professor.Ativo = dados.GetString(4);
                professor.ChamadaDt = dados.GetDateTime(5);
                professor.SituacaoAtribuicao = dados.GetString(6);


                lista.Add(professor);

            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }
    public ProfessorUnico LogarApp(string email, string senha)
    {
        ProfessorUnico professor = new ProfessorUnico();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));
            parametros.Add(new MySqlParameter("pSenha", senha));

            MySqlDataReader dados = Consultar("logarApp", parametros);

            if (dados.Read())
            {
                professor = new ProfessorUnico(dados.GetInt32("cd_professor"), dados.GetString("nm_email_professor"),
                dados.GetString("nm_senha_professor"), dados.GetString("nm_professor"), dados.GetInt32("qt_filhos"),
                dados.GetDateTime("dt_nascimento_professor"), dados.GetDateTime("dt_entrada_prefeitura"),
                dados.GetDecimal("qt_pontuacao"), dados.GetString("cd_numero_professor"), dados.GetInt32("cd_tipo_professor"),
                dados.GetString("sg_disciplina"), dados.GetInt32("cd_tipo_ensino"));
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch
        {
            throw new System.Exception("Login e/ou Senha inválido(s). Tente novamente!");
        }
        finally
        {
            Desconectar();
        }

        return professor;
    }
    public void confirmarChamadaInicioAtribuicaoProfessor(int codigo)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            Executar("confirmarChamadaInicioAtribuicaoProfessor", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public TimeSpan verificarQuantoTempoFalta(int CodigoProfessor)
    {
        List<MySqlParameter> parametros = new List<MySqlParameter>();
        parametros.Add(new MySqlParameter("pCodigo", CodigoProfessor));
        MySqlDataReader dados = Consultar("verificarQuantoTempoFalta", parametros);

        if (dados.Read())
        {
           return dados.GetTimeSpan(0);
        }
        else
        {
            return TimeSpan.Zero;
        }
    }

    public string verificarSePodeAtribuir(int CodigoProfessor)
    {
        List<MySqlParameter> parametros = new List<MySqlParameter>();
        parametros.Add(new MySqlParameter("pCodigo", CodigoProfessor));
        MySqlDataReader dados = Consultar("verificarSituacaoChamadaProfessor", parametros);

        if (dados.Read())
        {
            return dados.GetString(0);
        }
        else
        {
            return null;
        }
    }

    public bool verificarExistenciaPreferenciaProfessor(int codigo)
    {
        bool situacao = false;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            MySqlDataReader dados = Consultar("verificarExistenciaPreferenciaProfessor", parametros);

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
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar a situação da preferência deste professor!");
        }
        finally
        {
            Desconectar();
        }

        return situacao;
    }

    public void inserirAtribuicaoProfessor(int codigo, string disciplina, string turma, string instituicao, int tipoEnsino)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pTurma", turma));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            parametros.Add(new MySqlParameter("pTipoEnsino", tipoEnsino));

            Executar("inserirAtribuicaoProfessor", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public void inserirAtribuicaoProfessorAcabouTempo(int codigo, string disciplina, string turma, string instituicao, int tipoEnsino)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pTurma", turma));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            parametros.Add(new MySqlParameter("pTipoEnsino", tipoEnsino));

            Executar("inserirAtribuicaoProfessorAcabouTempo", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public void inserirPreferenciaProfessor(string disciplina, int codigo, string turma, int tipoEnsino, string instituicao)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pTurma", turma));
            parametros.Add(new MySqlParameter("pTipoEnsino", tipoEnsino));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));

            Executar("inserirPreferenciaProfessor", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public void inserirInstituicoesProfessor(string instituicaoSede, string segundaInstituicao, int codigo)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pInstituicaoSede", instituicaoSede));
            parametros.Add(new MySqlParameter("pSegundaInstituicao", segundaInstituicao));
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            Executar("inserirInstituicoesProfessor", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public void inserirJornadaProfessor(int cargaHoraria, int codigo, string disciplina, int tipoEnsino)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCargaHoraria", cargaHoraria));
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pTipoEnsino", tipoEnsino));

            Executar("inserirJornadaProfessor", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public List<ProfessorUnico> ordenarProfessores(string tipo, string disciplina, string instituicao)
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));

            MySqlDataReader dados = Consultar("buscarProfessoresPorClassificacao", parametros);

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();

                professor.Ordem = dados.GetString(0);
                professor.Codigo = dados.GetInt32(1);
                professor.Nome = dados.GetString(2);
                professor.TipoProfessor.Nome = dados.GetString(3);
                professor.Instituicao.Nome = dados.GetString(4);

                lista.Add(professor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar a classificação dos professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public int buscarClassificacaoProfessor(string tipo, string disciplina, string instituicao, int codigo)
    {
        int ordem = 0;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            MySqlDataReader dados = Consultar("buscarClassificacaoProfessor", parametros);

            if (dados.Read())
            {
                ordem = dados.GetInt32(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar a classificação do professor!");
        }
        finally
        {
            Desconectar();
        }

        return ordem;
    }

    public List<ProfessorUnico> buscarAndamentoProfessoresGeral(int ano, string tipo, string disciplina, string instituicao)
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroAno", ano));
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", instituicao));

            MySqlDataReader dados = Consultar("buscarAndamentoProfessoresGeral", parametros);

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();
                professor.Ordem = dados.GetString(0);
                professor.Codigo = dados.GetInt32(1);
                professor.Nome = dados.GetString(2);
                professor.TipoEnsino.Nome = dados.GetString(3);
                professor.Disciplina.Nome = dados.GetString(4);
                professor.Instituicao.Nome = dados.GetString(5);
                professor.SituacaoAtribuicao = dados.GetString(6);

                lista.Add(professor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os professores!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

    public ProfessorUnico buscarDadosGeraisProfessor(int codigo)
    {
        ProfessorUnico professor = new ProfessorUnico();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            MySqlDataReader dados = Consultar("buscarDadosProfessor", parametros);

            if (dados.Read())
            {
                professor.Nome = dados.GetString(0);
                professor.Email = dados.GetString(1);
                professor.Codigo = dados.GetInt32(2);
                professor.QtdPontuacao = dados.GetInt32(3);
                professor.TipoEnsino.Nome = dados.GetString(4);
                professor.Disciplina.Nome = dados.GetString(5);
                professor.TipoEnsino.Codigo = dados.GetInt32(6);
                professor.Disciplina.Sigla = dados.GetString(7);
                professor.TempoPrefeitura = dados.GetInt32(8);
                professor.Instituicao.Nome = dados.GetString(9);
                professor.Telefone = dados.GetString(10);
                professor.TipoProfessor.Nome = dados.GetString(11);
                professor.TipoEnsino.Codigo = dados.GetInt32(12);

            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar o professor!");
        }
        finally
        {
            Desconectar();
        }
        return professor;
    }
    public List<ProfessorUnico> buscarProfessoresNaoAtribuidos()
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();

        try
        {
            MySqlDataReader dados = Consultar("buscarProfessoresNaoAtribuidosP1");

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();
                professor.Ordem = dados.GetString(0);
                professor.Codigo = dados.GetInt32(1);
                professor.Nome = dados.GetString(2);
                professor.TipoProfessor.Nome = dados.GetString(3);
                professor.Instituicao.Nome = dados.GetString(4);

                lista.Add(professor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<ProfessorUnico> buscarProfessoresNaoAtribuidos(string EmailInstituicao,int tipo,string disciplina)
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmailInstituicao", EmailInstituicao));
            parametros.Add(new MySqlParameter("pTipoEnsino", tipo));
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            MySqlDataReader dados = Consultar("buscarProfessoresAtribuicaoInstituicao", parametros);

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();
                professor.Ordem = dados.GetString(0);
                professor.Codigo = dados.GetInt32(1);
                professor.Nome = dados.GetString(2);
                professor.TipoProfessor.Nome = dados.GetString(3);
                professor.Instituicao.Nome = dados.GetString(4);
                professor.Jornada.CargaHoraria.HTA = dados.GetInt32(5);
                professor.SituacaoAtribuicao = dados.GetString(6);
                professor.Email = dados.GetString(7);

                lista.Add(professor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<ProfessorUnico> buscarProfessoresInstituicao(string tipo, string disciplina, string EmailInstituicao)
    {
        List<ProfessorUnico> lista = new List<ProfessorUnico>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pFiltroTipo", tipo));
            parametros.Add(new MySqlParameter("pFiltroDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pFiltroInstituicao", EmailInstituicao));
            MySqlDataReader dados = Consultar("buscarProfessoresInstituicao", parametros);

            while (dados.Read())
            {
                ProfessorUnico professor = new ProfessorUnico();
                professor.Ordem = dados.GetString(0);
                professor.Codigo = dados.GetInt32(1);
                professor.Nome = dados.GetString(2);
                professor.TipoEnsino.Nome = dados.GetString(3);
                professor.Disciplina.Nome = dados.GetString(4);
                professor.SituacaoAtribuicao = dados.GetString(5);

                lista.Add(professor);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<string> BuscarQuantidadeProfessores()
    {
        List<string> lista = new List<string>();

        try
        {
            MySqlDataReader dados = Consultar("buscarQuantidadeProfessores");

            while (dados.Read())
            {
                string ativos = (dados.GetInt64(0)).ToString();
                string substitutos = (dados.GetInt64(1)).ToString();
                string afastados = (dados.GetInt64(2)).ToString();
                lista.Add(ativos);
                lista.Add(substitutos);
                lista.Add(afastados);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar a quantidade de professores!");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

    public List<string> BuscarQuantidadeProfessoresInstituicao(string email)
    {
        List<string> lista = new List<string>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>
        {
            new MySqlParameter("pInstituicao", email)
        };

            MySqlDataReader dados = Consultar("buscarQuantidadeProfessoresInstituicao", parametros);

            if (dados != null && dados.Read())
            {
                lista.Add(dados.GetInt64(0).ToString()); // ativos
                lista.Add(dados.GetInt64(1).ToString()); // substitutos
                lista.Add(dados.GetInt64(2).ToString()); // afastados
            }
            else
            {
                throw new Exception("Nenhum dado encontrado para professores.");
            }

            dados?.Close();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erro ao buscar quantidade de professores: {ex.Message}");
            throw new Exception("Não foi possível buscar a quantidade de professores.");
        }
        finally
        {
            Desconectar();
        }

        return lista;
    }

}

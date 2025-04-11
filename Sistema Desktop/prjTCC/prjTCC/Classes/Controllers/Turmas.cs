using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using prjTCC.Enums;

internal class Turmas:Banco
{
    public List<Turma> BuscarTurmas()
    {
        List<Turma> Lista = new List<Turma>();

        try
        {
            MySqlDataReader dados = Consultar("buscarTurmas");

            while (dados.Read())
            {
                Turma Turma = new Turma();
                Instituicoes instituicoes = new Instituicoes();

                Turma.Nome = dados.GetString(0);
                Turma.Sigla = dados.GetString(1);
                Turma.Instituicao = instituicoes.Buscar(dados.GetString(2));
                Turma.TipoEnsino = dados.GetInt32(3);
                Turma.Periodo = Enum.GetName(typeof(EPeriodos), dados.GetInt32(4));

                Lista.Add(Turma);
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

    public List<Turma> BuscarTurmas(ETipoEnsino eTipo)
    {
        List<Turma> Lista = new List<Turma>();

        try
        {
            MySqlDataReader dados = Consultar("BuscarTurmas");

            while (dados.Read())
            {
                Turma Turma = new Turma();
                Instituicoes instituicoes = new Instituicoes();

                if (dados.GetInt32("cd_tipo_ensino") == (int)eTipo)
                {
                    Turma.Nome = dados.GetString(0);
                    Turma.Sigla = dados.GetString(1);
                    Turma.Instituicao = instituicoes.Buscar(dados.GetString(2));
                    Turma.TipoEnsino = dados.GetInt32(3);
                    Turma.Periodo = dados.GetString(4);
                    Lista.Add(Turma);
                }
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

    public void Adicionar(Turma Turma)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNome", Turma.Nome));
            parametros.Add(new MySqlParameter("pSigla", Turma.Sigla));
            parametros.Add(new MySqlParameter("pEmail", Turma.Instituicao.Email));
            parametros.Add(new MySqlParameter("pTipoEnsino", Turma.TipoEnsino));
            parametros.Add(new MySqlParameter("pPeriodo", (int)Enum.Parse(typeof(EPeriodos),Turma.Periodo)));

            Executar("AdicionarTurma", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }

    public void Editar(Turma Turma)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNome", Turma.Nome));
            parametros.Add(new MySqlParameter("pSigla", Turma.Sigla));
            parametros.Add(new MySqlParameter("pEmail", Turma.Instituicao.Email));
            parametros.Add(new MySqlParameter("pTipoEnsino", Turma.TipoEnsino));

            Executar("EditarTurma", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }
}

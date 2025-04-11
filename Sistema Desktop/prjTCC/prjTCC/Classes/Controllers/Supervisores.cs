using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;


internal class Supervisores : Supervisor
{
    public List<Supervisor> ListarSupervisores()
    {
        List<Supervisor> Lista = new List<Supervisor>();

        try
        {
            MySqlDataReader dados = Consultar("BuscarSupervisores");

            while (dados.Read())
            {
                Professores professores = new Professores();
                Professor Professor = professores.BuscarProfessorPorCodigo(dados.GetInt32("cd_professor"));

                Supervisor Supervisor = new Supervisor();

                Supervisor.Professor = Professor;
                Supervisor.SiglaDisciplina = dados.GetString(2);
                Supervisor.TipoEnsino = dados.GetInt32(3);
                Supervisor.Email = dados.GetString(4);
                Lista.Add(Supervisor);
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

    public void Adicionar(Supervisor Supervisor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDisciplina", Supervisor.SiglaDisciplina));
            parametros.Add(new MySqlParameter("pCodigo", Supervisor.Professor.Codigo));
            parametros.Add(new MySqlParameter("pEmail", Supervisor.Email));
            parametros.Add(new MySqlParameter("pTipoEnsino", Supervisor.TipoEnsino));

            Executar("AdicionarSupervisor", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }

    public void Editar(Supervisor Supervisor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDisciplina", Supervisor.SiglaDisciplina));
            parametros.Add(new MySqlParameter("pCodigo", Supervisor.Professor.Codigo));
            parametros.Add(new MySqlParameter("pEmail", Supervisor.Email));
            parametros.Add(new MySqlParameter("pTipoEnsino", Supervisor.TipoEnsino));

            Executar("EditarSupervisor", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }
}

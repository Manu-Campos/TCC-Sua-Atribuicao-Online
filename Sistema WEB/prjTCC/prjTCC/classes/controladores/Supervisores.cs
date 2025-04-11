using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Supervisores : Banco
{
    public SupervisorUnico buscarDisciplina(int CodigoProfessor)
    {
        SupervisorUnico supervisor = new SupervisorUnico();

        List<MySqlParameter> parametros = new List<MySqlParameter>();
        parametros.Add(new MySqlParameter("pCodigo", CodigoProfessor));
        MySqlDataReader dados = Consultar("buscarDisciplinaSupervisor", parametros);

        if (dados.Read())
        {
            supervisor.Disciplina.Nome = dados[0].ToString();
        }

        return supervisor;
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

internal class Disciplinas : Disciplina
{
    public List<Disciplina> Listar()
    {
        List<Disciplina> Lista = new List<Disciplina>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNomeT", null));

            MySqlDataReader dados = Consultar("buscarDisciplinas",parametros);
            while (dados.Read())
            {
                Disciplina disciplina = new Disciplina(dados.GetString("sg_disciplina"));
                Lista.Add(disciplina);
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
}

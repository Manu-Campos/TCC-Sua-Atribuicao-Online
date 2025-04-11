using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public class Disciplinas : Banco
{
    public Disciplina Disciplina { get; set; }

    public List<Disciplina> BuscarDisciplinas(string nomeT = null)
    {
        List<Disciplina> lista = new List<Disciplina> ();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pNomeT", nomeT));
            MySqlDataReader dados = Consultar("buscarDisciplinas",parametros);
            while (dados.Read())
            {
                Disciplina disciplina = new Disciplina(dados.GetString(0),dados.GetString(1),dados.GetString(2));
                lista.Add(disciplina);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as disciplinas!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

    public string buscarSiglaDisciplina(string nomeDisciplina)
    {
        string sigla = "";

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDisciplina", nomeDisciplina));
            MySqlDataReader dados = Consultar("buscarSiglaDisciplina", parametros);

            while (dados.Read())
            {
                sigla = dados.GetString(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as disciplinas!");
        }
        finally
        {
            Desconectar();
        }

        return sigla;
    }
}


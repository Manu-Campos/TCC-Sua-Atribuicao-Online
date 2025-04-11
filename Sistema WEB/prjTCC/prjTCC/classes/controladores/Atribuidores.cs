using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Atribuidores:Banco
{

    public Atribuidor Atribuidor { get; set; }
    public void buscarDadosAtribuidor ()
    {
        try
        {
            MySqlDataReader dados = Consultar("buscarDisciplinas");
            while (dados.Read())
            {
              
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
    }

    public Atribuidor dadosAtribuidor(string email)
    {
        Atribuidor atribuidor = new Atribuidor();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));
            MySqlDataReader dados = Consultar("buscarDadosAtribuidor", parametros);

            if (dados.Read())
            {
                atribuidor.Email = email;
                atribuidor.Nome = dados.GetString(0);
                atribuidor.Telefone = dados.GetString(1);
                atribuidor.DataNascimento = dados.GetDateTime(3);
            }
            if (dados != null)
            {
                if (dados.IsClosed)
                {
                    dados.Close();
                }
            }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os dados do atribuidor!");
        }
        finally
        {
            Desconectar();
        }

        return atribuidor;
    }
}

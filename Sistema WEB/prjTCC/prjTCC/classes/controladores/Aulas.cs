using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Aulas : Banco
{
    public List<string> buscarDadosAulasRelatorio(int ano)
    {
        List<string> lista = new List<string>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAno", ano));
            MySqlDataReader dados = Consultar("buscarDadosAulasRelatorio", parametros);

            while (dados.Read())
            {
                lista.Add(dados.GetInt32(0).ToString());
                lista.Add(dados.GetInt32(1).ToString());
                lista.Add(dados.GetString(2));
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

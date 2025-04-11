using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Diretores : Banco
{
    public string buscarDiretorInstituicao(DateTime ano, string instituicao)
    {
        string nome = "";

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pData", ano));
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarDiretorInstituicao", parametros);

            while (dados.Read())
            {
                nome = dados.GetString(0);
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

        return nome;
    }
}

using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class TiposEnsino : Banco
{
    public List<TipoEnsino> buscarTiposEnsino(string instituicao = null)
    {
        List<TipoEnsino> lista = new List<TipoEnsino>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pInstituicao", instituicao));
            MySqlDataReader dados = Consultar("buscarTiposEnsino", parametros);

            while (dados.Read())
            {
                int codigo = dados.GetInt32(0);
                string nome = dados.GetString(1);
                TipoEnsino tipoEnsino = new TipoEnsino(codigo, nome);
                lista.Add(tipoEnsino);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os tipos de ensino!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }

}

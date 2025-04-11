using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class TiposAssuntos: Banco
{
    public List<TipoAssunto>listarAssuntos()
    {
        List<TipoAssunto> lista = new List<TipoAssunto>();
        try
        {
            MySqlDataReader dados = Consultar("buscarAssuntosAvisos");

            while (dados.Read())
            {
                TipoAssunto tipoAssunto = new TipoAssunto(dados.GetInt32(0),dados.GetString(1));
                lista.Add(tipoAssunto);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os assuntos dos avisos!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }
}

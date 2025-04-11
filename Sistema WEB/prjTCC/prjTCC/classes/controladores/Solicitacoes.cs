using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

internal class Solicitacoes : Banco
{
    public void Solicitar(string EmailAtribuidor,int codigo,int Tipo)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAtribuidor", EmailAtribuidor));
            parametros.Add(new MySqlParameter("pProfessor", codigo));
            parametros.Add(new MySqlParameter("pTipo", Tipo));
            Executar("SolicitarAtribuidor", parametros);
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as notificações!");
        }
        finally
        {
            Desconectar();
        }
    }
    public bool VerificarSolicitacao(string EmailAtribuidor,int codigo,int Tipo)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pAtribuidor", EmailAtribuidor));
            parametros.Add(new MySqlParameter("pProfessor", codigo));
            parametros.Add(new MySqlParameter("pTipo", Tipo));
            MySqlDataReader dados = Consultar("VerificarSolicitacao", parametros);

            if(dados.Read())
            {
                return dados.GetBoolean(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as notificações!");
        }
        finally
        {
            Desconectar();
        }
        return false;
    }
}

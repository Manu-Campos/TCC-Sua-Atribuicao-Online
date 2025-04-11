using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

public class Avisos : Banco
{
    public List<Aviso> ListarAvisosPorAtribuidor(string email)
    {
        List<Aviso> lista = new List<Aviso>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));
            MySqlDataReader dados = Consultar("buscarAvisosAtribuidor", parametros);

            while (dados.Read())
            {
                Aviso aviso = new Aviso();
                aviso.Atribuidor.Email = email;
                aviso.Instituicao.Email = dados.GetString("Email");
                aviso.Instituicao.Nome = dados.GetString("Nome");
                aviso.DataPorExtenso = dados.GetString("DataConvertida");
                aviso.DataAviso = dados.GetDateTime("DataHorario");
                aviso.DiaDaSemana = dados.GetString("DiaDaSemana");
                aviso.Lido = dados.GetBoolean("Lido");
                lista.Add(aviso);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os anos da atribuição!");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }
    public List<Aviso> listarAvisosInstituicao(string email, string filtroAssunto, string filtroClassificacao)
    {
        List<Aviso> lista = new List<Aviso>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));
            parametros.Add(new MySqlParameter("pFiltroAssunto", filtroAssunto));
            parametros.Add(new MySqlParameter("pFiltroClassificacao", filtroClassificacao));
            MySqlDataReader dados = Consultar("buscarAvisosInstituicao", parametros);

            while (dados.Read())
            {
                TipoAssunto tipoAssunto = new TipoAssunto(dados.GetInt32(4), dados.GetString(3));
                Aviso aviso = new Aviso(dados.GetString(0),dados.GetDateTime(1),dados.GetBoolean(2),tipoAssunto);
                lista.Add(aviso);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar os avisos da instituição");
        }
        finally
        {
            Desconectar();
        }
        return lista;
    }
    public string buscarEmailDestinatario()
    {
        string emailDestinatario = null;
        try
        {
            MySqlDataReader dados = Consultar("buscarEmailDestinatario");

            if (dados.Read())
            {
                emailDestinatario = dados.GetString(0);
                return emailDestinatario;

            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar o email do destinatário!");
        }
        finally
        {
            Desconectar();
        }
        return emailDestinatario;
    }
    public void registrarAviso(string mensagem, string emailA, string emailI, string assunto)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pMensagem", mensagem));
            parametros.Add(new MySqlParameter("pEmailAtribuidor", emailA));
            parametros.Add(new MySqlParameter("pEmailInstituicao", emailI));
            parametros.Add(new MySqlParameter("pAssunto", assunto));

            Executar("registrarAvisoInstituicao", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }
}
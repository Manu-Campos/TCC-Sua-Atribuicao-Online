using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using Org.BouncyCastle.Asn1.Cms;

public class Notificacoes : Banco
{
    public List<Notificacao> ListarNotificacoesPorAtribuidor(string email,int inicio,int fim)
    {
        List<Notificacao> lista = new List<Notificacao>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));
            parametros.Add(new MySqlParameter("pInicioIntervalo", inicio));
            parametros.Add(new MySqlParameter("pFimIntervalo", fim));
            MySqlDataReader dados = Consultar("buscarNotificacoesAtribuidor", parametros);

            while (dados.Read())
            {
                Notificacao Notificacao = new Notificacao();
                Notificacao.Atribuidor.Email = email;
                Notificacao.DataPorExtenso = dados.GetString("DataConvertida");
                Notificacao.DataAviso = dados.GetMySqlDateTime("DataHorario").Value.ToString();
                Notificacao.DiaDaSemana = dados.GetString("DiaDaSemana");
                Notificacao.lido = dados.GetBoolean("Lido");
                Notificacao.Tipo = dados.GetString("tipo");
                Notificacao.Assunto = dados.GetString("Assunto");

                if (dados.GetString("tipo") == "professor")
                {
                    Notificacao.Professor.Codigo = dados.GetInt32("Identificacao");
                    Notificacao.Professor.Nome = dados.GetString("Nome");
                    Notificacao.Descricao = null;
                }
                else
                {
                    Notificacao.Instituicao.Email = dados.GetString("Identificacao");
                    Notificacao.Instituicao.Nome = dados.GetString("Nome");
                    Notificacao.Descricao = dados.GetString("Descricao");
                }

                lista.Add(Notificacao);
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
        return lista;
    }

    public List<NotificacaoSistema> ListarNotificacoesPorIinstituicao(string email, int inicio, int fim)
    {
        List<NotificacaoSistema> lista = new List<NotificacaoSistema>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pInstituicao", email));
            parametros.Add(new MySqlParameter("pInicioIntervalo", inicio));
            parametros.Add(new MySqlParameter("pFimIntervalo", fim));
            MySqlDataReader dados = Consultar("BuscarNotificacoesInstituicao", parametros);

            while (dados.Read())
            {
                NotificacaoSistema Notificacao = new NotificacaoSistema();

                Notificacao.DataPorExtenso = dados.GetString("DataConvertida");
                Notificacao.DataAviso = dados.GetMySqlDateTime("DataHorario").Value.ToString();
                Notificacao.DiaDaSemana = dados.GetString("DiaDaSemana");
                Notificacao.Descricao = dados.GetString("Descricao");
                Notificacao.lido = dados.GetBoolean("Lido");

                lista.Add(Notificacao);
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
        return lista;
    }

    public List<NotificacaoSistema> ListarNotificacoesPorProfessor(string email, int inicio, int fim)
    {
        List<NotificacaoSistema> lista = new List<NotificacaoSistema>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pProfessor", email));
            parametros.Add(new MySqlParameter("pInicioIntervalo", inicio));
            parametros.Add(new MySqlParameter("pFimIntervalo", fim));
            MySqlDataReader dados = Consultar("BuscarNotificacoesProfessor", parametros);

            while (dados.Read())
            {
                NotificacaoSistema Notificacao = new NotificacaoSistema();

                Notificacao.DataPorExtenso = dados.GetString("DataConvertida");
                Notificacao.DataAviso = dados.GetMySqlDateTime("DataHorario").Value.ToString();
                Notificacao.DiaDaSemana = dados.GetString("DiaDaSemana");
                Notificacao.Descricao = dados.GetString("Descricao");
                Notificacao.lido = dados.GetBoolean("Lido");

                lista.Add(Notificacao);
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
        return lista;
    }

    public List<NotificacaoSistema> ListarNotificacoesPorSupervisor(int codigo, int inicio, int fim)
    {
        List<NotificacaoSistema> lista = new List<NotificacaoSistema>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pProfessor", codigo));
            parametros.Add(new MySqlParameter("pInicioIntervalo", inicio));
            parametros.Add(new MySqlParameter("pFimIntervalo", fim));
            MySqlDataReader dados = Consultar("buscarNotificacoesSupervisor", parametros);

            while (dados.Read())
            {
                NotificacaoSistema Notificacao = new NotificacaoSistema();

                Notificacao.DataPorExtenso = dados.GetString("DataConvertida");
                Notificacao.DataAviso = dados.GetMySqlDateTime("DataHorario").Value.ToString();
                Notificacao.DiaDaSemana = dados.GetString("DiaDaSemana");
                Notificacao.Descricao = dados.GetString("Descricao");
                Notificacao.lido = dados.GetBoolean("Lido");

                lista.Add(Notificacao);
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
        return lista;
    }

    public void MarcarAvisoComoLido(string Data,string emailInstituicao,string Tipo, string emailAtribuidor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDataEnvio", DateTime.Parse(Data)));
            parametros.Add(new MySqlParameter("pRemetente", emailInstituicao));
            parametros.Add(new MySqlParameter("pEmailAtribuidor", emailAtribuidor));
            parametros.Add(new MySqlParameter("pTipo", Tipo));
            Executar("MarcarAvisoComoLido", parametros);
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

    public void MarcarNotificacaoSistemaComoLido(string Data, string emailInstituicao, string Tipo)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDataEnvio", DateTime.Parse(Data)));
            parametros.Add(new MySqlParameter("pRemetente", emailInstituicao));
            parametros.Add(new MySqlParameter("pTipo", Tipo));
            Executar("MarcarComoLidoNotificacaoSistema", parametros);
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
}
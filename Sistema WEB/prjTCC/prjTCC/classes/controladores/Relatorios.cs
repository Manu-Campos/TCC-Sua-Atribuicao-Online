using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Relatorios : Banco
{
    public List<Relatorio> BuscarAulasNaoAtribuidas(string EmailAtribuidor, int AnoAtribuicao,string Tipo,string Disciplina,string Instituicao)
    {
        List<Relatorio> lista = new List<Relatorio>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", EmailAtribuidor));
            parametros.Add(new MySqlParameter("pAnoAtribuicao", AnoAtribuicao));
            parametros.Add(new MySqlParameter("pTipo", Tipo));
            parametros.Add(new MySqlParameter("pDisciplina", Disciplina));
            parametros.Add(new MySqlParameter("pEmailInstituicao", Instituicao));
            MySqlDataReader dados = Consultar("BuscarAulasNaoAtribuidas", parametros);

            while (dados.Read())
            {
                Relatorio Relatorio = new Relatorio();
                Instituicoes instituicoes = new Instituicoes();

                Relatorio.Instituicao = instituicoes.Buscar(dados.GetString("nm_email_instituicao"));
                Relatorio.TipoEnsino.Nome = dados.GetString("nm_tipo_ensino");
                Relatorio.Turma.SiglaTurma = dados.GetString("sg_turma");
                Relatorio.Disciplina.Nome = dados.GetString("nm_disciplina");
                Relatorio.Turma.TipoPeriodo.Nome = dados.GetString("nm_tipo_periodo");

                lista.Add(Relatorio);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as aulas não atribuídas!");
        }
        finally
        {
            Desconectar();
        }
        return lista;

    }
}
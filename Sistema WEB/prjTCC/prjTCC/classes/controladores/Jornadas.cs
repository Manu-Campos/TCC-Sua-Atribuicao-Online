using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Jornadas : Banco
{
    public Jornada Jornada { get; set; }

    public List<Jornada> BuscarJornadas(string disciplina, int cdTipoEnsino)
    {
        List<Jornada> lista = new List<Jornada>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pDisciplina", disciplina));
            parametros.Add(new MySqlParameter("pTipoEnsino", cdTipoEnsino));
            MySqlDataReader dados = Consultar("buscarJornadas", parametros);

            while (dados.Read())
            {
                Jornada jornada = new Jornada();
                jornada.CargaHoraria.HTA = dados.GetInt32(0);
                jornada.Disciplina.CodigoMultiplicador = dados.GetInt32(1);

                lista.Add(jornada);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as Jornadas!");
        }
        finally
        {
            Desconectar();
        }
        return lista;

    }

    public Jornada buscarJornadaDoProfessor(int codigoProfessor, int ano)
    {
        Jornada jornada = new Jornada();
        
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigoProfessor));
            parametros.Add(new MySqlParameter("pAno", ano));
            MySqlDataReader dados = Consultar("buscarJornadaDoProfessor", parametros);

            if (dados.Read())
            {
                jornada.Disciplina.CodigoMultiplicador = dados.GetInt32(0);
                jornada.CargaHoraria.QTCargaHoraria = dados.GetInt32(1);
                jornada.CargaHoraria.HTA = dados.GetInt32(2);
                jornada.CargaHoraria.HTPC = dados.GetInt32(3);
                jornada.CargaHoraria.HTPL = dados.GetInt32(4);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as Jornadas!");
        }
        finally
        {
            Desconectar();
        }
        return jornada;

    }

    public int buscarJornadaRestante(int codigoProfessor, int qtTurmas)
    {
        int jornadaRestante = 0;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigoProfessor));
            parametros.Add(new MySqlParameter("pQtTurmas", qtTurmas));
            MySqlDataReader dados = Consultar("buscarJornadaRestante", parametros);

            if (dados.Read())
            {
                jornadaRestante = dados.GetInt32(0);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as Jornadas!");
        }
        finally
        {
            Desconectar();
        }
        return jornadaRestante;
    }

    public Jornada buscarCargaMinima(int codigoProfessor)
    {
        Jornada jornada = new Jornada();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigoProfessor));
            MySqlDataReader dados = Consultar("buscarCargaMínima", parametros);

            if (dados.Read())
            {
                jornada.Disciplina.CodigoMultiplicador = dados.GetInt32(0);
                jornada.CargaHoraria.QTCargaHoraria = dados.GetInt32(1);
                jornada.CargaHoraria.HTA = dados.GetInt32(2);
                jornada.CargaHoraria.HTPC = dados.GetInt32(3);
                jornada.CargaHoraria.HTPL = dados.GetInt32(4);
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível buscar as Jornadas!");
        }
        finally
        {
            Desconectar();
        }
        return jornada;

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



public class Fase
{
    public Atribuidor Atribuidor = new Atribuidor();

    private string _nome;

    public string Nome
    {
        get 
        {

            return _nome; 
        }
        set { _nome = value; }
    }

    private DateTime _dtInicio;

    public DateTime DtInicio
    {
        get 
        {
            if (String.IsNullOrEmpty(_dtInicio.ToString()))
            {
                throw new Exception("A data de início não pode ser nula!");
            }
            return _dtInicio; 
        }
        set { _dtInicio = value; }
    }
    private DateTime _dtFim;

    public DateTime DtFim
    {
        get
        {
            if (String.IsNullOrEmpty(_dtFim.ToString()))
            {
                throw new Exception("A data de fim não pode ser nula!");
            }
            return _dtFim;
        }
        set { _dtFim = value; }
    }

    public string Porcentagem { get; set; }

    public Fase ()
    {

    }
    public Fase (string nome)
    {
        this.Nome = nome;
    }
    public Fase( DateTime dtInicio, DateTime dtFim)
    {
        this.DtFim = dtFim;
        this.DtInicio = dtInicio;
    }
    public Fase(string nome, DateTime dtInicio)
    {
        this.Nome = nome;
        this.DtInicio = dtInicio;
    }


}

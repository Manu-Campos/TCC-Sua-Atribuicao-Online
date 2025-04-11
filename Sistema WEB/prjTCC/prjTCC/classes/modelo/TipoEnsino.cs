using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class TipoEnsino
{
    private int _codigo;

    public int Codigo
    {
        get { return _codigo; }
        set { _codigo = value; }
    }

    private string _nome;

    public string Nome
    {
        get { return _nome; }
        set { _nome = value; }
    }

    public TipoEnsino(int codigo, string nome)
    {
        this.Codigo = codigo;
        this.Nome = nome;
    }

    public TipoEnsino()
    {

    }

}

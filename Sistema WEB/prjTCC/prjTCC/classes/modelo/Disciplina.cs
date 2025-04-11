using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Disciplina
{
	private string _nome;

	public  string Nome
	{
		get { return _nome; }
		set { _nome = value; }
	}

	private string _sigla;

	public string Sigla
	{
		get { return _sigla; }
		set {  _sigla = value; }
	}

	public TipoEnsino TipoEnsino = new TipoEnsino();

    public int CodigoMultiplicador { get; set; }
    public Disciplina(string nome, string sigla, string nomeTipoEnsino)
	{
		this.Nome = nome;
		this.Sigla = sigla;
		this.TipoEnsino.Nome = sigla;
	}

    public Disciplina()
    {
        
    }

}

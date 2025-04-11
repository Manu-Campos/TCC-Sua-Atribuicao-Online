using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Aviso
{
    public Atribuidor Atribuidor { get; set; } = new Atribuidor();
    public InstituicaoUnica Instituicao { get; set; } = new InstituicaoUnica();
    
    public TipoAssunto TipoAssunto { get; set; }

    private DateTime _DataAviso;

    public DateTime DataAviso
    {
        get { return _DataAviso; }
        set { _DataAviso = value; }
    }

    public string Descricao { get; set; }
    public bool Lido { get; set; }
    public string DataPorExtenso { get; set; }
    public string DiaDaSemana { get; set; }

    public Aviso (string mensagem, DateTime dataEnvio, bool lido, TipoAssunto tipoAssunto)
    {
        this.Descricao = mensagem;
        this.DataAviso = dataEnvio;
        this.TipoAssunto = tipoAssunto;
        this.Lido = lido;
    }
    public Aviso ()
    {

    }
}
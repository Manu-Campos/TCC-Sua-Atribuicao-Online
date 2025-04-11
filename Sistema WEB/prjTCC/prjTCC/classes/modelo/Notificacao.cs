using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Notificacao
{
    public Atribuidor Atribuidor { get; set; } = new Atribuidor();
    public InstituicaoUnica Instituicao { get; set; } = new InstituicaoUnica();
    public ProfessorUnico Professor { get; set; } = new ProfessorUnico();
    
    private string _Assunto;

    public string Assunto
    {
        get { return _Assunto; }
        set { _Assunto = value; }
    }

    private string _DataAviso;

    public string DataAviso
    {
        get { return _DataAviso; }
        set { _DataAviso = value; }
    }

    public string Descricao { get; set; }
    public bool lido { get; set; }
    public string DataPorExtenso { get; set; }
    public string DiaDaSemana { get; set; }
    public string Tipo { get; set; }

}
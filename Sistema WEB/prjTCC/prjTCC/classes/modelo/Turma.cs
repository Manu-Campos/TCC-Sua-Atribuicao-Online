using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Turma
{

    private string _nome;

    public string Nome
    {
        get { return _nome; }
        set { _nome = value; }
    }

    private string _siglaTurma;

    public string SiglaTurma
    {
        get { return _siglaTurma; }
        set { _siglaTurma = value; }
    }

    public TipoPeriodo TipoPeriodo = new TipoPeriodo();

    public InstituicaoUnica InstituicaoUnica = new InstituicaoUnica();

    public TipoEnsino TipoEnsino = new TipoEnsino();

    public Disciplina Disciplina = new Disciplina();

    private string _situcao;

    public string Situacao
    {
        get { return _situcao; }
        set { _situcao = value; }
    }

    private string _nivelPreferencia;

    public string NivelPreferencia
    {
        get { return _nivelPreferencia; }
        set { _nivelPreferencia = value; }
    }

    public Turma()
    {
        
    }

}

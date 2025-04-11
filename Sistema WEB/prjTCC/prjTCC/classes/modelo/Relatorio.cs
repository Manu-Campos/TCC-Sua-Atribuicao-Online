using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Relatorio
{
    public InstituicaoUnica Instituicao { get; set; } = new InstituicaoUnica();
    public Turma Turma { get; set; } = new Turma(); 
    public Disciplina Disciplina { get; set; } = new Disciplina();
    public TipoEnsino TipoEnsino { get; set;} = new TipoEnsino();

}

    
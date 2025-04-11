using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Anexo
{
    public string Ordem { get; set; }

    public ProfessorUnico Professor { get; set; } = new ProfessorUnico();

    public Atribuicao Atribuicao { get; set; } = new Atribuicao();

    public Jornada Jornada { get; set; } = new Jornada();

    public Disciplina Disciplina { get; set; } = new Disciplina();

    public InstituicaoUnica InstituicaoUnica { get; set; } = new InstituicaoUnica();

    public Turma Turma { get; set; } = new Turma();
    public int qtManha { get; set; }
    public int qtIntegral { get; set; }
    public int qtTarde { get; set; }
    public int qtVespertino { get; set; }
    public int qtNoite { get; set; }

}

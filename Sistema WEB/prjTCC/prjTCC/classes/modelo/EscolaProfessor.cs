using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


internal class EscolaProfessor :Banco
{
    public ProfessorUnico Professor { get; set; } = new ProfessorUnico();
    public InstituicaoUnica Instituicao { get; set; } = new InstituicaoUnica();
    public bool Sede { get; set; } 

    public EscolaProfessor()
    {
        
    }

    public EscolaProfessor(int CodigoProfessor, InstituicaoUnica instituicao, bool Sede)
    {
        this.Professor.Codigo = CodigoProfessor;
        this.Instituicao = instituicao;
        this.Sede = Sede;
    }
}

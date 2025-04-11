using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


internal class EscolaProfessor :Banco
{
    public Professor Professor { get; set; } = new Professor();
    public Instituicao Instituicao { get; set; } = new Instituicao();
    public bool Sede { get; set; } 

    public EscolaProfessor()
    {

    }
    public EscolaProfessor(int CodigoProfessor,Instituicao instituicao, bool Sede)
    {
        this.Professor.Codigo = CodigoProfessor;
        this.Instituicao = instituicao;
        this.Sede = Sede;
    }
}

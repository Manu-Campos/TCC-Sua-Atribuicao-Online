using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

internal class Solicitacao
{
    public Atribuidor Atribuidor { get; set; } = new Atribuidor();
    public ProfessorUnico Professor { get; set; } = new ProfessorUnico();
    public int Tipo { get; set; }
}

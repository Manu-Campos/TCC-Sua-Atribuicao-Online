using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Diretor
{
    public ProfessorUnico Professor { get; set; }

    public Diretor (ProfessorUnico professor )
    {
        this.Professor = professor;
    }
}

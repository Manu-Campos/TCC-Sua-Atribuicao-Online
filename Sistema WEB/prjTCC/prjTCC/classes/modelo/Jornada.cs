using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Jornada
{
    public CargaHoraria CargaHoraria { get; set; } = new CargaHoraria();

    public Disciplina Disciplina = new Disciplina();

    public TipoEnsino TipoEnsino = new TipoEnsino();

    public Jornada()
    {

    }
}

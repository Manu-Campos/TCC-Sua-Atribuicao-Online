using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

internal class Diretor: Banco
{
    public Professor Professor { get; set; } = new Professor();
    public Instituicao Instituicao { get; set; } = new Instituicao();
    public DateTime DataInicioAtividade { get; set; }
    public DateTime DataFimAtividade { get; set; }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

internal class Disciplina : Banco
{
    public string Nome { get; set; }
    public string Sigla { get; set; }
    public int TipoEnsino { get; set; }


    public Disciplina()
    {

    }

    public Disciplina(string Sigla)
    {
        this.Sigla = Sigla;
    }
}

using prjTCC.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


internal class Turma:Banco
{
    public string Nome { get; set; }
    public string Sigla { get; set; }
    public Instituicao Instituicao { get; set; } = new Instituicao();
    public int TipoEnsino { get; set; }
    public string Periodo { get; set; }
}

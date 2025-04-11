using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

internal class Supervisor : Banco
{
    public Professor Professor { get; set; } = new Professor();
    public string SiglaDisciplina { get; set; }
    public int TipoEnsino { get; set; }
    public string Email { get; set; }
    public string Senha { get; set; }

    public Supervisor()
    {
        
    }

    public Supervisor(int Codigo, string Sigla,int Tipo,string Email)
    {
        this.Professor.Codigo = Codigo;
        this.SiglaDisciplina = Sigla;
        this.TipoEnsino = Tipo;
        this.Email = Email;
    }
}


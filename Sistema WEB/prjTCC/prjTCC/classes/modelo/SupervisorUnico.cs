using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class SupervisorUnico
{

    private string _email;

    public string Email
    {
        get { return _email; }
        set { _email = value; }
    }

    private string _senha;

    public string Senha
    {
        get { return _senha; }
        set { _senha = value; }
    }

    public ProfessorUnico Professor { get; set; } = new ProfessorUnico();

    public TipoEnsino TipoEnsino { get; set; } = new TipoEnsino();

    public Disciplina Disciplina { get; set; } = new Disciplina();

    public Atribuidor Atribuidor { get; set; } = new Atribuidor();

    public SupervisorUnico()
    {

    }
    public SupervisorUnico (string emailAtribuidor, int codigo, string siglaDisciplina, int codigoTipoEnsino, string email, string senha)
    {
        this.Atribuidor.Email = emailAtribuidor;
        this.Professor.Codigo = codigo;
        this.Disciplina.Sigla = siglaDisciplina;
        this.TipoEnsino.Codigo = codigoTipoEnsino;
        this.Email = email;
        this.Senha = senha;
    }
}

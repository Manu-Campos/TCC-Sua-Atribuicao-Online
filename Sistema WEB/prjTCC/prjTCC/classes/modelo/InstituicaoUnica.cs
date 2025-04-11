using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class InstituicaoUnica
{
    private string _nome;

    public string Nome
    {
        get { return _nome; }
        set { _nome = value; }
    }

    private string _telefone;

    public string Telefone
    {
        get { return _telefone; }
        set { _telefone = value; }
    }

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

    public List<TipoEnsino> TipoEnsino { get; set; }

    public Diretor Diretor { get; set; }

    public InstituicaoUnica (string nome, string telefone, string email,string senha)
    {
        this.Nome = nome;
        this.Telefone = telefone;
        this.Email = email;
        this.Senha = senha;
    }

    public InstituicaoUnica(string nome, string telefone, string email)
    {
        this.Nome = nome;
        this.Telefone = telefone;
        this.Email = email;
    }
    public InstituicaoUnica(string email,string nome, string telefone, List<TipoEnsino> tipoEnsino , Diretor diretor)
    {
        this.Email = email;
        this.Nome = nome;
        this.Telefone = telefone;
        this.Diretor = diretor;
        this.TipoEnsino = tipoEnsino; 
    }

    public InstituicaoUnica()
    {

    }
}

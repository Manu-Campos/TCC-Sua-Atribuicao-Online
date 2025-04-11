internal class Instituicao : Banco
{
    public string Nome { get; set; }
    public string Telefone { get; set; }
    public string Email { get; set; }
    public string Senha { get; set; }

    public Instituicao()
    {

    }

    public Instituicao(string Nome)
    {
        this.Nome = Nome;
    }

    public Instituicao(string Nome,string Email)
    {
        this.Nome= Nome;
        this.Email= Email;
    }

    public Instituicao(string Nome, string Email, string Telefone)
    {
        this.Nome = Nome;
        this.Telefone = Telefone;
        this.Email = Email;
    }
}


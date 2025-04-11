using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


internal class Professor : Banco
{
    public int Codigo { get; set; }
    public string Email { get; set; }
    public string Senha { get; set; }
    public string Nome { get; set; }
    public int QuantidadeFilhos { get; set; }
    public DateTime DataNascimento { get; set; }
    public DateTime DataEntrada { get; set; }
    public int QuantidadePontuacao { get; set; }
    public string Numero { get; set; }
    public string Situacao { get; set; }
    public string Disciplina { get; set; }
    public int TipoEnsino { get; set; }
    public List<Instituicao> Instituicoes { get; set; }

    public Professor()
    {

    }

    public Professor(int codigo,string Email,string Nome,int QuantFilhos,DateTime DataNascimento,DateTime DataEntrada,int QuantidadePontuacao,string Numero,string Situacao,string Disciplina,int TipoEnsino)
    {
        this.Codigo = codigo;        
        this.Email = Email;
        this.Nome = Nome;
        this.QuantidadeFilhos = QuantFilhos;
        this.Numero = Numero;
        this.DataEntrada= DataEntrada;
        this.DataNascimento= DataNascimento;
        this.QuantidadePontuacao= QuantidadePontuacao;
        this.Situacao = Situacao;
        this.Disciplina = Disciplina;
        this.TipoEnsino= TipoEnsino;
    }
    
}


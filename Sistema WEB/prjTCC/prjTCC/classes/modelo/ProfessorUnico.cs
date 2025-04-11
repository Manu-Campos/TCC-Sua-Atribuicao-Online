using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ProfessorUnico
{
    public string Ordem { get; set; }

    private int _codigo;

    public int Codigo
    {
        get 
        {
            //if (_codigo == 0)
            //{
            //    throw new Exception("O código não pode ser nulo!");
            //}

            return _codigo; 
        }
        set { _codigo = value; }
    }

    private string _email;

    public string Email
    {
        get
        {

            //if (String.IsNullOrEmpty(_email))
            //{
            //    throw new Exception("O email não pode ser nulo!");
            //}

            return _email;
        }
        set { _email = value; }
    }

    private string _senha;

    public string Senha
    {
        get
        {
            //if (String.IsNullOrEmpty(_senha))
            //{
            //    throw new Exception("A senha não pode ser nula!");
            //}

            return _senha;
        }
        set { _senha = value; }
    }

    private string _nome;

    public string Nome
    {
        get
        {

            //if (String.IsNullOrEmpty(_nome))
            //{
            //    throw new Exception("O nome não pode ser nulo!");
            //}

            return _nome;
        }
        set { _nome = value; }
    }

    private int _qtdFilhos;

    public int QtdFilhos
    {
        get { return _qtdFilhos; }
        set { _qtdFilhos = value; }
    }


    private DateTime _dataNascimento;

    public DateTime DataNascimento
    {
        get
        {
            //if (String.IsNullOrEmpty(_dataNascimento.ToString()))
            //{
            //    throw new Exception("A data de nascimento não pode ser nula!");
            //}
            return _dataNascimento;
        }
        set { _dataNascimento = value; }
    }
    public DateTime DataEntradaPref { get; set; }

    public decimal QtdPontuacao { get; set; }

    private string _telefone;

    public string Telefone
    {
        get
        {
            //if (String.IsNullOrEmpty(_telefone))
            //{
            //    throw new Exception("O número de telefone não pode ser nulo!");
            //}

            return _telefone;
        }
        set { _telefone = value; }
    }

    private string _situacaoAtribuicao;

    public string SituacaoAtribuicao
    {
        get { return _situacaoAtribuicao; }
        set { _situacaoAtribuicao = value; }
    }

    public int TempoPrefeitura { get; set; }

    public TipoProfessor TipoProfessor { get; set; } = new TipoProfessor();

    public TipoEnsino TipoEnsino { get; set; } = new TipoEnsino();

    public Disciplina Disciplina { get; set; } = new Disciplina();

    public InstituicaoUnica Instituicao { get; set; } = new InstituicaoUnica();
        
    public Jornada Jornada { get; set; } = new Jornada();

    private string _ativo;

    public string Ativo
    {
        get { return _ativo; }
        set { _ativo = value; }
    }

    private DateTime _chamadaDt;

    public DateTime ChamadaDt
    {
        get { return _chamadaDt; }
        set { _chamadaDt = value; }
    }


    public ProfessorUnico (int codigo,string email, string senha, string nome, 
                     int qtdFilhos, DateTime dataNascimento,DateTime dataEntradaPref,
                     decimal qtdPontuacao,string telefone, int codigoTipo, string siglaDisciplina,int codigoTipoEnsino)
    {

        this.Codigo = codigo;
        this.Email = email;
        this.Senha = senha;
        this.Nome = nome;
        this.QtdFilhos = qtdFilhos;
        this.DataNascimento = dataNascimento;
        this.DataEntradaPref = dataEntradaPref;
        this.QtdPontuacao = qtdPontuacao;
        this.Telefone = telefone;
        this.TipoProfessor.Codigo = codigoTipo;
        this.Disciplina.Sigla= siglaDisciplina;
        this.TipoEnsino.Codigo = codigoTipoEnsino;
    }

    public ProfessorUnico() { }

    public ProfessorUnico (int codigo,string nome, string email, string telefone, DateTime dtNascimento )
    {
        this.Codigo = codigo;
        this.Nome = nome;
        this.Email = email;
        this.Telefone = telefone;
        this.DataNascimento = dtNascimento;
    }

}

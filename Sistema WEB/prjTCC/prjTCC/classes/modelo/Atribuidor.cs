using System;
using System.Collections.Generic;

public class Atribuidor
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
        get {

            if (String.IsNullOrEmpty(_email))
            {
                throw new Exception("O email não pode ser nulo!");
            }

            return _email; 
        }
        set { _email = value; }
    }

    private string _senha;

    public string Senha
    {
        get { return _senha; }
        set { _senha = value; }
    }

    private DateTime _dataNascimento;

    public DateTime DataNascimento
    {
        get { return _dataNascimento; }
        set { _dataNascimento = value; }
    }

    public Atribuidor (string nome, string telefone, string email, string senha, DateTime dataNascimento)
    {
        this.Nome = nome;
        this.Telefone = telefone;
        this.Email = email;
        this.Senha = senha;
        this.DataNascimento = dataNascimento;
        this.DataNascimento = dataNascimento;
    }

    public Atribuidor()
    {

    }
}




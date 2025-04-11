using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Andamento
{
    private string instituicao;

    public string Instituicao
    {
        get { return instituicao; }
        set { instituicao = value; }
    }

    private string porcentagem;

    public string Porcentagem
    {
        get { return porcentagem; }
        set { porcentagem = value; }
    }

    private string situacao;

    public string Situacao
    {
        get { return situacao; }
        set { situacao = value; }
    }

    private string disciplina;

    public string Disciplina
    {
        get { return disciplina; }
        set { disciplina = value; }
    }
}
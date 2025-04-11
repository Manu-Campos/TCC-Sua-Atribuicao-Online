using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Usuario
{
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

    private string _imgPerfil;

    public string ImgPerfil
    {
        get { return _imgPerfil; }
        set { _imgPerfil = value; }
    }

}

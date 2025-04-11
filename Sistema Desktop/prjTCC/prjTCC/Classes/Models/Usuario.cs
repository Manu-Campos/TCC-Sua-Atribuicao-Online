using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


internal class Usuario : Banco
{
    public int Codigo { get; set; }

    public string Email { get; set; }
    public string Senha { get; set; }

    public ETipoUsuarios TipoUsuario { get; set; }

    public Usuario()
    {

    }

    public Usuario(string Email,string Senha,ETipoUsuarios eTipo)
    {
        this.Email = Email;
        this.Senha = Senha;
        this.TipoUsuario = eTipo;
    }

    public Usuario(string Email)
    {
        this.Email = Email;
    }
}


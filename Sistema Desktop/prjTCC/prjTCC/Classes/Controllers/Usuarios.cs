using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI;


internal class Usuarios : Usuario
{
    public Usuario Logar(string Email, string Senha)
    {
        Usuario usuario = null;
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail",Email));
            parametros.Add(new MySqlParameter("pSenha",Senha));
            MySqlDataReader dados = Consultar("logar",parametros);
            if (dados.Read())
            {
                string cargo = dados.GetString("cargo");

                if (cargo == "instituição")
                {
                    usuario = new Usuario(Email, Senha, ETipoUsuarios.Instituicao);
                }
                else
                {
                    if (cargo == "atribuidor(a)")
                    {
                        usuario = new Usuario(Email, Senha, ETipoUsuarios.Atribuidor);
                    }
                    else
                    {
                        usuario = null;
                    }
                }
            }
            else
            {
                usuario = null;
            }
            if (dados != null)
            {
                if (dados.IsClosed)
                {
                    dados.Close();
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex.Message.ToString()}");
        }
        finally
        {
            Desconectar();
        }

        return usuario;
    }

    public bool EsqueceuSenha(string Email)
    {
        bool situacao = false;
        try 
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", Email));
            MySqlDataReader dado = Consultar("esqueceuSenha", parametros);
            if (dado.Read())
            {
                if(dado.GetBoolean(0) == true)
                {
                    situacao = true;
                }
                else
                {
                    situacao = false;
                }
            }
            else
            {
                situacao= false;
            }
            if (dado != null)
            {
                if (dado.IsClosed)
                {
                    dado.Close();
                }
            }
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
        finally
        {
            Desconectar();
        }

        return situacao;
    }
}

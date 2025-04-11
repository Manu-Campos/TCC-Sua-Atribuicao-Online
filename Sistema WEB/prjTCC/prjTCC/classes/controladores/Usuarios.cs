using MySql.Data.MySqlClient;
using MySqlX.XDevAPI;
using System;
using System.Net.Mail;
using System.Net;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


public class Usuarios : Banco
{
    public string verificarUsuarioEsqueceuSenha(string email)
    {
        string cargo = null;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));

            MySqlDataReader dados = Consultar("esqueceuSenha", parametros);
            while (dados.Read())
            {
                cargo = dados.GetString(0);
            }

            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não existe esse login no sistema!");
        }
        finally
        {
            Desconectar();
        }

        return cargo;
    }

    public Usuario buscarImagem(string cargo, string email)
    {
        Usuario usuario = new Usuario();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCargo", cargo));
            parametros.Add(new MySqlParameter("pEmail", email));

            MySqlDataReader dados = Consultar("buscarImagemPerfil", parametros);
            while (dados.Read())
            {
                if (!String.IsNullOrEmpty(dados["img_perfil"].ToString()))
                {
                    byte[] foto = (byte[])dados["img_perfil"];
                    string base64String = Convert.ToBase64String(foto, 0, foto.Length);
                    usuario.ImgPerfil = Convert.ToString("data:image/jpeg;base64,") + base64String;
                }
            }

            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível encontrar a imagem de perfil!");
        }
        finally
        {
            Desconectar();
        }

        return usuario;
    }


    public List<string> Logar(string email, string senha)
    {
        List<string> listaDados = new List<string>();

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail",email ));
            parametros.Add(new MySqlParameter("pSenha", senha));

            MySqlDataReader dados = Consultar("logar",parametros);
            while (dados.Read())
            {
                if (dados.GetString("cargo") == "atribuidor(a)")
                {
                   Atribuidor atribuidor = new Atribuidor(dados.GetString("nm_atribuidor"),
                   dados.GetString("cd_numero_atribuidor"),dados.GetString("nm_email_atribuidor"),
                   dados.GetString("nm_senha_atribuidor"),dados.GetDateTime("dt_nascimento_atribuidor"));
                   

                   listaDados.Add((dados.GetString("cargo")).Replace("(a)", ""));
                   listaDados.Add((dados.GetString("nm_atribuidor")));

                   return listaDados;
                }
                if (dados.GetString("cargo") == "professor(a)")
                {
                    ProfessorUnico professor = new ProfessorUnico(dados.GetInt32("cd_professor"), dados.GetString("nm_email_professor"),
                    dados.GetString("nm_senha_professor"),dados.GetString("nm_professor"),dados.GetInt32("qt_filhos"),
                    dados.GetDateTime("dt_nascimento_professor"),dados.GetDateTime("dt_entrada_prefeitura"),
                    dados.GetDecimal("qt_pontuacao"),dados.GetString("cd_numero_professor"),dados.GetInt32("cd_tipo_professor"),
                    dados.GetString("sg_disciplina"),dados.GetInt32("cd_tipo_ensino"));

                    listaDados.Add((dados.GetString("cargo")).Replace("(a)", ""));
                    listaDados.Add((dados.GetString("nm_professor")));
                    listaDados.Add((dados.GetInt32("cd_professor")).ToString());

                    return listaDados;

                }
                if (dados.GetString("cargo") == "instituição")
                {
                    InstituicaoUnica instituicao = new InstituicaoUnica(dados.GetString("nm_instituicao"),dados.GetString("cd_numero_instituicao"),
                    dados.GetString("nm_email_instituicao"),dados.GetString("nm_senha_instituicao"));

                    listaDados.Add((dados.GetString("cargo")).Replace("ç", "c").Replace("ã", "a"));
                    listaDados.Add((dados.GetString("nm_instituicao")));

                    return listaDados;
                }
                if (dados.GetString("cargo") == "supervisor(a)")
                {
                    SupervisorUnico supervisor = new SupervisorUnico(dados.GetString("nm_email_atribuidor"), dados.GetInt32("cd_professor"),
                    dados.GetString("sg_disciplina"), dados.GetInt32("cd_tipo_ensino"), dados.GetString("nm_email_supervisor"), 
                    dados.GetString("nm_senha_supervisor"));

                    listaDados.Add((dados.GetString("cargo")).Replace("(a)", ""));
                    listaDados.Add((dados.GetString("nm_professor")));
                    listaDados.Add((dados.GetInt32("cd_professor")).ToString());

                    return listaDados; ;
                }

               
            }
            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Login e/ou Senha inválido(s). Tente novamente!");
        }
        finally
        {
            Desconectar();
        }
        return listaDados;
    }

    public Usuario AlterarFoto(string cargo, string login, byte[] conteudo)
    {
        Usuario usuario = null;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            MySqlParameter parametroBlob = new MySqlParameter("pFoto", MySqlDbType.Binary);
            parametroBlob.Value = conteudo;

            parametros.Add(new MySqlParameter("pCargo", cargo));
            parametros.Add(new MySqlParameter("pLogin", login));
            parametros.Add(parametroBlob);

            Executar("alterarFoto", parametros);
            usuario = buscarImagem(cargo, login);
        }
        catch
        {
            throw new System.Exception("Não foi possível alterar a foto!");
        }
        return usuario;
    }

    public void alterarSenha(string email, string senhaAntiga, string novaSenha)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pEmail", email));
            parametros.Add(new MySqlParameter("pSenhaAntiga", senhaAntiga));
            parametros.Add(new MySqlParameter("pSenhaNova", novaSenha));

            Executar("redefinirSenha", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public void alterarTelefone(string cargo, string email, string telefone)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCargo", cargo));
            parametros.Add(new MySqlParameter("pLogin", email));
            parametros.Add(new MySqlParameter("pTelefone", telefone));

            Executar("alterarTelefone", parametros);

        }
        catch (MySqlException erro)
        {
            throw erro;
        }
    }

    public void excluirRecuperacao(string login)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pLogin", login));

            Executar("excluirRecuperacao", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível encontrar o usuário.");
        }
        finally
        {
            Desconectar();
        }
    }

    public void gravarRecuperacao(string login, int codigo)
    {
        excluirRecuperacao(login);

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pLogin", login));
            parametros.Add(new MySqlParameter("pCodigo", codigo));

            Executar("gravarRecuperacao", parametros);
        }
        catch (Exception)
        {
            throw new Exception("Não foi possível gravar seu código de usuário.");
        }
        finally
        {
            Desconectar();
        }
    }

    public int consultarRecuperacao(string login)
    {
        int codigo = 0;

        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pLogin", login));

            MySqlDataReader dados = Consultar("consultarRecuperacao", parametros);
            while (dados.Read())
            {
                codigo = dados.GetInt32(0);
            }

            if (dados != null)
                if (dados.IsClosed)
                {
                    dados.Close();
                }
        }
        catch (System.Exception)
        {
            throw new System.Exception("Não foi possível conferir seu código de recuperação!");
        }
        finally
        {
            Desconectar();
        }

        return codigo;
    }
}

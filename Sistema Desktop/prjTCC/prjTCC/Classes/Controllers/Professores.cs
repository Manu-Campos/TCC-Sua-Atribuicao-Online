using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using prjTCC.Enums;

internal class Professores : Professor
{
    public List<Professor> BuscarProfessores(){
        
        List<Professor> Lista = new List<Professor>();
        try
        {
            MySqlDataReader dados = Consultar("buscarProfessores");

            while (dados.Read()){

                Professor Professor = new Professor();

                Professor.Codigo = dados.GetInt32("cd_professor");
                Professor.Email = dados.GetString("nm_email_professor");
                Professor.Senha = dados.GetString("nm_senha_professor");
                Professor.Nome = dados.GetString("nm_professor");
                Professor.QuantidadeFilhos = dados.GetInt32("qt_filhos");
                Professor.DataNascimento = dados.GetDateTime("dt_nascimento_professor");
                Professor.DataEntrada = dados.GetDateTime("dt_entrada_prefeitura");
                Professor.QuantidadePontuacao = dados.GetInt32("qt_pontuacao");
                Professor.Numero = dados.GetString("cd_numero_professor");
                Professor.Disciplina = dados.GetString("sg_disciplina");
                Professor.TipoEnsino = dados.GetInt32("cd_tipo_ensino");
                int tipo = dados.GetInt32("cd_tipo_professor");
                Professor.Situacao = Enum.GetName(typeof(ETipoProfessor), tipo);
                Lista.Add(Professor);
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
            throw new Exception($@"{ex}");
        }
        finally
        {
            Desconectar();
        }
        return Lista;
    }

    public List<Professor> BuscarProfessores(ETipoEnsino eTipo)
    {

        List<Professor> Lista = new List<Professor>();
        try
        {
            MySqlDataReader dados = Consultar("BuscarProfessores");

            while (dados.Read())
            {
                if (dados.GetInt32("cd_tipo_ensino") ==(int)eTipo)
                {
                    Professor Professor = new Professor();

                    Professor.Codigo = dados.GetInt32("cd_professor");
                    Professor.Email = dados.GetString("nm_email_professor");
                    Professor.Senha = dados.GetString("nm_senha_professor");
                    Professor.Nome = dados.GetString("nm_professor");
                    Professor.QuantidadeFilhos = dados.GetInt32("qt_filhos");
                    Professor.DataNascimento = dados.GetDateTime("dt_nascimento_professor");
                    Professor.DataEntrada = dados.GetDateTime("dt_entrada_prefeitura");
                    Professor.QuantidadePontuacao = dados.GetInt32("qt_pontuacao");
                    Professor.Numero = dados.GetString("cd_numero_professor");
                    Professor.Situacao = Enum.GetName(typeof(ETipoProfessor), dados.GetInt16("cd_tipo_professor"));
                    Professor.Disciplina = dados.GetString("sg_disciplina");
                    Professor.TipoEnsino = dados.GetInt32("cd_tipo_ensino");
                    Lista.Add(Professor);
                }
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
            throw new Exception($@"{ex}");
        }
        finally
        {
            Desconectar();
        }
        return Lista;
    }

    public Professor BuscarProfessorPorCodigo(int codigo)
    {
        Professor Professor = null;
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", codigo));
            MySqlDataReader dados = Consultar("BuscarProfessorPorCodigo", parametros);

            if(dados.Read())
            {
                Professor = new Professor();

                Professor.Codigo = dados.GetInt32("cd_professor");
                Professor.Email = dados.GetString("nm_email_professor");
                Professor.Senha = dados.GetString("nm_senha_professor");
                Professor.Nome = dados.GetString("nm_professor");
                Professor.QuantidadeFilhos = dados.GetInt32("qt_filhos");
                Professor.DataNascimento = dados.GetDateTime("dt_nascimento_professor");
                Professor.DataEntrada = dados.GetDateTime("dt_entrada_prefeitura");
                Professor.QuantidadePontuacao = dados.GetInt32("qt_pontuacao");
                Professor.Numero = dados.GetString("cd_numero_professor");
                Professor.Situacao = Enum.GetName(typeof(ETipoProfessor), dados.GetInt16("cd_tipo_professor")); ;
                Professor.Disciplina = dados.GetString("sg_disciplina");
                Professor.TipoEnsino = dados.GetInt32("cd_tipo_ensino");
            }
            else
            {
                return null;
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
            throw new Exception($@"{ex}");
        }
        finally
        {
            Desconectar();
        }
        return Professor;
    }

    public void Adicionar(Professor Professor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", Professor.Codigo));
            parametros.Add(new MySqlParameter("pEmail", Professor.Email));
            parametros.Add(new MySqlParameter("pNome", Professor.Nome));
            parametros.Add(new MySqlParameter("pFilhos", Professor.QuantidadeFilhos));
            parametros.Add(new MySqlParameter("pDataNascimento", Professor.DataNascimento));
            parametros.Add(new MySqlParameter("pDataEntrada", Professor.DataEntrada));
            parametros.Add(new MySqlParameter("pPontuacao", Professor.QuantidadePontuacao));
            parametros.Add(new MySqlParameter("pTelefone", Professor.Numero));
            int tipo = (int)Enum.Parse(typeof(ETipoProfessor), Professor.Situacao);
            parametros.Add(new MySqlParameter("pTipo", tipo));
            parametros.Add(new MySqlParameter("pSigla", Professor.Disciplina));
            parametros.Add(new MySqlParameter("pTipoEnsino", Professor.TipoEnsino));

            Executar("AdicionarProfessor", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }

    public void Editar(Professor Professor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", Professor.Codigo));
            parametros.Add(new MySqlParameter("pEmail", Professor.Email));
            parametros.Add(new MySqlParameter("pNome", Professor.Nome));
            parametros.Add(new MySqlParameter("pFilhos", Professor.QuantidadeFilhos));
            parametros.Add(new MySqlParameter("pDataNascimento", Professor.DataNascimento));
            parametros.Add(new MySqlParameter("pDataEntrada", Professor.DataEntrada));
            parametros.Add(new MySqlParameter("pPontuacao", Professor.QuantidadePontuacao));
            parametros.Add(new MySqlParameter("pTelefone", Professor.Numero));
            int tipo = (int)Enum.Parse(typeof(ETipoProfessor), Professor.Situacao);
            parametros.Add(new MySqlParameter("pTipo", tipo));
            parametros.Add(new MySqlParameter("pSigla", Professor.Disciplina));
            parametros.Add(new MySqlParameter("pTipoEnsino", Professor.TipoEnsino));

            Executar("EditarProfessor", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }
}

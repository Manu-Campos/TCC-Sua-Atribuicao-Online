using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


    internal class Diretores : Banco
    {
    public List<Diretor> BuscarDiretores()
    {
        List<Diretor> Lista = new List<Diretor>();
        try
        {
            MySqlDataReader dados = Consultar("BuscarDiretores");
            while (dados.Read())
            {

                Diretor Diretor = new Diretor();
                Instituicoes Instituicoes = new Instituicoes();
                Professores Professores = new Professores();

                Diretor.Professor = Professores.BuscarProfessorPorCodigo(dados.GetInt32("cd_professor"));
                Diretor.Instituicao = Instituicoes.Buscar(dados.GetString("nm_email_instituicao"));
                Diretor.DataInicioAtividade = ((DateTime)dados.GetMySqlDateTime("dt_inicio_atividade"));
                Diretor.DataFimAtividade = dados.GetMySqlDateTime("dt_fim_atividade").Value;

                Lista.Add(Diretor);
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

    public void Editar(Diretor Diretor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", Diretor.Professor.Codigo));
            parametros.Add(new MySqlParameter("pEmail", Diretor.Instituicao.Email)); ;
            parametros.Add(new MySqlParameter("pDataInicio", Diretor.DataInicioAtividade)); ;
            parametros.Add(new MySqlParameter("pDataFim", Diretor.DataFimAtividade));

            Executar("EditarDiretor", parametros);
        }
        catch(Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }

    public void Adicionar(Diretor Diretor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", Diretor.Professor.Codigo));
            parametros.Add(new MySqlParameter("pEmail", Diretor.Instituicao.Email)); ;
            parametros.Add(new MySqlParameter("pDataInicio", Diretor.DataInicioAtividade)); 
            parametros.Add(new MySqlParameter("pDataFim", Diretor.DataFimAtividade));

            Executar("AdicionarDiretor", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }
}

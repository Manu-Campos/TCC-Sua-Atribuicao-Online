using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

internal class EscolaProfessores : EscolaProfessor
{
    public List<EscolaProfessor> BuscarEscolasProfessor(int CodigoProfessor)
    {
        List<EscolaProfessor> Lista = new List<EscolaProfessor>();
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pCodigo", CodigoProfessor));
            MySqlDataReader dados = Consultar("buscarinstituicoesProfessor", parametros);

            while (dados.Read())
            {
                Instituicoes instituicoes = new Instituicoes();
                Instituicao instituicao = instituicoes.Buscar(dados.GetString(1));
                EscolaProfessor escolaProfessor = new EscolaProfessor(dados.GetInt32(0),instituicao, dados.GetBoolean(2));
                Lista.Add(escolaProfessor);
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

    public void inserirInstituicoesProfessor(string EmailSede, string EmailSecundaria,int CodigoProfessor)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pInstituicaoSede", EmailSede));
            parametros.Add(new MySqlParameter("pSegundaInstituicao", EmailSecundaria));
            parametros.Add(new MySqlParameter("pCodigo", CodigoProfessor));
            Executar("inserirInstituicoesProfessor", parametros);
        }
        catch (Exception ex)
        {
            throw new Exception($@"{ex}");
        }
    }
}

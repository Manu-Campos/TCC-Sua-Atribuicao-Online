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
        
        List<MySqlParameter> parametros = new List<MySqlParameter>();
        parametros.Add(new MySqlParameter("pProfessor", CodigoProfessor));
        MySqlDataReader dados = Consultar("buscarInstituicoesDoProfessor", parametros);

        while (dados.Read())
        {
            Instituicoes instituicoes = new Instituicoes();
            InstituicaoUnica instituicao = instituicoes.Buscar(dados.GetString(1));
            EscolaProfessor escolaProfessor = new EscolaProfessor(CodigoProfessor, instituicao, dados.GetBoolean(2));
            Lista.Add(escolaProfessor);
        }
        Desconectar();
        return Lista;
    }
}

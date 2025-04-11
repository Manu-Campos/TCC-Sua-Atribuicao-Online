using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Atribuicao
{
	public ProfessorUnico Professor = new ProfessorUnico();

	public Disciplina Disciplina = new Disciplina();

	public Turma Turma = new Turma();

	public InstituicaoUnica InstituicaoUnica = new InstituicaoUnica();

	public TipoEnsino TipoEnsino = new TipoEnsino();

	public Atribuidor Atribuidor = new Atribuidor();

	public Fase Fase = new Fase();

	public Aula Aula = new Aula();

	public bool CienciaProfessor { get; set; }
	public bool CienciaDiretor { get; set; }
	public bool CienciaAtribuidor { get; set; }

	private DateTime _dataAtribuicao;

	public DateTime DataAtribuicao
	{
		get { return _dataAtribuicao; }
		set { _dataAtribuicao = value; }
	}

	private string _substituicao;

	public string Substituicao
	{
		get { return _substituicao; }
		set { _substituicao = value; }
	}

	private bool _atribuicaoValidada;

	public bool AtribuicaoValidada
	{
		get { return _atribuicaoValidada; }
		set { _atribuicaoValidada = value; }
	}


}

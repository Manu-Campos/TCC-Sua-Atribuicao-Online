using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class NotificacaoSistema
{
    public InstituicaoUnica Instituicao { get; set; } = new InstituicaoUnica();
    private string _DataAviso;
    public string DataAviso
    {
        get { return _DataAviso; }
        set { _DataAviso = value; }
    }
    public string Descricao { get; set; }
    public bool lido { get; set; }
    public string DataPorExtenso { get; set; }
    public string DiaDaSemana { get; set; }
}
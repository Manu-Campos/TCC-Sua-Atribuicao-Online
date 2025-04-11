using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class andamentoEscolas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("andamentoMenu");
            divSelecionada.CssClass = "menuSelecionado itemUnico selectMenu";

            #endregion

            if (!IsPostBack)
            {
                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(0, null);

                selectAno.SelectedIndex = 0;

                foreach (var atribuicao in listaAnos)
                {
                    selectAno.Items.Add(atribuicao.DataAtribuicao.Year.ToString());
                }

                Instituicoes instituicoes = new Instituicoes();
                List<InstituicaoUnica> listaInstituicoes = instituicoes.BuscarInstituicoesPorTipoEnsino();

                if (listaInstituicoes.Count != 1)
                {
                    selectInstituicao.Items.Add("Todas as instituições");
                    selectInstituicao.SelectedIndex = 0;
                }

                foreach (var instituicao in listaInstituicoes)
                {
                    selectInstituicao.Items.Add(instituicao.Nome);
                }

                BuscarAndamentos(int.Parse(selectAno.SelectedValue), null);
            }
        }

        protected void selects_SelectedIndexChanged(object sender, EventArgs e)
        {
            string instituicao = null;

            int ano = int.Parse(selectAno.SelectedValue);

            if (selectInstituicao.SelectedValue != "Todas as instituições")
            {
                instituicao = selectInstituicao.SelectedValue;
            }

            BuscarAndamentos(ano, instituicao);
        }

        private void BuscarAndamentos(int ano, string nomeInstituicao)
        {
            litLinhaTabela.Text = "";

            string emailInstituicao = null;

            if (nomeInstituicao != null)
            {
                Instituicoes instituicoes = new Instituicoes();
                InstituicaoUnica instituicao = instituicoes.BuscarEmailInstituicao(nomeInstituicao);
                emailInstituicao = instituicao.Email;
            }

            Atribuicoes atribuicoes = new Atribuicoes();
            List<List<string>> listaAndamentos = atribuicoes.BuscarAndamentoAtribuicaoInstituicoes(ano, emailInstituicao);

            if (listaAndamentos.Count != 0)
            {
                foreach (var andamento in listaAndamentos)
                {
                    litLinhaTabela.Text += $@"<tr class='situacaoEscola'>
                                                            <td><a href='andamentoInstituicaoEspecifica.aspx?i={andamento[0]}&a={ano}'>{andamento[0]}</a></td>
                                                            <td> 
                                                                <div class='cinza'>
                                                                    <div class='{andamento[2]}' style='width:{andamento[1].Replace(",", ".")}'></div>
                                                                </div>
                                                                <p>{andamento[1]}</p>
                                                            </td>
                                                        </tr>";
                }
            }
            else
            {
                litLinhaTabela.Text = $@"<tr class='situacaoEscola'>
                                                <td>-</td>
                                                <td> 
                                                    <div class='cinza'>
                                                        <div class='sucesso'></div>
                                                    </div>
                                                    <p>0%</p>
                                                </td>
                                            </tr>";
            }
        }
    }
}
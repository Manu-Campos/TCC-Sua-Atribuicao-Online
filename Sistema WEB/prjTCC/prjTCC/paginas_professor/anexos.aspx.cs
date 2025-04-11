using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_professor
{
    public partial class anexos : System.Web.UI.Page
    {
        int codigo = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("anexos");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            codigo = int.Parse(Session["codigo"].ToString());

            if (!IsPostBack)
            {

                Atribuicoes atribuicoes = new Atribuicoes();
                List<Atribuicao> listaAnos = atribuicoes.buscarAnosAtribuicao(codigo);

                if (listaAnos.Count != 1)
                {
                    selectAno.Items.Add("Todos os anos");
                    selectAno.SelectedIndex = 0;
                }

                foreach (var atribuicao in listaAnos)
                {
                    selectAno.Items.Add(atribuicao.DataAtribuicao.Year.ToString());
                }

                BuscarAnexos(codigo, 0);

            }
        }

        private void BuscarAnexos(int codigo, int ano)
        {
            litLinhaTabela.Text = "";

            Anexos anexos = new Anexos();
            List<Anexo> listaAnexos = anexos.buscarAnexosProfessor(codigo, ano);

            if (listaAnexos.Count != 0)
            {
                foreach (var anexo in listaAnexos)
                {
                    string jornadaProfessor = "-";

                    if (anexo.Jornada.CargaHoraria.HTA != 0)
                    {
                        jornadaProfessor = anexo.Jornada.CargaHoraria.HTA.ToString() + "hrs";
                    }

                    litLinhaTabela.Text += $@"<tr id='linhaTabela'>
                                                    <td class='Input Centro'><input type = 'checkbox' name='documentos' class='checkbox checkboxDocumentos'></td>
                                                    <td>ANEXO_{anexo.Professor.Codigo}_{anexo.Atribuicao.DataAtribuicao.Year}.pdf</td>
                                                    <td class='Centro'>{anexo.Atribuicao.DataAtribuicao.Year}</td>
                                                    <td class='Centro'>{jornadaProfessor}</td>
                                                </tr>";
                }
                btnExportar.Enabled = true;
            }
            else
            {
                litLinhaTabela.Text += $@"<tr id='linhaTabela'>
                                                    <td class='Input Centro'>-</td>
                                                    <td>-</td>
                                                    <td class='Centro'>-</td>
                                                    <td class='Centro'>-</td>
                                                </tr>";
                btnExportar.Enabled = false;
            }
        }

        protected void select_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ano = 0;

            if (selectAno.SelectedIndex != 0)
            {
                ano = int.Parse(selectAno.SelectedValue);
            }

            BuscarAnexos(codigo, ano);

        }
    }
}
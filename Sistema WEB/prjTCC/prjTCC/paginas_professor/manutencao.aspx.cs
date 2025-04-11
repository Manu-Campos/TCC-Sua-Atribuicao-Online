using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_professor
{
    public partial class manutencao : System.Web.UI.Page
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

            Panel divSelecionada = (Panel)Master.FindControl("atribuicao");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion 

            string nomeFase = Session["nomeFase"].ToString();
            litFaseAtual.Text = nomeFase;

            litFases.Text = $@"<div id='areaFaseAtual'>
                                    <div id='Manutencao' class='Fases'>{nomeFase}</div>
                                </div>";
        }
    }
}
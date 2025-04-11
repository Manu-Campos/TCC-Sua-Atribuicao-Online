using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class dashboard : System.Web.UI.Page
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

            Panel divSelecionada = (Panel)Master.FindControl("dashboard");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            string login = Session["logado"].ToString();
            string nome = Session["nome"].ToString();

            string[] partes = nome.Split(' ');

            litNome.Text = " " + partes[0];


           



        }

    }
}
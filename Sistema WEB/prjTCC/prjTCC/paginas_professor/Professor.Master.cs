using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.paginas_professor
{
    public partial class Professor : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            #region Validações

            if (Session["logado"] == null)
            {
                Response.Redirect("../index.aspx");
                Response.End();
                return;
            }

            if (String.IsNullOrEmpty(Session["logado"].ToString()))
            {
                Response.Redirect("../index.aspx");
                Response.End();
                return;
            }

            #endregion


            string nome = Session["nome"].ToString();
            string[] partes = nome.Split(' ');
            litNomePerfil.Text = partes[0] + " " + partes.Last();

            Usuarios usuarios = new Usuarios();
            Usuario usuario = usuarios.buscarImagem(Session["cargo"].ToString(), Session["logado"].ToString());

            if (usuario.ImgPerfil != null)
            {
                pnlImgPerfil.Visible = true;
                pnlIniciais.Visible = false;
                imgPerfilHeader.ImageUrl = usuario.ImgPerfil;
            }
            else
            {
                string[] separacoes = nome.Split(' ');
                string iniciais = separacoes[0].Substring(0, 1) + separacoes[separacoes.Length - 1].Substring(0, 1);

                pnlImgPerfil.Visible = false;
                pnlIniciais.Visible = true;
                litIniciais.Text = iniciais;
            }
        }
    }
}
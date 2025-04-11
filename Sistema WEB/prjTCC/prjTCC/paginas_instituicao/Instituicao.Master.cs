using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.instituicao
{
    public partial class Instituicao : System.Web.UI.MasterPage
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
            litNomePerfil.Text = partes[1] + " " + partes[2] + " " + partes.Last();

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
                string iniciais = separacoes[1].Substring(0, 1) + separacoes.Last().Substring(0, 1);

                pnlImgPerfil.Visible = false;
                pnlIniciais.Visible = true;
                litIniciais.Text = iniciais;
            }

            Instituicoes instituicoes = new Instituicoes();
            InstituicaoUnica instituicao = instituicoes.buscarDadosInstituicao(Session["logado"].ToString());

            int contador = 0;
            string tipos = "";

            foreach (TipoEnsino tipoEnsino in instituicao.TipoEnsino)
            {
                if (contador == 0 && instituicao.TipoEnsino.Count >= 2)
                {
                    tipos += tipoEnsino.Nome + " - ";
                    contador++;
                }
                else
                {
                    tipos += tipoEnsino.Nome;
                }
            }

            if (tipos == "PEB I")
            {
                pnlPEBI.Visible = true;
                pnlPEBIII.Visible = false;

                return;
            }

            if (tipos == "PEB III")
            {
                pnlPEBI.Visible = false;
                pnlPEBIII.Visible = true;

                return;
            }

            if (tipos == "PEB I - PEB III")
            {
                pnlPEBI.Visible = true;
                pnlPEBIII.Visible = true;

                return;
            }
        }
    }
}
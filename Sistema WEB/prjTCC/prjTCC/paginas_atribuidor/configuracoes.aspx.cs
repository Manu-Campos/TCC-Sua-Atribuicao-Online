using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.atribuidor
{
    public partial class configuracoes : System.Web.UI.Page
    {
        string email;
        string nome;
        string cargo;

        Atribuidores atribuidores = new Atribuidores();
        Usuarios usuarios = new Usuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            litAviso.Text = "";


            #region Menu Selecionado

            foreach (Control controle in Controls)
            {
                if (controle != null)
                    if (controle is Panel)
                        (controle as Panel).CssClass = "itemUnico";
            }

            Panel divSelecionada = (Panel)Master.FindControl("configuracoes");
            divSelecionada.CssClass = "menuSelecionado itemUnico";

            #endregion

            email = Session["logado"].ToString();
            nome = Session["nome"].ToString();
            cargo = Session["cargo"].ToString();

            Usuarios usuarios = new Usuarios();
            Usuario usuario = usuarios.buscarImagem(Session["cargo"].ToString(), Session["logado"].ToString());

            if (usuario.ImgPerfil != null)
            {
                pnlImgPerfil.Visible = true;
                pnlIniciais.Visible = false;
                imgPerfil.ImageUrl = usuario.ImgPerfil;
            }
            else
            {
                string[] separacoes = nome.Split(' ');
                string iniciais = separacoes[0].Substring(0, 1) + separacoes[separacoes.Length - 1].Substring(0, 1);

                pnlImgPerfil.Visible = false;
                pnlIniciais.Visible = true;
                litIniciais.Text = iniciais;
            }

            Atribuidor atribuidor = atribuidores.dadosAtribuidor(email);

            txtEmail.Text  = atribuidor.Email;
            txtNome.Text = atribuidor.Nome;
            txtDataNascimento.Text = atribuidor.DataNascimento.ToString("yyyy-MM-dd");
            litNome.Text = atribuidor.Nome;
            litEmail.Text = atribuidor.Email;

            if (!IsPostBack)
            {
                txtTelefone.Text = atribuidor.Telefone;
            }

        }

        protected void btnSalvarSenha_Click(object sender, EventArgs e)
        {
            txtConfirmaSenha.CssClass = "Txts txtConfirmaSenha";
            txtNovaSenha.CssClass = "Txts txtNovaSenha";
            txtSenhaAtual.CssClass = "Txts txtSenhaAtual";

            #region Validações 
            if (String.IsNullOrEmpty(txtSenhaAtual.Text))
            {
                txtSenhaAtual.CssClass = "Txts caixaAviso txtSenhaAtual";
                litAviso.Text = "<p class='erro pAviso'>É necessário digitar a senha atual!</p>";
                return;
            }
            if (String.IsNullOrEmpty(txtNovaSenha.Text))
            {
                txtNovaSenha.CssClass = "Txts caixaAviso txtNovaSenha";
                litAviso.Text = "<p class='erro pAviso'>É necessário digitar a nova senha!</p>";
                return;
            }
            if (String.IsNullOrEmpty(txtConfirmaSenha.Text))
            {
                txtConfirmaSenha.CssClass = "Txts caixaAviso txtConfirmaSenha";
                litAviso.Text = "<p class='erro pAviso'>É necessário digitar a confirmação da nova senha!</p>";
                return;
            }
            #endregion

            if (txtNovaSenha.Text != txtConfirmaSenha.Text)
            {
                txtNovaSenha.CssClass = "Txts caixaErro txtNovaSenha";
                txtConfirmaSenha.CssClass = "Txts caixaErro txtConfirmaSenha";
                litAviso.Text = "<p class='erro pAviso'>As senhas não conferem!</p>";
                txtConfirmaSenha.Text = "";
                txtNovaSenha.Text = "";
                return;
            }
            try
            {
                usuarios.alterarSenha(email, txtSenhaAtual.Text, txtNovaSenha.Text);
                litAviso.Text = "<p class='sucesso pAviso'>Sua senha foi alterada com sucesso!</p>";
                return;
            }
            catch
            {
                litAviso.Text = "<p class='erro pAviso'>A senha atual está incorreta!</p>";
                txtSenhaAtual.Text = "";
                txtSenhaAtual.CssClass = "Txts caixaErro txtSenhaAtual";
                return;
            }
            
            
            
        }

        protected void btnSalvarTelefone_Click(object sender, EventArgs e)
        {
            txtTelefone.CssClass = "Txts txtTelefoneC";

            if (String.IsNullOrEmpty(txtTelefone.Text))
            {
                litAvisoTel.Text = "<p class='erro pAvisoTel'>É necessário digitar o telefone!</p>";
                txtTelefone.CssClass = "Txts caixaAviso txtTelefoneC";
                return;
            }

            string telefone = txtTelefone.Text.Replace("(", "").Replace(")", "").Replace("-", "").Replace(" ","");

            if (telefone.Length != 11)
            {
                litAvisoTel.Text = "<p class='erro pAvisoTel'>É necessário digitar os 11 dígitos do telefone!</p>";
                txtTelefone.CssClass = "Txts caixaErro txtTelefoneC";
                txtTelefone.Text = "";
                return;
            }
            try
            {
                usuarios.alterarTelefone(cargo, email,txtTelefone.Text);

                Atribuidor atribuidor = atribuidores.dadosAtribuidor(email);
                txtTelefone.Text = atribuidor.Telefone;

                litAvisoTel.Text = "<p class='sucesso pAvisoTel'>Seu telefone foi alterado com sucesso!</p>";
            }
            catch
            {
                litAvisoTel.Text = "<p class='erro pAvisoTel'>Não foi possível alterar seu telefone!</p>";
                txtTelefone.CssClass = "Txts caixaErro txtTelefoneC";
                txtTelefone.Text = "";
;
                return;
            }
        }

        protected void btnFoto_Click(object sender, EventArgs e)
        {
            if (fupFoto.PostedFile.FileName != "")
            {
                string NomeArq = Path.GetFileName(fupFoto.PostedFile.FileName);
                string TipoArq = fupFoto.PostedFile.ContentType;
                int TamanhoArq = fupFoto.PostedFile.ContentLength;

                if (TipoArq != "image/jpeg" && TipoArq != "image/png" && TipoArq != "image/gif")
                {
                    return;
                }

                if (TamanhoArq > 300000)
                {
                    return;
                }

                if (!Directory.Exists(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\"))
                {
                    Directory.CreateDirectory(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\");
                }

                fupFoto.SaveAs(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\" + NomeArq);

                MemoryStream ms = new MemoryStream();
                System.Drawing.Bitmap figura = new System.Drawing.Bitmap(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\" + NomeArq);
                figura.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] foto = ms.ToArray();

                Usuarios usuarios = new Usuarios();
                Usuario usuario = usuarios.AlterarFoto(Session["cargo"].ToString(), Session["logado"].ToString(), foto);

                figura.Dispose();

                File.Delete(Request.PhysicalApplicationPath + @"imagens\imagensTemporario\" + NomeArq);

                if (usuario.ImgPerfil != null)
                {
                    pnlImgPerfil.Visible = true;
                    pnlIniciais.Visible = false;
                    imgPerfil.ImageUrl = usuario.ImgPerfil;
                    Image imagemMaster = (Image)Master.FindControl("imgPerfilHeader");
                    if (imagemMaster != null)
                    {
                        imagemMaster.ImageUrl = imgPerfil.ImageUrl;
                    }
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
}
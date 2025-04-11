using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC.instituicao
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

            litNome.Text = $" {nome}";

            //Professores professores = new Professores();

            //List<ProfessorUnico> listaProfs = professores.buscarProfessoresAtribuidosDashboard(Session["logado"].ToString(), "NC", 1);

            //Usuarios usuarios = new Usuarios();

            //if (listaProfs.Count != 0)
            //{

            //    foreach (ProfessorUnico professor in listaProfs)
            //    {
            //        Usuario usuario = usuarios.buscarImagem("professor", professor.Email);

            //        if (usuario.ImgPerfil != null)
            //        {
            //            Image fotoProf = new Image();
            //            fotoProf.ImageUrl = usuario.ImgPerfil;
            //            litImagensUsuarios.Text += $@"<div class='FotoUsuario'><img src='{usuario.ImgPerfil}' id='imagemPerfil'></div>";
            //        }
            //        else
            //        {
            //            string[] separacoes = professor.Nome.Split(' ');
            //            string iniciais = separacoes[0].Substring(0, 1) + separacoes[separacoes.Length - 1].Substring(0, 1);

            //            litImagensUsuarios.Text += $@"<div class='FotoUsuario'>
            //                                            <div class='pnlIniciais'>{iniciais}</div>
            //                                      </div>";
            //        }
            //    }
            //    litNomeVezProfessor.Text = listaProfs[0].Nome;
            //}


            //if (listaProfs[0].SituacaoAtribuicao == "Em andamento")
            //{
            //    DateTime chamadaDt = listaProfs[0].ChamadaDt;
            //    DateTime agora = DateTime.Now;

            //    TimeSpan tempoPassado = agora - chamadaDt;

            //    litBarradeProgresso.Text = $@"<div class='progress'>
            //                                    <div class='progress-bar' style=' position: absolute;
            //                                        height: 100%;
            //                                        background-color: #add555;
            //                                        animation: progress-animation {tempoPassado.TotalSeconds}s infinite;'></div>
            //                             </div>";
            //}

         
        }
    }
}
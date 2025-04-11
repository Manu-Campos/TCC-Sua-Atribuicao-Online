using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prjTCC
{
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
            
        }

        int c = 0;
        int n = 0;

        private void btnEntra_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtLogin.Text) || String.IsNullOrEmpty(txtSenha.Text))
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtLogin.Focus();
                return;
            }


            Usuarios usuarios = new Usuarios();

            Usuario usuario = usuarios.Logar(txtLogin.Text, txtSenha.Text);

            if (usuario != null)
            {
                switch (usuario.TipoUsuario)
                {

                    case ETipoUsuarios.Atribuidor:
                        frmInicialAtribuidor frmInicialAtribuidor = new frmInicialAtribuidor();
                        frmInicialAtribuidor.Show();
                        this.Hide();
                        frmInicialAtribuidor.FormClosed += (s, args) => this.Close();
                        n = 1;
                        break;

                    case ETipoUsuarios.Instituicao:
                        frmInicialInstituição frmInicialInstituição = new frmInicialInstituição(txtLogin.Text);
                        frmInicialInstituição.Show();
                        this.Hide();
                        frmInicialInstituição.FormClosed += (s, args) => this.Close();
                        n = 1;
                        break;
                }
            }
            else
            {
                frmAvisoErroLogin frmAvisoErroLogin = new frmAvisoErroLogin();
                frmAvisoErroLogin.ShowDialog();
                txtLogin.Clear();
                txtSenha.Clear();
                txtLogin.Focus();
            }
        }

        private void frmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (n == 1)
            {
                e.Cancel = false;
            }
            else
            {
                using (frmAvisoFechar frmAvisoFechar = new frmAvisoFechar())
                {
                    DialogResult result = frmAvisoFechar.ShowDialog();

                    if (result == DialogResult.Yes)
                    {
                        e.Cancel = false;
                    }
                    else
                    {
                        e.Cancel = true;
                    }
                }
            }
        }
        
        private void frmLogin_Load(object sender, EventArgs e)
        {
            c = 0;
        }

        private void btnVisivel_Click(object sender, EventArgs e)
        {
            if (c == 0)
            {
                txtSenha.PasswordChar = default(char);
                btnVisivel.Image = prjTCC.Properties.Resources.olho;
                c = 1;
            }
            else
            {
                txtSenha.PasswordChar = '*';
                btnVisivel.Image = prjTCC.Properties.Resources.visivel;
                c = 0;
            }
        }

        private void frmLogin_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEntra_Click(sender, e);
            }
        }

        private void txtLogin_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEntra_Click(sender, e);
            }
        }

        private void txtSenha_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEntra_Click(sender, e);
            }
        }

        private void linkEsqueceu_Click(object sender, EventArgs e)
        {
            frmEsqueceuSenha frmEsqueceuSenha = new frmEsqueceuSenha();
            frmEsqueceuSenha.ShowDialog();
        }
    }
}

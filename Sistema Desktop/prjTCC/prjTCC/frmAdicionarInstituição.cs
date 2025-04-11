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
    public partial class frmAdicionarInstituição : Form
    {
        public frmAdicionarInstituição()
        {
            InitializeComponent();
            
        }

        int n = 0;

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            if (txtNome.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtNome.Clear();
                txtNome.Focus();
                return;
            }

            if (txtNumero.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtNumero.Clear();
                txtNumero.Focus();
                return;
            }

            if (txtEmail.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtEmail.Clear();
                txtEmail.Focus();
                return;
            }

            try 
            {
                Instituicao instituicao = new Instituicao(txtNome.Text, txtNumero.Text, txtEmail.Text);

                Instituicoes instituicoes = new Instituicoes();

                instituicoes.Adicionar(instituicao);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Instituição adicionada com sucesso!");
                frmAvisoCorreto.ShowDialog();
            }
            catch (Exception erro)
            {
                frmAvisoErro frmAvisoErro = new frmAvisoErro();

                if (erro == null)
                {
                    frmAvisoErro.AlterarTextoLabel($@"Deu erro, tente novamente!");
                }
                else
                {
                    frmAvisoErro.AlterarTextoLabel($@"{erro}");
                }

                frmAvisoErro.ShowDialog();
            }
        }

        private void btnVolta_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmAdicionarInstituição_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;

            if (txtEmail.Text != "" || txtNumero.Text != "" || txtNome.Text != "")
            {
                DialogResult result;

                if (n == 1)
                {
                    using (frmAvisoVoltar frmAvisoVoltar = new frmAvisoVoltar())
                    {
                        result = frmAvisoVoltar.ShowDialog();
                    }
                }
                else
                {
                    using (frmAvisoFechar frmAvisoFechar = new frmAvisoFechar())
                    {
                        result = frmAvisoFechar.ShowDialog();
                    }
                }

                if (result == DialogResult.Yes)
                {
                    e.Cancel = false;
                }
            }
            else
            {
                e.Cancel = false;
            }
        }

        private void frmAdicionarInstituição_Load(object sender, EventArgs e)
        {
            n = 0;
        }

        private void txtNome_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtEmail_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtNumero_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void KeyDown_Enter(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnAdicionar_Click(sender, e);
            }
        }
    }
}

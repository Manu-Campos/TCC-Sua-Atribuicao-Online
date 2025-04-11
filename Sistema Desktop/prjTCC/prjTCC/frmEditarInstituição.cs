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
    public partial class frmEditarInstituição : Form
    {
        public frmEditarInstituição(DataGridViewRow linha)
        {
            InitializeComponent();
            Email = linha.Cells[0].Value.ToString();
            Nome = linha.Cells[1].Value.ToString();
            Telefone = linha.Cells[2].Value.ToString();
        }

        string Nome = "";
        string Email = "";
        string Telefone = "";

        private void btnVolta_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnEditar_Click(object sender, EventArgs e)
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
                Instituicao instituicao = new Instituicao();
                Instituicoes instituicoes = new Instituicoes();

                instituicao.Email = txtEmail.Text;
                instituicao.Telefone = txtNumero.Text;
                instituicao.Nome = txtNome.Text;

                instituicoes.Editar(instituicao);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Instituição editada com sucesso!");
                frmAvisoCorreto.ShowDialog();
                this.Close();
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

        private void KeyDown_Enter(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEditar_Click(sender, e);
            }
        }

        private void frmEditarInstituição_Load(object sender, EventArgs e)
        {
            txtEmail.Text = Email;
            txtNome.Text = Nome;
            txtNumero.Text = Telefone;
        }
    }
}

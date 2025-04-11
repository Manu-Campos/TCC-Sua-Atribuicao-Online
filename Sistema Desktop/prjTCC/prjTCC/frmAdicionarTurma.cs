using prjTCC.Enums;
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
    public partial class frmAdicionarTurma : Form
    {
        string emailEscola = null;

        public frmAdicionarTurma(string email)
        {
            InitializeComponent();
            emailEscola = email;
        }

        public frmAdicionarTurma()
        {
            InitializeComponent();
        }

        int n = 0;

        Instituicao instituicaoEscolhida = new Instituicao();
        List<Instituicao> ListaInstituicao = new List<Instituicao>();

        private void frmAdicionarTurma_Load(object sender, EventArgs e)
        {
            n = 0;

            Instituicoes instituicoes = new Instituicoes();
            ListaInstituicao = instituicoes.Listar();

            foreach (Instituicao Instituicao in ListaInstituicao)
            {
                cmbEscola.Items.Add(Instituicao.Nome);
            }

            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipoEnsino.Items.Add(TipoEnsino);
            }

            foreach (string Periodo in Enum.GetNames(typeof(EPeriodos)))
            {
                cmbPeriodo.Items.Add(Periodo);
            }
            cmbPeriodo.SelectedIndex = 0;

            if (emailEscola == null)
            {
                cmbEscola.SelectedIndex = 0;
            }
            else
            {
                Instituicao instituicao = instituicoes.Buscar(emailEscola);

                cmbEscola.SelectedItem = instituicao.Nome;
                cmbEscola.Enabled = false;
            }
            cmbTipoEnsino.SelectedIndex = 0;
        }

        private void frmAdicionarTurma_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;

            if (txtNome.Text != "" || txtSigla.Text != "" || cmbEscola.SelectedIndex != -1 || cmbTipoEnsino.SelectedIndex != -1)
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

            if (txtSigla.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtSigla.Clear();
                txtSigla.Focus();
                return;
            }

            if (cmbTipoEnsino.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbTipoEnsino.SelectedIndex = 0;
                cmbTipoEnsino.Focus();
                return;
            }

            if (cmbEscola.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbEscola.SelectedIndex = 0;
                cmbEscola.Focus();
                return;
            }

            try
            {
                Turmas Turmas = new Turmas();
                Turma Turma = new Turma();

                Turma.Instituicao = instituicaoEscolhida;
                Turma.Nome = txtNome.Text;
                Turma.Sigla = txtSigla.Text;
                Turma.TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino), cmbTipoEnsino.SelectedItem.ToString());
                Turma.Periodo = cmbPeriodo.SelectedItem.ToString();

                Turmas.Adicionar(Turma);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Turma adicionada com sucesso!");
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

        private void cmbEscola_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(Instituicao instituicao in ListaInstituicao)
            {
                if (instituicao.Nome == cmbEscola.SelectedItem.ToString())
                    instituicaoEscolhida = instituicao;
            }

            n = 1;
        }

        private void cmbTipoEnsino_SelectedIndexChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtSigla_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '0')
            {
                e.Handled = true;

                int cursorPosition = txtSigla.SelectionStart;

                if (cursorPosition < 0 || cursorPosition > txtSigla.Text.Length)
                {
                    cursorPosition = txtSigla.Text.Length;
                }

                if (cursorPosition <= txtSigla.Text.Length)
                {
                    txtSigla.Text = txtSigla.Text.Substring(0, cursorPosition) + '1' + txtSigla.Text.Substring(cursorPosition);

                    txtSigla.SelectionStart = cursorPosition + 1;
                }

                txtSigla.Text = txtSigla.Text.ToUpper();
            }
        }

        private void txtSigla_TextChanged(object sender, EventArgs e)
        {
            txtSigla.Text = txtSigla.Text.ToUpper();
            n = 1;
        }

        private void txtNome_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtNome_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnAdicionar_Click(sender, e);
            }
        }
    }
}

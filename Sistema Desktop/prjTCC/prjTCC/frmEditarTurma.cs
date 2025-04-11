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
    public partial class frmEditarTurma : Form
    {
        public frmEditarTurma(DataGridViewRow linha)
        {
            InitializeComponent();
            PrivateFontCollection gilroy = new PrivateFontCollection();
            if (!linha.IsNewRow)
            {
                Sigla = linha.Cells[0].Value.ToString();
                Nome = linha.Cells[1].Value.ToString();
                Instituicao = linha.Cells[2].Value.ToString();
                TipoEnsino = linha.Cells[3].Value.ToString();
                Periodo = linha.Cells[4].Value.ToString();
            }
        }

        string Nome = "";
        string Sigla = "";
        string TipoEnsino = "";
        string Instituicao = "";
        string Periodo = "";

        Instituicao instituicaoEscolhida = new Instituicao();
        List<Instituicao> ListaInstituicao = new List<Instituicao>();

        private void frmEditarTurma_Load(object sender, EventArgs e)
        {
            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipoEnsino.Items.Add(TipoEnsino);
            }

            Instituicoes instituicoes = new Instituicoes();
            List<Instituicao> ListaInstituicao = instituicoes.Listar();

            txtNome.Text = Nome;
            txtSigla.Text = Sigla;
            cmbEscola.Items.Add(Instituicao);
            cmbEscola.SelectedIndex = 0;
            cmbTipoEnsino.SelectedItem = TipoEnsino;

            foreach (Instituicao instituicao in ListaInstituicao)
            {
                if (instituicao.Nome == Instituicao)
                    Instituicao = instituicao.Email;
            }
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
                Turma turma = new Turma();
                Turmas turmas = new Turmas();

                turma.Nome = txtNome.Text;
                turma.Sigla = txtSigla.Text;
                turma.Instituicao.Email = Instituicao;
                turma.TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino), cmbTipoEnsino.SelectedItem.ToString());

                turmas.Editar(turma);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Turma editada com sucesso!");
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

        private void btnVolta_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void KeyDown_Enter(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEditar_Click(sender, e);
            }
        }

        private void cmbEscola_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (Instituicao instituicao in ListaInstituicao)
            {
                if (instituicao.Nome == cmbEscola.SelectedItem.ToString())
                    instituicaoEscolhida = instituicao;
            }
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
        }
    }
}

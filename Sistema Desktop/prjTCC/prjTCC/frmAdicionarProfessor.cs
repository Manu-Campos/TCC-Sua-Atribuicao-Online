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
    public partial class frmAdicionarProfessor : Form
    {
        public frmAdicionarProfessor()
        {
            InitializeComponent();
        }

        int n = 0;

        private void frmAdicionarProfessor_Load(object sender, EventArgs e)
        {
            n = 0;

            Disciplinas disciplinas = new Disciplinas();
            List<Disciplina> Lista = disciplinas.Listar();


            foreach (Disciplina disciplina in Lista)
            {
                cmbDisciplina.Items.Add(disciplina.Sigla);
            }

            cmbDisciplina.SelectedItem = "NC";

            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipoEnsino.Items.Add(TipoEnsino);
            }

            cmbTipoEnsino.SelectedIndex = 0;

            foreach (string TipoProfessor in Enum.GetNames(typeof(ETipoProfessor)))
            {
                cmbTipoProfessor.Items.Add(TipoProfessor);
            }

            cmbTipoProfessor.SelectedIndex = 0;
        }

        private void btnVolta_Click(object sender, EventArgs e)
        {
            this.Close();
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

            if (txtTelefone.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtTelefone.Clear();
                txtTelefone.Focus();
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

            if (txtProntuário.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtProntuário.Clear();
                txtProntuário.Focus();
                return;
            }

            if (txtPontuacao.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtPontuacao.Clear();
                txtPontuacao.Focus();
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

            if (cmbDisciplina.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbDisciplina.SelectedIndex = 0;
                cmbDisciplina.Focus();
                return;
            }

            if (cmbTipoProfessor.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbTipoProfessor.SelectedIndex = 0;
                cmbTipoProfessor.Focus();
                return;
            }

            try
            {
                Professor professor = new Professor();

                professor.Codigo = int.Parse(txtProntuário.Text);
                professor.Email = txtEmail.Text;
                professor.Nome = txtNome.Text;
                professor.Numero = txtTelefone.Text;
                professor.Disciplina = cmbDisciplina.SelectedItem.ToString();
                foreach (var item in Enum.GetValues(typeof(ETipoEnsino)))
                {
                    if (cmbTipoEnsino.SelectedItem.ToString() == Enum.GetName(typeof(ETipoEnsino), item))
                    {
                        professor.TipoEnsino = (int)item;
                    }
                }
                professor.DataEntrada = DateTime.Parse(dtpEntrada.Text);
                professor.DataNascimento = DateTime.Parse(dtpNascimento.Text);
                professor.QuantidadeFilhos = int.Parse(txtFilhos.Text);
                professor.Situacao = cmbTipoProfessor.SelectedItem.ToString();
                professor.QuantidadePontuacao = int.Parse(txtPontuacao.Text);

                Professores professores = new Professores();

                professores.Adicionar(professor);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Professor adicionado com sucesso!");
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

        private void txtProntuário_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtNome_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtEmail_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtTelefone_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void dtpNascimento_ValueChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtFilhos_ValueChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void dtpEntrada_ValueChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtPontuacao_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void cmbTipoEnsino_SelectedIndexChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void cmbDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void cmbTipoProfessor_SelectedIndexChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtProntuário_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtPontuacao_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != ',' && e.KeyChar != '.' && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void frmAdicionarProfessor_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;

            if (txtNome.Text != "" || txtEmail.Text != "" || txtProntuário.Text != "" || txtPontuacao.Text != "" || txtTelefone.Text != "" || txtFilhos.Text != "" || cmbTipoProfessor.SelectedIndex != -1 || cmbTipoEnsino.SelectedIndex != -1 || cmbTipoEnsino.SelectedIndex != -1 || dtpEntrada.Text != "" || dtpNascimento.Text != "")
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

        private void txtNome_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnAdicionar_Click(sender, e);
            }
        }
    }
}

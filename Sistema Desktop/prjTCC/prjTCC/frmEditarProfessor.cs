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
using prjTCC.Enums;

namespace prjTCC
{
    public partial class frmEditarProfessor : Form
    {
         public frmEditarProfessor(DataGridViewRow linha)
         {
            InitializeComponent();
            Codigo = int.Parse(linha.Cells[0].Value.ToString());
            Email = linha.Cells[1].Value.ToString();
            Nome = linha.Cells[2].Value.ToString();
            QuantidadeFilhos = int.Parse(linha.Cells[3].Value.ToString());
            DataNascimento = DateTime.Parse(linha.Cells[4].Value.ToString());
            DataEntrada = DateTime.Parse(linha.Cells[5].Value.ToString());
            QuantidadePontuacao = int.Parse(linha.Cells[6].Value.ToString());
            Telefone = linha.Cells[7].Value.ToString();
            Situacao = linha.Cells[8].Value.ToString();
            Disciplina = linha.Cells[9].Value.ToString();
            TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino) , linha.Cells[10].Value.ToString());
         }

         int Codigo = 0;
         string Email = "";
         string Nome = "";
         int QuantidadeFilhos = 0;
         DateTime DataNascimento = DateTime.Today;
         DateTime DataEntrada = DateTime.Today;
         int QuantidadePontuacao = 0;
         string Telefone = "";
         string Situacao = "";
         string Disciplina = "";
         int TipoEnsino = 0;

        private void frmEditarProfessor_Load(object sender, EventArgs e)
        {
            Disciplinas disciplinas = new Disciplinas();
            List<Disciplina> Lista = disciplinas.Listar();

            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipoEnsino.Items.Add(TipoEnsino);
            }

            cmbDisciplina.Items.Add("Todos");
            cmbDisciplina.SelectedItem = "Todos";
            foreach (Disciplina disciplina in Lista)
            {
                cmbDisciplina.Items.Add(disciplina.Sigla);
            }

            foreach (string TipoProfessor in Enum.GetNames(typeof(ETipoProfessor)))
            {
                cmbTipoProfessor.Items.Add(TipoProfessor);
            }

            txtProntuário.Text = Codigo.ToString();
            txtEmail.Text = Email.ToString();
            txtNome.Text = Nome.ToString();
            txtTelefone.Text = Telefone.ToString();
            txtFilhos.Text = QuantidadeFilhos.ToString();
            cmbDisciplina.SelectedItem = Disciplina;
            cmbTipoEnsino.SelectedItem = Enum.GetName(typeof(ETipoEnsino),TipoEnsino);
            dtpEntrada.Value = DataEntrada;
            dtpNascimento.Value = DataNascimento;
            txtPontuacao.Text = QuantidadePontuacao.ToString();
            cmbTipoProfessor.SelectedItem = Situacao;
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
                Professores professores = new Professores();
                Professor professor = new Professor(int.Parse(txtProntuário.Text), txtEmail.Text, txtNome.Text, int.Parse(txtFilhos.Text), dtpNascimento.Value, dtpEntrada.Value, int.Parse(txtPontuacao.Text), txtTelefone.Text, cmbTipoProfessor.SelectedItem.ToString(), cmbDisciplina.SelectedItem.ToString(), (int)Enum.Parse(typeof(ETipoEnsino), cmbTipoEnsino.SelectedItem.ToString()));
                professores.Editar(professor);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Professor editado com sucesso!");
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

        private void txtPontuacao_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && e.KeyChar != ',' && e.KeyChar != '.' && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtProntuário_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void KeyDown_Enter(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnEditar_Click(sender, e);
            }
        }

        private void btnVolta_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

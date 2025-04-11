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
using System.IO;

namespace prjTCC
{
    public partial class frmAdicionarSupervisor : Form
    {

        public frmAdicionarSupervisor()
        {
            InitializeComponent();
        }

        int n = 0;

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtEmail.Clear();
                txtEmail.Focus();
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

            if (cmbTipoEnsino.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbTipoEnsino.SelectedIndex = 0;
                cmbTipoEnsino.Focus();
                return;
            }

            if (cmbCodigo.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbCodigo.Focus();
                return;
            }

            try
            {
                Supervisores supervisores = new Supervisores();

                Supervisor supervisor = new Supervisor(int.Parse(cmbCodigo.SelectedItem.ToString()),cmbDisciplina.SelectedItem.ToString(), (int)Enum.Parse(typeof(ETipoEnsino), cmbTipoEnsino.SelectedItem.ToString()),txtEmail.Text);

                supervisores.Adicionar(supervisor);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Supervisor adicionado com sucesso!");
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

        private void frmAdicionarSupervisor_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;

            if (txtEmail.Text != "" || cmbDisciplina.SelectedIndex != -1 || cmbTipoEnsino.SelectedIndex != -1 || cmbCodigo.SelectedItem.ToString() != "")
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

        private void frmAdicionarSupervisor_Load(object sender, EventArgs e)
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

            Professores professores = new Professores();
            List<Professor> Lista1 = professores.BuscarProfessores();
            foreach (Professor Professor in Lista1)
            {
                cmbCodigo.Items.Add(Professor.Codigo);
            }

            cmbTipoEnsino.SelectedIndex = 0;
        }

        private void txtEmail_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void cmbDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void cmbTipoEnsino_SelectedIndexChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtCodigo_TextChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                e.Handled = true;
            }
        }

        private void txtEmail_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnAdicionar_Click(sender, e);
            }
        }
    }
}

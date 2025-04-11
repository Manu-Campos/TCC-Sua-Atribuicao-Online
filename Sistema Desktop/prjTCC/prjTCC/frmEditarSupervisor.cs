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
    public partial class frmEditarSupervisor : Form
    {
        public frmEditarSupervisor(DataGridViewRow linha)
        {
            InitializeComponent();
            Codigo = linha.Cells[0].Value.ToString();
            Email = linha.Cells[1].Value.ToString();
            Nome = linha.Cells[2].Value.ToString();
            Telefone = linha.Cells[3].Value.ToString();
            Disciplina = linha.Cells[4].Value.ToString();
            TipoEnsino = linha.Cells[5].Value.ToString();
        }

        string Codigo = "";
        string Email = "";
        string Nome = "";
        string Telefone = "";
        string Disciplina = "";
        string TipoEnsino = "";

        int n = 0;

        private void frmEditarSupervisor_Load(object sender, EventArgs e)
        {
            Disciplinas disciplinas = new Disciplinas();
            List<Disciplina> Lista = disciplinas.Listar();

            cmbDisciplina.Items.Add("Todos");
            cmbDisciplina.SelectedItem = "Todos";
            foreach (Disciplina disciplina in Lista)
            {
                cmbDisciplina.Items.Add(disciplina.Sigla);
            }

            txtCodigo.Text = Codigo;
            txtEmail.Text = Email;

            cmbDisciplina.SelectedItem = Disciplina;

            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipoEnsino.Items.Add(TipoEnsino);
            }

            cmbTipoEnsino.SelectedItem = TipoEnsino;
        }

        private void btnEditar_Click(object sender, EventArgs e)
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

            if (txtCodigo.Text == "")
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                txtCodigo.Clear();
                txtCodigo.Focus();
                return;
            }

            try
            {
                Supervisor supervisor = new Supervisor();

                Supervisores supervisores = new Supervisores();

                supervisor.Email = Email;
                supervisor.Professor.Codigo = int.Parse(Codigo);
                supervisor.SiglaDisciplina = cmbDisciplina.SelectedItem.ToString();
                supervisor.TipoEnsino = (int)Enum.Parse(typeof(ETipoEnsino), cmbTipoEnsino.SelectedItem.ToString());

                supervisores.Editar(supervisor);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Supervisor editado com sucesso!");
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
    }
}

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
using Aspose.Cells;

namespace prjTCC
{
    public partial class frmVisualizarSupervisores : Form
    {
        public frmVisualizarSupervisores()
        {
            InitializeComponent();
        }

        bool foi = false;

        private void frmVisualizarSupervisores_Load(object sender, EventArgs e)
        {
            ColocarDadosTabela();
        }

        private void ColocarDadosTabela()
        {

            dgvSupervisores.Rows.Clear();

            Supervisores supervisores = new Supervisores();
            List<Supervisor> ListaSupevisores = supervisores.ListarSupervisores();

            Disciplinas disciplinas = new Disciplinas();
            List<Disciplina> Lista = disciplinas.Listar();

            cmbTipo.Items.Add("Todos");
            cmbTipo.SelectedItem = "Todos";
            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipo.Items.Add(TipoEnsino);
            }

            cmbDisciplina.Items.Add("Todos");
            cmbDisciplina.SelectedItem = "Todos";
            foreach (Disciplina disciplina in Lista)
            {
                cmbDisciplina.Items.Add(disciplina.Sigla);
            }

            foreach (Supervisor Supervisor in ListaSupevisores)
            {
                DataGridViewRow linha = (DataGridViewRow)dgvSupervisores.Rows[0].Clone();
                linha.Cells[0].Value = Supervisor.Professor.Codigo;
                linha.Cells[1].Value = Supervisor.Email;
                linha.Cells[2].Value = Supervisor.Professor.Nome;
                linha.Cells[3].Value = Supervisor.Professor.Numero;
                linha.Cells[4].Value = Supervisor.SiglaDisciplina;
                linha.Cells[5].Value = Enum.GetName(typeof(ETipoEnsino), Supervisor.TipoEnsino);
                dgvSupervisores.Rows.Add(linha);
            }
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            frmAdicionarSupervisor frmAdicionarSupervisor = new frmAdicionarSupervisor();
            frmAdicionarSupervisor.Show();

            this.Hide();
            frmAdicionarSupervisor.FormClosed += (s, args) => this.Show();
        }

        public void FiltrarSupervisores()
        {
            if (foi == true)
            {
                foreach (DataGridViewRow linha in dgvSupervisores.Rows)
                {
                    linha.Visible = true;
                }

                foreach (DataGridViewRow linha in dgvSupervisores.Rows)
                {
                    if (!linha.IsNewRow)
                    {
                        if (cmbDisciplina.SelectedItem.ToString() != "Todos")
                            if (linha.Cells[4].Value.ToString() != cmbDisciplina.SelectedItem.ToString())
                                linha.Visible = false;

                        if (cmbTipo.SelectedItem.ToString() != "Todos")
                            if (linha.Cells[5].Value.ToString() != cmbTipo.SelectedItem.ToString())
                                linha.Visible = false;

                    }
                }
            }
            else
            {
                foi = true;
            }
        }

        private void cmbDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarSupervisores();
        }

        private void cmbTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarSupervisores();
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog CaixaCaminho = new FolderBrowserDialog();
            CaixaCaminho.ShowDialog();
            string caminho = CaixaCaminho.SelectedPath;

            Excel excel = new Excel();

            excel.SalvarDgvEmExcel(dgvSupervisores, caminho + @"\Supervisores.xlsx");
        }

        private void btnImportar_Click(object sender, EventArgs e)
        {
            OpenFileDialog CaixaCaminho = new OpenFileDialog();
            CaixaCaminho.Filter = "Excel Files(.xls)|*.xls| Excel Files(.xlsx)|*.xlsx| Excel Files(*.xlsm)|*.xlsm";
            CaixaCaminho.ShowDialog();
            string caminho = CaixaCaminho.FileName;

            try
            {
                Excel excel = new Excel();
                excel.Importar(caminho, ETipoUsuarios.Supervisor);
                ColocarDadosTabela();
            }
            catch (Exception ex)
            {
                frmAvisoErroAdicionar frmAvisoErro = new frmAvisoErroAdicionar();
                frmAvisoErro.ShowDialog();
                return;
            }
        }

        private void btnPesquisa_Click(object sender, EventArgs e)
        {
            if (cmbTipo.SelectedItem.ToString() == "Todos" & cmbDisciplina.SelectedItem.ToString() == "Todos")
            {
                foreach (DataGridViewRow linha in dgvSupervisores.Rows)
                {
                    linha.Visible = true;
                }
            }

            if (String.IsNullOrEmpty(txtPesquisa.Text))
            {
                foreach (DataGridViewRow linha in dgvSupervisores.Rows)
                {
                    linha.Visible = true;
                }
                return;
            }


            foreach (DataGridViewRow linha in dgvSupervisores.Rows)
            {
                if (!linha.IsNewRow)
                {
                    int cont = 0;
                    foreach (DataGridViewCell Celula in linha.Cells)
                    {
                        if (!Celula.Value.ToString().ToLower().Contains(txtPesquisa.Text.ToString().ToLower()))
                        {
                            cont++;
                        }
                    }
                    if (cont == linha.Cells.Count)
                        linha.Visible = false;
                    else
                        linha.Visible = true;
                }
            }
        }

        private void dgvSupervisores_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            frmEditarSupervisor frmEditar = new frmEditarSupervisor(dgvSupervisores.Rows.SharedRow(e.RowIndex));
            frmEditar.Show();
            this.Hide();
            frmEditar.FormClosed += (s, args) => this.Show();
            frmEditar.FormClosed += (s, args) => this.ColocarDadosTabela();
        }
    }
}

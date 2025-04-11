using System;
using Aspose.Cells;
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
    public partial class frmVisualizarTurmas : Form
    {
        string emailEscola = null;

        public frmVisualizarTurmas(string email)
        {
            InitializeComponent();
            emailEscola = email;
        }

        public frmVisualizarTurmas()
        {
            InitializeComponent();
        }

        bool foi = false;

        private void Dgvtrumas_CellDoubleClick(Object sender, DataGridViewCellEventArgs e)
        {
            frmEditarTurma frmEditar = new frmEditarTurma(dgvTrumas.Rows.SharedRow(e.RowIndex));
            frmEditar.Show();
            this.Hide();
            frmEditar.FormClosed += (s, args) => this.Show();
            frmEditar.FormClosed += (s, args) => this.ColocarDadosTabela();
        }

        private void frmVisualizarTurmas_Load(object sender, EventArgs e)
        {
            ColocarDadosTabela();

            cmbTipoEnsino.Items.Add("Todos");
            cmbTipoEnsino.SelectedItem = "Todos";
            foreach (string TipoEnsino in Enum.GetNames(typeof(ETipoEnsino)))
            {
                cmbTipoEnsino.Items.Add(TipoEnsino);
            }

            if (emailEscola != null)
            {
                cmbInstituicao.Visible = false;
            }
            else
            {
                Instituicoes instituicoes = new Instituicoes();
                List<Instituicao> ListaInstituicao = instituicoes.Listar();
                cmbInstituicao.Items.Add("Todos");
                cmbInstituicao.SelectedItem = "Todos";
                foreach (Instituicao Instituicao in ListaInstituicao)
                {
                    cmbInstituicao.Items.Add(Instituicao.Nome);
                }

            }

            FiltrarTurmas();
        }

        private void ColocarDadosTabela()
        {
            dgvTrumas.Rows.Clear();

            Turmas Turmas = new Turmas();
            List<Turma> ListaTurmas = new List<Turma>();
            ListaTurmas = Turmas.BuscarTurmas();

            foreach (Turma Turma in ListaTurmas)
            {
                DataGridViewRow linha = (DataGridViewRow)dgvTrumas.Rows[0].Clone();
                linha.Cells[0].Value = Turma.Sigla;
                linha.Cells[1].Value = Turma.Nome;
                linha.Cells[2].Value = Turma.Instituicao.Nome;
                linha.Cells[3].Value = Enum.GetName(typeof(ETipoEnsino), Turma.TipoEnsino);
                linha.Cells[4].Value = Turma.Periodo;
                linha.Cells[5].Value = Turma.Instituicao.Email;
                dgvTrumas.Rows.Add(linha);
            }
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            if (emailEscola == null)
            {
                frmAdicionarTurma frmAdicionarTurma = new frmAdicionarTurma();
                frmAdicionarTurma.Show();

                this.Hide();
                frmAdicionarTurma.FormClosed += (s, args) => this.Show();
            }
            else
            {
                frmAdicionarTurma frmAdicionarTurma = new frmAdicionarTurma(emailEscola);
                frmAdicionarTurma.Show();

                this.Hide();
                frmAdicionarTurma.FormClosed += (s, args) => this.Show();
            }
            
        }

        private void cmbDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarTurmas();
        }

        public void FiltrarTurmas()
        { 
            if (emailEscola == null)
            {
                if(foi == true)
                {
                    foreach (DataGridViewRow linha in dgvTrumas.Rows)
                    {
                        linha.Visible = true;
                    }

                    foreach (DataGridViewRow linha in dgvTrumas.Rows)
                    {
                        if (!linha.IsNewRow)
                        {
                            if (cmbTipoEnsino.SelectedItem.ToString() != "Todos")
                                if (linha.Cells[3].Value.ToString() != cmbTipoEnsino.SelectedItem.ToString())
                                    linha.Visible = false;

                            if (cmbInstituicao.SelectedItem.ToString() != "Todos")
                                if (linha.Cells[2].Value.ToString() != cmbInstituicao.SelectedItem.ToString())
                                    linha.Visible = false;
                        }
                    }
                }
                else
                {
                    foi = true;
                }
            }
            else
            {
                if (foi == true)
                {
                    foreach (DataGridViewRow linha in dgvTrumas.Rows)
                    {
                        linha.Visible = true;
                    }

                    foreach (DataGridViewRow linha in dgvTrumas.Rows)
                    {
                        if (!linha.IsNewRow)
                        {
                            if (cmbTipoEnsino.SelectedItem.ToString() != "Todos")
                                if (linha.Cells[3].Value.ToString() != cmbTipoEnsino.SelectedItem.ToString())
                                    linha.Visible = false;

                            Instituicoes instituicoes = new Instituicoes();

                            Instituicao instituicao = instituicoes.Buscar(emailEscola);

                            if (linha.Cells[2].Value.ToString() != instituicao.Nome)
                                linha.Visible = false;
                        }
                    }
                }
                else
                {
                    foi = true;
                }
            }
        }

        private void cmbInstituicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarTurmas();
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
                excel.Importar(caminho, ETipoUsuarios.Turma);
                ColocarDadosTabela();
            }
            catch (Exception ex)
            {
                frmAvisoErroAdicionar frmAvisoErro = new frmAvisoErroAdicionar();
                frmAvisoErro.ShowDialog();
                return;
            }
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog CaixaCaminho = new FolderBrowserDialog();
            CaixaCaminho.ShowDialog();
            string caminho = CaixaCaminho.SelectedPath;

            Excel excel = new Excel();
            excel.SalvarDgvEmExcel(dgvTrumas, caminho + @"\turmas.xlsx");
        }

        private void btnPesquisa_Click(object sender, EventArgs e)
        {
            if (cmbTipoEnsino.SelectedItem.ToString() == "Todos" & cmbInstituicao.SelectedItem.ToString() == "Todos")
            {
                foreach (DataGridViewRow linha in dgvTrumas.Rows)
                {
                    linha.Visible = true;
                }
            }

            if (String.IsNullOrEmpty(txtPesquisa.Text))
            {
                foreach (DataGridViewRow linha in dgvTrumas.Rows)
                {
                    linha.Visible = true;
                }
                return;
            }


            foreach (DataGridViewRow linha in dgvTrumas.Rows)
            {
                if (!linha.IsNewRow)
                {
                    int cont = 0;
                    foreach (DataGridViewCell Celula in linha.Cells)
                    {
                        if (!Celula.Value.ToString().ToLower().Contains(txtPesquisa.Text.ToLower()))
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
    }
}

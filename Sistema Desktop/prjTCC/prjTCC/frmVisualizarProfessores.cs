using Aspose.Cells;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.Windows.Forms;

namespace prjTCC
{
    public partial class frmVisualizarProfessores : Form
    {
        string emailEscola = null;

        public frmVisualizarProfessores(string email)
        {
            InitializeComponent();
            emailEscola = email;
        }

        public frmVisualizarProfessores()
        {
            InitializeComponent();
        }

        int n = 0;

        bool foi = false;

        private void CellDoubleClick(Object sender, DataGridViewCellEventArgs e)
        {
            frmEditarProfessor frmEditar = new frmEditarProfessor(dgvProfessores.Rows.SharedRow(e.RowIndex));
            frmEditar.Show();
            this.Hide();
            frmEditar.FormClosed += (s, args) => this.ColocarDadosTabela();
            frmEditar.FormClosed += (s, args) => this.Show();
            FiltrarProfessores();
        }

        private void pEBIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarProfessoresPEBI frmVisualizarProfessoresPEBI = new frmVisualizarProfessoresPEBI();
            frmVisualizarProfessoresPEBI.Show();

            this.Hide();
            frmVisualizarProfessoresPEBI.FormClosed += (s, args) => this.Show();

            n = n + 1;

            if (n != 0)
            {
                lblTitulo.Text = "Professores";
            }
            else
            {
                lblTitulo.Text = "Professores - Afastados";
            }
        }

        private void pEBIIIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarProfessoresPEBIII frmVisualizarProfessoresPEBIII = new frmVisualizarProfessoresPEBIII();
            frmVisualizarProfessoresPEBIII.Show();

            this.Hide();
            frmVisualizarProfessoresPEBIII.FormClosed += (s, args) => this.Show();

            n = n + 1;

            if (n != 0)
            {
                lblTitulo.Text = "Professores";
            }
            else
            {
                lblTitulo.Text = "Professores - Afastados";
            }
        }

        private void pEEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarProfessoresPEE frmVisualizarProfessoresPEE = new frmVisualizarProfessoresPEE();
            frmVisualizarProfessoresPEE.Show();

            this.Hide();
            frmVisualizarProfessoresPEE.FormClosed += (s, args) => this.Show();

            n = n + 1;
        }

        private void afastadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            lblTitulo.Text = "Professores - Afastados";
            n = 0;

            foreach (DataGridViewRow linha in dgvProfessores.Rows)
            {
                linha.Visible = true;
            }

            foreach (DataGridViewRow linha in dgvProfessores.Rows)
            {
                if (!linha.IsNewRow)
                {
                   if (linha.Cells[8].Value.ToString() == "professor")
                      linha.Visible = false;

                }
            }
        }

        private void frmVisualizarProfessores_Load(object sender, EventArgs e)
        {
            lblTitulo.Text = "Professores";
            n = 0;

            ColocarDadosTabela();

            Disciplinas disciplinas = new Disciplinas();
            List<Disciplina> Lista = disciplinas.Listar();

            cmbDisciplina.Items.Add("Todos");
            cmbDisciplina.SelectedItem = "Todos";
            foreach (Disciplina disciplina in Lista)
            {
                cmbDisciplina.Items.Add(disciplina.Sigla);
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

            FiltrarProfessores();
        }

        private void ColocarDadosTabela()
        {
            Professores professores = new Professores();
            EscolaProfessores escolaProfessores = new EscolaProfessores();

            List<Professor> ListaProfessores = new List<Professor>();
            ListaProfessores = professores.BuscarProfessores();

            dgvProfessores.Rows.Clear();

            int cont = 0;

            foreach (Professor professor in ListaProfessores)
            {
                List<EscolaProfessor> ListaEscolaProfessor = escolaProfessores.BuscarEscolasProfessor(professor.Codigo);
                DataGridViewRow linha = (DataGridViewRow)dgvProfessores.Rows[0].Clone();
                linha.Cells[0].Value = professor.Codigo;
                linha.Cells[1].Value = professor.Email;
                linha.Cells[2].Value = professor.Nome;
                linha.Cells[3].Value = professor.QuantidadeFilhos;
                linha.Cells[4].Value = professor.DataNascimento;
                linha.Cells[5].Value = professor.DataEntrada;
                linha.Cells[6].Value = professor.QuantidadePontuacao;
                linha.Cells[7].Value = professor.Numero;
                linha.Cells[8].Value = professor.Situacao;
                linha.Cells[9].Value = professor.Disciplina;
                linha.Cells[10].Value = Enum.GetName(typeof(ETipoEnsino), professor.TipoEnsino);
                linha.Cells[11].Value = ListaEscolaProfessor.Exists(ep => ep.Sede = true) ? ListaEscolaProfessor.Find(ep => ep.Sede = true).Instituicao.Nome : "Não está inscrito";
                linha.Cells[12].Value = ListaEscolaProfessor.Exists(ep => ep.Sede = false) ? ListaEscolaProfessor.Find(ep => ep.Sede = false).Instituicao.Nome : "Não está inscrito";
                dgvProfessores.Rows.Add(linha);
            }
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog CaixaCaminho = new FolderBrowserDialog();
            CaixaCaminho.ShowDialog();
            string caminho = CaixaCaminho.SelectedPath;

            Excel excel = new Excel();
            excel.SalvarDgvEmExcel(dgvProfessores, caminho + @"\Professores.xlsx");
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
                excel.Importar(caminho,ETipoUsuarios.Professor);
                ColocarDadosTabela();
            }
            catch(Exception ex)
            {
                frmAvisoErroAdicionar frmAvisoErro = new frmAvisoErroAdicionar();
                frmAvisoErro.ShowDialog();
                return;
            }
        }

        private void cmbDisciplina_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarProfessores();
        }

        private void cmbInstituicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarProfessores();
        }

        public void FiltrarProfessores()
        {
            if (emailEscola == null)
            {
                if (foi == true)
                {
                    foreach (DataGridViewRow linha in dgvProfessores.Rows)
                    {
                        linha.Visible = true;
                    }

                    foreach (DataGridViewRow linha in dgvProfessores.Rows)
                    {
                        if (!linha.IsNewRow)
                        {
                            if (cmbDisciplina.SelectedItem.ToString() != "Todos")
                                if (linha.Cells[9].Value.ToString() != cmbDisciplina.SelectedItem.ToString())
                                    linha.Visible = false;

                            if (cmbInstituicao.SelectedItem.ToString() != "Todos")
                                if (linha.Cells[11].Value.ToString() != cmbInstituicao.SelectedItem.ToString() && linha.Cells[12].Value.ToString() != cmbInstituicao.SelectedItem.ToString())
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
                    foreach (DataGridViewRow linha in dgvProfessores.Rows)
                    {
                        linha.Visible = true;
                    }

                    foreach (DataGridViewRow linha in dgvProfessores.Rows)
                    {
                        if (!linha.IsNewRow)
                        {
                            if (cmbDisciplina.SelectedItem.ToString() != "Todos")
                                if (linha.Cells[9].Value.ToString() != cmbDisciplina.SelectedItem.ToString())
                                    linha.Visible = false;

                            Instituicoes instituicoes = new Instituicoes();

                            Instituicao instituicao = instituicoes.Buscar(emailEscola);

                            if (linha.Cells[11].Value.ToString() != instituicao.Nome && linha.Cells[12].Value.ToString() != instituicao.Nome)
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

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            frmAdicionarProfessor frmAdicionarProfessor = new frmAdicionarProfessor();

            frmAdicionarProfessor.Show();
            this.Hide();
            frmAdicionarProfessor.FormClosed += (s, args) => this.Show();
            frmAdicionarProfessor.FormClosed += (s, args) => this.ColocarDadosTabela();
            FiltrarProfessores();
        }

        private void btnPesquisa_Click(object sender, EventArgs e)
        {
            if(cmbDisciplina.SelectedItem.ToString() == "Todos"  & cmbInstituicao.SelectedItem.ToString() == "Todos")
            {
                foreach (DataGridViewRow linha in dgvProfessores.Rows)
                {
                    linha.Visible = true;
                }
            }

            if (String.IsNullOrEmpty(txtPesquisa.Text))
            {
                foreach (DataGridViewRow linha in dgvProfessores.Rows)
                {
                    linha.Visible = true;
                }
                return;
            }


            foreach (DataGridViewRow linha in dgvProfessores.Rows)
            {
                if (!linha.IsNewRow)
                {
                    if(linha.Visible == true)
                    {
                        int cont = 0;
                        foreach (DataGridViewCell Celula in linha.Cells)
                        {
                            if (!(Celula.Value.ToString().ToLower().Contains(txtPesquisa.Text.ToString().ToLower())))
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
}

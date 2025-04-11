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
    public partial class frmVisualizarProfessoresPEE : Form
    {
        public frmVisualizarProfessoresPEE()
        {
            InitializeComponent();
        }

        bool foi = false;

        private void frmVisualizarProfessoresPEE_Load(object sender, EventArgs e)
        {
            ColocarDadosTabela();

            Instituicoes instituicoes = new Instituicoes();
            List<Instituicao> ListaInstituicao = instituicoes.Listar();
            cmbInstituicao.Items.Add("Todos");
            cmbInstituicao.SelectedIndex = 0;
            foreach (Instituicao Instituicao in ListaInstituicao)
            {
                cmbInstituicao.Items.Add(Instituicao.Nome);
            }
        }

        private void ColocarDadosTabela()
        {
            Professores professores = new Professores();
            EscolaProfessores escolaProfessores = new EscolaProfessores();

            List<Professor> ListaProfessores = new List<Professor>();
            ListaProfessores = professores.BuscarProfessores(ETipoEnsino.PEE);

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

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            frmAdicionarProfessor frmAdicionarProfessor = new frmAdicionarProfessor();
            frmAdicionarProfessor.Show();

            this.Hide();
            frmAdicionarProfessor.FormClosed += (s, args) => this.Show();
        }

        private void dgvProfessores_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            frmEditarProfessor frmEditar = new frmEditarProfessor(dgvProfessores.Rows.SharedRow(e.RowIndex));
            frmEditar.Show();
            this.Hide();
            frmEditar.FormClosed += (s, args) => this.ColocarDadosTabela();
            frmEditar.FormClosed += (s, args) => this.Show();
        }

        private void rjButton3_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog CaixaCaminho = new FolderBrowserDialog();
            CaixaCaminho.ShowDialog();
            string caminho = CaixaCaminho.SelectedPath;

            Excel excel = new Excel();
            excel.SalvarDgvEmExcel(dgvProfessores, caminho + @"\Professores.xlsx");
        }

        public void FiltrarProfessores()
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

        private void cmbInstituicao_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarProfessores();
        }

        private void btnPesquisa_Click(object sender, EventArgs e)
        {
            if (cmbInstituicao.SelectedItem.ToString() == "Todos")
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
                    int cont = 0;
                    foreach (DataGridViewCell Celula in linha.Cells)
                    {
                        if (!Celula.Value.ToString().Contains(txtPesquisa.Text))
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

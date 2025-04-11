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
    public partial class frmVisualizarInstituições : Form
    {
        public frmVisualizarInstituições()
        {
            InitializeComponent();
            
        }

        private void btnAdicionarInstituição_Click(object sender, EventArgs e)
        {
            frmAdicionarInstituição frmAdicionar = new frmAdicionarInstituição();
            frmAdicionar.Show();

            this.Hide();
            frmAdicionar.FormClosed += (s, args) => this.Show();
        }

        private void frmVisualizarInstituições_Load(object sender, EventArgs e)
        {
            ColocarDadosTabela();
        }

        private void ColocarDadosTabela()
        {
            dgvInstituicoes.Rows.Clear();

            Instituicoes instituicoes = new Instituicoes();
            List<Instituicao> Listainstituicoes = instituicoes.Listar();

            int cont = 0;

            foreach (Instituicao instituicao in Listainstituicoes)
            {
                DataGridViewRow linha = (DataGridViewRow)dgvInstituicoes.Rows[0].Clone();
                linha.Cells[0].Value = instituicao.Email;
                linha.Cells[1].Value = instituicao.Nome;
                linha.Cells[2].Value = instituicao.Telefone;
                dgvInstituicoes.Rows.Add(linha);
            }
        }

        private void btnExporta_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog CaixaCaminho = new FolderBrowserDialog();
            CaixaCaminho.ShowDialog();
            string caminho = CaixaCaminho.SelectedPath;

            Excel excel = new Excel();
            excel.SalvarDgvEmExcel(dgvInstituicoes, caminho + @"\Instituicoes.xlsx");
        }

        private void btnPesquisa_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow linha in dgvInstituicoes.Rows)
            {
                linha.Visible = true;
            }

            if (String.IsNullOrEmpty(txtPesquisa.Text))
            {
                foreach (DataGridViewRow linha in dgvInstituicoes.Rows)
                {
                    linha.Visible = true;
                }
                return;
            }


            foreach (DataGridViewRow linha in dgvInstituicoes.Rows)
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
                }
            }
        }

        private void dgvInstituicoes_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            frmEditarInstituição frmEditar = new frmEditarInstituição(dgvInstituicoes.Rows.SharedRow(e.RowIndex));
            frmEditar.Show();
            this.Hide();
            frmEditar.FormClosed += (s, args) => this.ColocarDadosTabela();
            frmEditar.FormClosed += (s, args) => this.Show();
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
                excel.Importar(caminho, ETipoUsuarios.Instituicao);
                ColocarDadosTabela();
            }
            catch (Exception ex)
            {
                frmAvisoErroAdicionar frmAvisoErro = new frmAvisoErroAdicionar();
                frmAvisoErro.ShowDialog();
                return;
            }
        }
    }
}

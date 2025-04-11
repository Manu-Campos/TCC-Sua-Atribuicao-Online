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
    public partial class frmVisualizarDiretores : Form
    {
        public frmVisualizarDiretores()
        {
            InitializeComponent();
            
        }

        private void frmVisualizarDiretores_Load(object sender, EventArgs e)
        {
            Instituicoes instituicoes = new Instituicoes();
            List<Instituicao> ListaInstituicao = instituicoes.Listar();
            cmbInstituição.Items.Add("Todos");
            cmbInstituição.SelectedItem = "Todos";
            foreach (Instituicao Instituicao in ListaInstituicao)
            {
                cmbInstituição.Items.Add(Instituicao.Nome);
            }
            

            ColocarDadosTabela();
        }

        private void ColocarDadosTabela()
        {

            dgvDiretores.Rows.Clear();

            Diretores diretores = new Diretores();

            List<Diretor> ListaDiretores = diretores.BuscarDiretores();

            foreach (Diretor Diretor in ListaDiretores)
            {
                string DataFim = Diretor.DataFimAtividade.ToString();
                DataGridViewRow linha = (DataGridViewRow)dgvDiretores.Rows[0].Clone();
                linha.Cells[0].Value = Diretor.Professor.Codigo;
                linha.Cells[1].Value = Diretor.Professor.Nome;
                linha.Cells[2].Value = Diretor.Instituicao.Nome;
                linha.Cells[3].Value = Diretor.DataInicioAtividade.ToString();
                linha.Cells[4].Value = DataFim;
                linha.Cells[5].Value = Diretor.Instituicao.Email;

                dgvDiretores.Rows.Add(linha);
            }
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            frmAdicionarDiretor frmAdicionar = new frmAdicionarDiretor();
            frmAdicionar.Show();
            this.Hide();
            frmAdicionar.FormClosed += (s, args) => this.ColocarDadosTabela();
            frmAdicionar.FormClosed += (s, args) => this.Show();
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
                excel.Importar(caminho, ETipoUsuarios.Diretor);
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
            excel.SalvarDgvEmExcel(dgvDiretores, caminho + @"\Diretores.xlsx");
        }

        private void btnPesquisa_Click(object sender, EventArgs e)
        {
            if (cmbInstituição.SelectedItem.ToString() == "Todos")
            {
                foreach (DataGridViewRow linha in dgvDiretores.Rows)
                {
                    linha.Visible = true;
                }
            }

            if (String.IsNullOrEmpty(txtPesquisa.Text))
            {
                foreach (DataGridViewRow linha in dgvDiretores.Rows)
                {
                    linha.Visible = true;
                }
                return;
            }


            foreach (DataGridViewRow linha in dgvDiretores.Rows)
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

        private void dgvDiretores_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                frmEditarDiretor frmEditar = new frmEditarDiretor(dgvDiretores.Rows.SharedRow(e.RowIndex));
                frmEditar.Show();
                this.Hide();
                frmEditar.FormClosed += (s, args) => this.ColocarDadosTabela();
                frmEditar.FormClosed += (s, args) => this.Show();
            }
            catch
            {
                return;
            }
        }

        private void cmbInstituição_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //public void FiltrarProfessores()
        //{
        //    if (foi == true)
        //    {
        //        foreach (DataGridViewRow linha in dgvDiretores.Rows)
        //        {
        //            linha.Visible = true;
        //        }

        //        foreach (DataGridViewRow linha in dgvDiretores.Rows)
        //        {
        //            if (!linha.IsNewRow)
        //            {
        //                if (cmbInstituição.SelectedItem.ToString() != "Todos")
        //                    if (linha.Cells[2].Value.ToString() != cmbInstituição.SelectedItem.ToString())
        //                        linha.Visible = false;
        //            }
        //        }
        //    }
        //    else
        //    {
        //        foi = true;
        //    }
        //}
    }
}

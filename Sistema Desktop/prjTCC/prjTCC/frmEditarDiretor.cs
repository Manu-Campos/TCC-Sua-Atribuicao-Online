using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prjTCC
{
    public partial class frmEditarDiretor : Form
    {
        public frmEditarDiretor(DataGridViewRow linha)
        {
            InitializeComponent();
            Codigo = linha.Cells[0].Value.ToString();
            Nome = linha.Cells[2].Value.ToString();
            DataInicio = DateTime.Parse(linha.Cells[3].Value.ToString());
            DataFim = DateTime.Parse(linha.Cells[4].Value.ToString());
            EmailInstituicao = linha.Cells[5].Value.ToString();
        }

        string Nome = "";
        string EmailInstituicao = "";
        string Codigo = "";
        DateTime DataInicio = DateTime.Now;
        DateTime DataFim = DateTime.Now;

        Instituicao instituicaoEscolhida = new Instituicao();
        List<Instituicao> ListaInstituicao = new List<Instituicao>();

        private void frmEditarDiretor_Load(object sender, EventArgs e)
        {
            Instituicoes instituicoes = new Instituicoes();
            ListaInstituicao = instituicoes.Listar();
            foreach (Instituicao Instituicao in ListaInstituicao)
            {
                cmbEscola.Items.Add(Instituicao.Nome);
            }

            cmbEscola.SelectedIndex = 0;

            Professores professores = new Professores();
            List<Professor> Lista = professores.BuscarProfessores();
            foreach (Professor Professor in Lista)
            {
                cmbCodigo.Items.Add(Professor.Codigo);
            }

            cmbEscola.SelectedValue = Nome;
            cmbCodigo.SelectedItem = int.Parse(Codigo);
            dtpInicio.Value = DataInicio;
            dtpFim.Value = DataFim;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            if (cmbCodigo.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbCodigo.Focus();
                return;
            }

            if (cmbEscola.SelectedIndex == -1)
            {
                frmAvisoPreencher frmAvisoPreencher = new frmAvisoPreencher();
                frmAvisoPreencher.ShowDialog();
                cmbEscola.Focus();
                return;
            }

            try
            {
                Diretores diretores = new Diretores();
                Diretor diretor = new Diretor();

                diretor.Professor.Codigo = int.Parse(Codigo);
                diretor.Professor.Nome = Nome;
                diretor.DataInicioAtividade = dtpInicio.Value.Date;
                diretor.Instituicao.Email = EmailInstituicao;
                diretor.DataFimAtividade = dtpFim.Value.Date;

                diretores.Editar(diretor);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Diretor editado com sucesso!");
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

        private void cmbEscola_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (Instituicao instituicao in ListaInstituicao)
            {
                if (instituicao.Nome == cmbEscola.SelectedItem.ToString())
                    instituicaoEscolhida = instituicao;
            }
        }

        private void cmbCodigo_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<EscolaProfessor> ListaEscolasProfessor = new List<EscolaProfessor>();

            EscolaProfessores escolaProfessores = new EscolaProfessores();

            ListaEscolasProfessor.AddRange(escolaProfessores.BuscarEscolasProfessor(int.Parse(cmbCodigo.SelectedItem.ToString())));

            cmbEscola.Items.Clear();

            foreach (EscolaProfessor EscolaProfessor in ListaEscolasProfessor)
            {
                cmbEscola.Items.Add(EscolaProfessor.Instituicao.Nome);
            }
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

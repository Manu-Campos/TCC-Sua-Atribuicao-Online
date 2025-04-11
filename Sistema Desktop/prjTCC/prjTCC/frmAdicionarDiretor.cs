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
    public partial class frmAdicionarDiretor : Form
    {
        public frmAdicionarDiretor()
        {
            InitializeComponent();
        }

        int n = 0;

        Instituicao instituicaoEscolhida = new Instituicao();
        List<Instituicao> ListaInstituicao = new List<Instituicao>();

        private void frmAdicionarDiretor_Load(object sender, EventArgs e)
        {
             n = 0;

            Instituicoes instituicoes = new Instituicoes();
            ListaInstituicao = instituicoes.Listar();
            foreach (Instituicao Instituicao in ListaInstituicao)
            {
                cmbEscola.Items.Add(Instituicao.Nome);
            }

            cmbEscola.SelectedIndex = 1;

            Professores professores = new Professores();
            List<Professor> Lista = professores.BuscarProfessores();
            foreach (Professor Professor in Lista)
            {
                cmbCodigo.Items.Add(Professor.Codigo);
            }
            cmbCodigo.SelectedIndex = 0;
        }

        private void dtpInicio_ValueChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void btnVolta_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
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
                Diretor Diretor = new Diretor();

                Diretor.Professor.Codigo = (int)cmbCodigo.SelectedItem;
                Diretor.Instituicao = instituicaoEscolhida;
                Diretor.DataInicioAtividade = dtpInicio.Value;
                Diretor.DataFimAtividade = dtpFim.Value;

                Diretores diretores = new Diretores();
                diretores.Adicionar(Diretor);

                frmAvisoCorreto frmAvisoCorreto = new frmAvisoCorreto();
                frmAvisoCorreto.AlterarTextoLabel("Diretor adicionada com sucesso!");
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

        private void frmAdicionarDiretor_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;

            if (cmbEscola.Text != "" || cmbCodigo.Text != "" )
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

        private void cmbEscola_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (Instituicao instituicao in ListaInstituicao)
            {
                if (instituicao.Nome == cmbEscola.SelectedItem.ToString())
                    instituicaoEscolhida = instituicao;
            }

            n = 1;
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

            n = 1;
        }

        private void dtpFim_ValueChanged(object sender, EventArgs e)
        {
            n = 1;
        }

        private void KeyDown_Enter(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnAdicionar_Click(sender, e);
            }
        }
    }
}

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
    public partial class frmInicialAtribuidor : Form
    {
        public frmInicialAtribuidor()
        {
            InitializeComponent();
            
        }

        private void frmSuaAtribuicao_FormClosing(object sender, FormClosingEventArgs e)
        {
            e.Cancel = true;

            using (frmAvisoFechar frmAvisoFechar = new frmAvisoFechar())
            {
                DialogResult result = frmAvisoFechar.ShowDialog();

                if (result == DialogResult.Yes)
                {
                    e.Cancel = false;
                }
            }
        }

        private void professoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarProfessores frmVisualizarProfessores = new frmVisualizarProfessores();

            frmVisualizarProfessores.Show();
            this.Hide();
            frmVisualizarProfessores.FormClosed += (s, args) => this.Show();
        }

        private void instituiçõesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarInstituições frmVisualizarInstituições = new frmVisualizarInstituições();

            frmVisualizarInstituições.Show();
            this.Hide();
            frmVisualizarInstituições.FormClosed += (s, args) => this.Show();
        }

        private void diretoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarDiretores frmVisualizarDiretores = new frmVisualizarDiretores();

            frmVisualizarDiretores.Show();
            this.Hide();
            frmVisualizarDiretores.FormClosed += (s, args) => this.Show();
        }

        private void supervisoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarSupervisores frmVisualizarSupervisores = new frmVisualizarSupervisores();

            frmVisualizarSupervisores.Show();
            this.Hide();
            frmVisualizarSupervisores.FormClosed += (s, args) => this.Show();
        }

        private void turmasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarTurmas frmVisualizarTurmas = new frmVisualizarTurmas();

            frmVisualizarTurmas.Show();
            this.Hide();
            frmVisualizarTurmas.FormClosed += (s, args) => this.Show();
        }
    }
}

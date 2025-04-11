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
    public partial class frmInicialInstituição : Form
    {
        public frmInicialInstituição()
        {
            InitializeComponent();
           
        }

        string emailEscola = "";

        public frmInicialInstituição(string email)
        {
            InitializeComponent();
            emailEscola = email;
        }


        private void frmInicialInstituição_FormClosing(object sender, FormClosingEventArgs e)
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
            frmVisualizarProfessores frmVisualizarProfessores = new frmVisualizarProfessores(emailEscola);

            frmVisualizarProfessores.Show();
            this.Hide();
            frmVisualizarProfessores.FormClosed += (s, args) => this.Show();
        }

        private void turmasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmVisualizarTurmas frmVisualizarTurmas = new frmVisualizarTurmas(emailEscola);

            frmVisualizarTurmas.Show();
            this.Hide();
            frmVisualizarTurmas.FormClosed += (s, args) => this.Show();
        }

        private void frmInicialInstituição_Load(object sender, EventArgs e)
        {

        }
    }
}

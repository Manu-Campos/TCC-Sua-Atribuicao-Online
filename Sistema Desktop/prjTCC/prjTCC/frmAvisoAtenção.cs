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
    public partial class frmAvisoAtenção : Form
    {
        public frmAvisoAtenção()
        {
            InitializeComponent();
        }

        private void frmAvisoAtenção_Load(object sender, EventArgs e)
        {
            //PrivateFontCollection gilroy = new PrivateFontCollection();
            //gilroy.AddFontFile(@"../../Fontes/Gilroy-Regular.ttf");
            //foreach (Control c in this.Controls)
            //{
            //    c.Font = new Font(gilroy.Families[0], 9, FontStyle.Regular);
            //}
        }

        public void AlterarTextoLabel(string novoTexto)
        {
            lblAviso.Text = novoTexto;
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

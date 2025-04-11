namespace prjTCC
{
    partial class frmVisualizarProfessores
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmVisualizarProfessores));
            this.dgvProfessores = new System.Windows.Forms.DataGridView();
            this.ColCodigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColEmail = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColNome = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColQtFilhos = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColDtNascimento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColDtEntrada = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColqtPontuacao = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColTelefone = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColCargo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColDisciplina = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColTipoEnsino = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColEscolaSede = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColEscolaSecundaria = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtPesquisa = new System.Windows.Forms.TextBox();
            this.btnPesquisa = new System.Windows.Forms.Button();
            this.cmbInstituicao = new System.Windows.Forms.ComboBox();
            this.cmbDisciplina = new System.Windows.Forms.ComboBox();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.lblSubtitulo = new System.Windows.Forms.Label();
            this.menuProfessores = new System.Windows.Forms.MenuStrip();
            this.pEBIToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pEBIIIToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pEEToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.afastadosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnExportar = new CustomControls.RJControls.RJButton();
            this.btnAdicionar = new CustomControls.RJControls.RJButton();
            this.btnImportar = new CustomControls.RJControls.RJButton();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProfessores)).BeginInit();
            this.menuProfessores.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvProfessores
            // 
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvProfessores.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvProfessores.BackgroundColor = System.Drawing.Color.White;
            this.dgvProfessores.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableWithoutHeaderText;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvProfessores.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvProfessores.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProfessores.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ColCodigo,
            this.ColEmail,
            this.ColNome,
            this.ColQtFilhos,
            this.ColDtNascimento,
            this.ColDtEntrada,
            this.ColqtPontuacao,
            this.ColTelefone,
            this.ColCargo,
            this.ColDisciplina,
            this.ColTipoEnsino,
            this.ColEscolaSede,
            this.ColEscolaSecundaria});
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvProfessores.DefaultCellStyle = dataGridViewCellStyle3;
            this.dgvProfessores.Location = new System.Drawing.Point(12, 208);
            this.dgvProfessores.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvProfessores.Name = "dgvProfessores";
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvProfessores.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dgvProfessores.RowHeadersWidth = 51;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvProfessores.RowsDefaultCellStyle = dataGridViewCellStyle5;
            this.dgvProfessores.RowTemplate.Height = 24;
            this.dgvProfessores.Size = new System.Drawing.Size(871, 438);
            this.dgvProfessores.TabIndex = 0;
            this.dgvProfessores.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.CellDoubleClick);
            // 
            // ColCodigo
            // 
            this.ColCodigo.HeaderText = "Codigo";
            this.ColCodigo.Name = "ColCodigo";
            // 
            // ColEmail
            // 
            this.ColEmail.HeaderText = "Email";
            this.ColEmail.Name = "ColEmail";
            // 
            // ColNome
            // 
            this.ColNome.HeaderText = "Nome";
            this.ColNome.Name = "ColNome";
            this.ColNome.ReadOnly = true;
            // 
            // ColQtFilhos
            // 
            this.ColQtFilhos.HeaderText = "Quant.Filhos";
            this.ColQtFilhos.Name = "ColQtFilhos";
            this.ColQtFilhos.ReadOnly = true;
            // 
            // ColDtNascimento
            // 
            this.ColDtNascimento.HeaderText = "Data Nasc.";
            this.ColDtNascimento.Name = "ColDtNascimento";
            this.ColDtNascimento.ReadOnly = true;
            // 
            // ColDtEntrada
            // 
            this.ColDtEntrada.HeaderText = "Data Entrada";
            this.ColDtEntrada.Name = "ColDtEntrada";
            this.ColDtEntrada.ReadOnly = true;
            // 
            // ColqtPontuacao
            // 
            this.ColqtPontuacao.HeaderText = "Quant. Pontuação";
            this.ColqtPontuacao.Name = "ColqtPontuacao";
            this.ColqtPontuacao.ReadOnly = true;
            // 
            // ColTelefone
            // 
            this.ColTelefone.HeaderText = "Telefone";
            this.ColTelefone.Name = "ColTelefone";
            this.ColTelefone.ReadOnly = true;
            // 
            // ColCargo
            // 
            this.ColCargo.HeaderText = "Cargo";
            this.ColCargo.Name = "ColCargo";
            this.ColCargo.ReadOnly = true;
            // 
            // ColDisciplina
            // 
            this.ColDisciplina.HeaderText = "Disciplina";
            this.ColDisciplina.Name = "ColDisciplina";
            this.ColDisciplina.ReadOnly = true;
            // 
            // ColTipoEnsino
            // 
            this.ColTipoEnsino.HeaderText = "Tipo Ensino";
            this.ColTipoEnsino.Name = "ColTipoEnsino";
            this.ColTipoEnsino.ReadOnly = true;
            // 
            // ColEscolaSede
            // 
            this.ColEscolaSede.HeaderText = "Escola Sede";
            this.ColEscolaSede.Name = "ColEscolaSede";
            // 
            // ColEscolaSecundaria
            // 
            this.ColEscolaSecundaria.HeaderText = "Escola Secundaria";
            this.ColEscolaSecundaria.Name = "ColEscolaSecundaria";
            // 
            // txtPesquisa
            // 
            this.txtPesquisa.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPesquisa.Location = new System.Drawing.Point(12, 155);
            this.txtPesquisa.Multiline = true;
            this.txtPesquisa.Name = "txtPesquisa";
            this.txtPesquisa.Size = new System.Drawing.Size(332, 30);
            this.txtPesquisa.TabIndex = 1;
            // 
            // btnPesquisa
            // 
            this.btnPesquisa.Image = ((System.Drawing.Image)(resources.GetObject("btnPesquisa.Image")));
            this.btnPesquisa.Location = new System.Drawing.Point(350, 155);
            this.btnPesquisa.Name = "btnPesquisa";
            this.btnPesquisa.Size = new System.Drawing.Size(46, 30);
            this.btnPesquisa.TabIndex = 2;
            this.btnPesquisa.UseVisualStyleBackColor = true;
            this.btnPesquisa.Click += new System.EventHandler(this.btnPesquisa_Click);
            // 
            // cmbInstituicao
            // 
            this.cmbInstituicao.Font = new System.Drawing.Font("Century Gothic", 12F);
            this.cmbInstituicao.FormattingEnabled = true;
            this.cmbInstituicao.Location = new System.Drawing.Point(527, 156);
            this.cmbInstituicao.Name = "cmbInstituicao";
            this.cmbInstituicao.Size = new System.Drawing.Size(194, 29);
            this.cmbInstituicao.TabIndex = 4;
            this.cmbInstituicao.SelectedIndexChanged += new System.EventHandler(this.cmbInstituicao_SelectedIndexChanged);
            // 
            // cmbDisciplina
            // 
            this.cmbDisciplina.Font = new System.Drawing.Font("Century Gothic", 12F);
            this.cmbDisciplina.FormattingEnabled = true;
            this.cmbDisciplina.Location = new System.Drawing.Point(727, 155);
            this.cmbDisciplina.Name = "cmbDisciplina";
            this.cmbDisciplina.Size = new System.Drawing.Size(156, 29);
            this.cmbDisciplina.TabIndex = 5;
            this.cmbDisciplina.SelectedIndexChanged += new System.EventHandler(this.cmbDisciplina_SelectedIndexChanged);
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Century Gothic", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.Location = new System.Drawing.Point(12, 65);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(141, 28);
            this.lblTitulo.TabIndex = 6;
            this.lblTitulo.Text = "Professores";
            // 
            // lblSubtitulo
            // 
            this.lblSubtitulo.AutoSize = true;
            this.lblSubtitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSubtitulo.Location = new System.Drawing.Point(15, 113);
            this.lblSubtitulo.Name = "lblSubtitulo";
            this.lblSubtitulo.Size = new System.Drawing.Size(56, 24);
            this.lblSubtitulo.TabIndex = 7;
            this.lblSubtitulo.Text = "Filtrar";
            // 
            // menuProfessores
            // 
            this.menuProfessores.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(29)))), ((int)(((byte)(68)))));
            this.menuProfessores.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuProfessores.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuProfessores.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.pEBIToolStripMenuItem,
            this.pEBIIIToolStripMenuItem,
            this.pEEToolStripMenuItem,
            this.afastadosToolStripMenuItem});
            this.menuProfessores.Location = new System.Drawing.Point(0, 0);
            this.menuProfessores.Name = "menuProfessores";
            this.menuProfessores.Size = new System.Drawing.Size(895, 29);
            this.menuProfessores.TabIndex = 9;
            this.menuProfessores.Text = "menuProfessores";
            // 
            // pEBIToolStripMenuItem
            // 
            this.pEBIToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.pEBIToolStripMenuItem.Name = "pEBIToolStripMenuItem";
            this.pEBIToolStripMenuItem.Size = new System.Drawing.Size(58, 25);
            this.pEBIToolStripMenuItem.Text = "PEB I";
            this.pEBIToolStripMenuItem.Click += new System.EventHandler(this.pEBIToolStripMenuItem_Click);
            // 
            // pEBIIIToolStripMenuItem
            // 
            this.pEBIIIToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.pEBIIIToolStripMenuItem.Name = "pEBIIIToolStripMenuItem";
            this.pEBIIIToolStripMenuItem.Size = new System.Drawing.Size(68, 25);
            this.pEBIIIToolStripMenuItem.Text = "PEB III";
            this.pEBIIIToolStripMenuItem.Click += new System.EventHandler(this.pEBIIIToolStripMenuItem_Click);
            // 
            // pEEToolStripMenuItem
            // 
            this.pEEToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.pEEToolStripMenuItem.Name = "pEEToolStripMenuItem";
            this.pEEToolStripMenuItem.Size = new System.Drawing.Size(49, 25);
            this.pEEToolStripMenuItem.Text = "PEE";
            this.pEEToolStripMenuItem.Click += new System.EventHandler(this.pEEToolStripMenuItem_Click);
            // 
            // afastadosToolStripMenuItem
            // 
            this.afastadosToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.afastadosToolStripMenuItem.Name = "afastadosToolStripMenuItem";
            this.afastadosToolStripMenuItem.Size = new System.Drawing.Size(102, 25);
            this.afastadosToolStripMenuItem.Text = "Afastados";
            this.afastadosToolStripMenuItem.Click += new System.EventHandler(this.afastadosToolStripMenuItem_Click);
            // 
            // btnExportar
            // 
            this.btnExportar.BackColor = System.Drawing.SystemColors.Window;
            this.btnExportar.BackgroundColor = System.Drawing.SystemColors.Window;
            this.btnExportar.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.btnExportar.BorderRadius = 10;
            this.btnExportar.BorderSize = 0;
            this.btnExportar.FlatAppearance.BorderSize = 0;
            this.btnExportar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExportar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExportar.ForeColor = System.Drawing.Color.Black;
            this.btnExportar.Image = ((System.Drawing.Image)(resources.GetObject("btnExportar.Image")));
            this.btnExportar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnExportar.Location = new System.Drawing.Point(719, 673);
            this.btnExportar.Name = "btnExportar";
            this.btnExportar.Size = new System.Drawing.Size(164, 37);
            this.btnExportar.TabIndex = 29;
            this.btnExportar.Text = "Exportar Planilha";
            this.btnExportar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExportar.TextColor = System.Drawing.Color.Black;
            this.btnExportar.UseVisualStyleBackColor = false;
            this.btnExportar.Click += new System.EventHandler(this.btnExportar_Click);
            // 
            // btnAdicionar
            // 
            this.btnAdicionar.BackColor = System.Drawing.SystemColors.Window;
            this.btnAdicionar.BackgroundColor = System.Drawing.SystemColors.Window;
            this.btnAdicionar.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.btnAdicionar.BorderRadius = 10;
            this.btnAdicionar.BorderSize = 0;
            this.btnAdicionar.FlatAppearance.BorderSize = 0;
            this.btnAdicionar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAdicionar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAdicionar.ForeColor = System.Drawing.Color.Black;
            this.btnAdicionar.Image = ((System.Drawing.Image)(resources.GetObject("btnAdicionar.Image")));
            this.btnAdicionar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnAdicionar.Location = new System.Drawing.Point(707, 65);
            this.btnAdicionar.Name = "btnAdicionar";
            this.btnAdicionar.Size = new System.Drawing.Size(176, 37);
            this.btnAdicionar.TabIndex = 28;
            this.btnAdicionar.Text = "Adicionar Professor";
            this.btnAdicionar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnAdicionar.TextColor = System.Drawing.Color.Black;
            this.btnAdicionar.UseVisualStyleBackColor = false;
            this.btnAdicionar.Click += new System.EventHandler(this.btnAdicionar_Click);
            // 
            // btnImportar
            // 
            this.btnImportar.BackColor = System.Drawing.SystemColors.Window;
            this.btnImportar.BackgroundColor = System.Drawing.SystemColors.Window;
            this.btnImportar.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.btnImportar.BorderRadius = 10;
            this.btnImportar.BorderSize = 0;
            this.btnImportar.FlatAppearance.BorderSize = 0;
            this.btnImportar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImportar.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImportar.ForeColor = System.Drawing.Color.Black;
            this.btnImportar.Image = ((System.Drawing.Image)(resources.GetObject("btnImportar.Image")));
            this.btnImportar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnImportar.Location = new System.Drawing.Point(537, 65);
            this.btnImportar.Name = "btnImportar";
            this.btnImportar.Size = new System.Drawing.Size(164, 37);
            this.btnImportar.TabIndex = 27;
            this.btnImportar.Text = "Importar Planilha";
            this.btnImportar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnImportar.TextColor = System.Drawing.Color.Black;
            this.btnImportar.UseVisualStyleBackColor = false;
            this.btnImportar.Click += new System.EventHandler(this.btnImportar_Click);
            // 
            // frmVisualizarProfessores
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(895, 732);
            this.Controls.Add(this.btnExportar);
            this.Controls.Add(this.btnAdicionar);
            this.Controls.Add(this.btnImportar);
            this.Controls.Add(this.lblSubtitulo);
            this.Controls.Add(this.lblTitulo);
            this.Controls.Add(this.cmbDisciplina);
            this.Controls.Add(this.cmbInstituicao);
            this.Controls.Add(this.btnPesquisa);
            this.Controls.Add(this.txtPesquisa);
            this.Controls.Add(this.dgvProfessores);
            this.Controls.Add(this.menuProfessores);
            this.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuProfessores;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmVisualizarProfessores";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Visualizar Professores";
            this.Load += new System.EventHandler(this.frmVisualizarProfessores_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvProfessores)).EndInit();
            this.menuProfessores.ResumeLayout(false);
            this.menuProfessores.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvProfessores;
        private System.Windows.Forms.TextBox txtPesquisa;
        private System.Windows.Forms.Button btnPesquisa;
        private System.Windows.Forms.ComboBox cmbInstituicao;
        private System.Windows.Forms.ComboBox cmbDisciplina;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.Label lblSubtitulo;
        private System.Windows.Forms.MenuStrip menuProfessores;
        private System.Windows.Forms.ToolStripMenuItem pEBIToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pEBIIIToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem pEEToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem afastadosToolStripMenuItem;
        private CustomControls.RJControls.RJButton btnExportar;
        private CustomControls.RJControls.RJButton btnAdicionar;
        private CustomControls.RJControls.RJButton btnImportar;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColCodigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColEmail;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColNome;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColQtFilhos;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColDtNascimento;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColDtEntrada;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColqtPontuacao;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColTelefone;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColCargo;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColDisciplina;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColTipoEnsino;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColEscolaSede;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColEscolaSecundaria;
    }
}
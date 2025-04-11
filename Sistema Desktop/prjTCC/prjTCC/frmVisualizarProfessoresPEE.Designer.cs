namespace prjTCC
{
    partial class frmVisualizarProfessoresPEE
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmVisualizarProfessoresPEE));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle13 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle14 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle15 = new System.Windows.Forms.DataGridViewCellStyle();
            this.rjButton3 = new CustomControls.RJControls.RJButton();
            this.btnAdicionar = new CustomControls.RJControls.RJButton();
            this.btnImportar = new CustomControls.RJControls.RJButton();
            this.lblSubtitulo = new System.Windows.Forms.Label();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.cmbInstituicao = new System.Windows.Forms.ComboBox();
            this.btnPesquisa = new System.Windows.Forms.Button();
            this.txtPesquisa = new System.Windows.Forms.TextBox();
            this.menuProfessores = new System.Windows.Forms.MenuStrip();
            this.ativosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.substitutosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
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
            this.menuProfessores.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProfessores)).BeginInit();
            this.SuspendLayout();
            // 
            // rjButton3
            // 
            this.rjButton3.BackColor = System.Drawing.SystemColors.Window;
            this.rjButton3.BackgroundColor = System.Drawing.SystemColors.Window;
            this.rjButton3.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.rjButton3.BorderRadius = 10;
            this.rjButton3.BorderSize = 0;
            this.rjButton3.FlatAppearance.BorderSize = 0;
            this.rjButton3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.rjButton3.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rjButton3.ForeColor = System.Drawing.Color.Black;
            this.rjButton3.Image = ((System.Drawing.Image)(resources.GetObject("rjButton3.Image")));
            this.rjButton3.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.rjButton3.Location = new System.Drawing.Point(719, 675);
            this.rjButton3.Name = "rjButton3";
            this.rjButton3.Size = new System.Drawing.Size(164, 37);
            this.rjButton3.TabIndex = 50;
            this.rjButton3.Text = "Exportar Planilha";
            this.rjButton3.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.rjButton3.TextColor = System.Drawing.Color.Black;
            this.rjButton3.UseVisualStyleBackColor = false;
            this.rjButton3.Click += new System.EventHandler(this.rjButton3_Click);
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
            this.btnAdicionar.Location = new System.Drawing.Point(707, 67);
            this.btnAdicionar.Name = "btnAdicionar";
            this.btnAdicionar.Size = new System.Drawing.Size(176, 37);
            this.btnAdicionar.TabIndex = 49;
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
            this.btnImportar.Location = new System.Drawing.Point(537, 67);
            this.btnImportar.Name = "btnImportar";
            this.btnImportar.Size = new System.Drawing.Size(164, 37);
            this.btnImportar.TabIndex = 48;
            this.btnImportar.Text = "Importar Planilha";
            this.btnImportar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnImportar.TextColor = System.Drawing.Color.Black;
            this.btnImportar.UseVisualStyleBackColor = false;
            // 
            // lblSubtitulo
            // 
            this.lblSubtitulo.AutoSize = true;
            this.lblSubtitulo.Font = new System.Drawing.Font("Century Gothic", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSubtitulo.Location = new System.Drawing.Point(15, 115);
            this.lblSubtitulo.Name = "lblSubtitulo";
            this.lblSubtitulo.Size = new System.Drawing.Size(57, 22);
            this.lblSubtitulo.TabIndex = 47;
            this.lblSubtitulo.Text = "Filtrar";
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Century Gothic", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.Location = new System.Drawing.Point(12, 67);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(202, 28);
            this.lblTitulo.TabIndex = 46;
            this.lblTitulo.Text = "Professores - PEE";
            // 
            // cmbInstituicao
            // 
            this.cmbInstituicao.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbInstituicao.FormattingEnabled = true;
            this.cmbInstituicao.Location = new System.Drawing.Point(689, 159);
            this.cmbInstituicao.Name = "cmbInstituicao";
            this.cmbInstituicao.Size = new System.Drawing.Size(194, 29);
            this.cmbInstituicao.TabIndex = 44;
            this.cmbInstituicao.SelectedIndexChanged += new System.EventHandler(this.cmbInstituicao_SelectedIndexChanged);
            // 
            // btnPesquisa
            // 
            this.btnPesquisa.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPesquisa.Image = ((System.Drawing.Image)(resources.GetObject("btnPesquisa.Image")));
            this.btnPesquisa.Location = new System.Drawing.Point(350, 157);
            this.btnPesquisa.Name = "btnPesquisa";
            this.btnPesquisa.Size = new System.Drawing.Size(46, 30);
            this.btnPesquisa.TabIndex = 42;
            this.btnPesquisa.UseVisualStyleBackColor = true;
            this.btnPesquisa.Click += new System.EventHandler(this.btnPesquisa_Click);
            // 
            // txtPesquisa
            // 
            this.txtPesquisa.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPesquisa.Location = new System.Drawing.Point(12, 157);
            this.txtPesquisa.Multiline = true;
            this.txtPesquisa.Name = "txtPesquisa";
            this.txtPesquisa.Size = new System.Drawing.Size(332, 30);
            this.txtPesquisa.TabIndex = 41;
            // 
            // menuProfessores
            // 
            this.menuProfessores.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(29)))), ((int)(((byte)(68)))));
            this.menuProfessores.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuProfessores.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuProfessores.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ativosToolStripMenuItem,
            this.substitutosToolStripMenuItem});
            this.menuProfessores.Location = new System.Drawing.Point(0, 0);
            this.menuProfessores.Name = "menuProfessores";
            this.menuProfessores.Size = new System.Drawing.Size(895, 29);
            this.menuProfessores.TabIndex = 39;
            this.menuProfessores.Text = "menuProfessores";
            // 
            // ativosToolStripMenuItem
            // 
            this.ativosToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.ativosToolStripMenuItem.Name = "ativosToolStripMenuItem";
            this.ativosToolStripMenuItem.Size = new System.Drawing.Size(71, 25);
            this.ativosToolStripMenuItem.Text = "Ativos";
            // 
            // substitutosToolStripMenuItem
            // 
            this.substitutosToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.substitutosToolStripMenuItem.Name = "substitutosToolStripMenuItem";
            this.substitutosToolStripMenuItem.Size = new System.Drawing.Size(107, 25);
            this.substitutosToolStripMenuItem.Text = "Substitutos";
            // 
            // dgvProfessores
            // 
            dataGridViewCellStyle11.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle11.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle11.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvProfessores.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle11;
            this.dgvProfessores.BackgroundColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle12.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle12.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            dataGridViewCellStyle12.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle12.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle12.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle12.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvProfessores.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle12;
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
            dataGridViewCellStyle13.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle13.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle13.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            dataGridViewCellStyle13.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle13.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle13.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle13.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvProfessores.DefaultCellStyle = dataGridViewCellStyle13;
            this.dgvProfessores.Location = new System.Drawing.Point(12, 211);
            this.dgvProfessores.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvProfessores.Name = "dgvProfessores";
            dataGridViewCellStyle14.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle14.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle14.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            dataGridViewCellStyle14.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle14.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle14.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle14.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvProfessores.RowHeadersDefaultCellStyle = dataGridViewCellStyle14;
            this.dgvProfessores.RowHeadersWidth = 51;
            dataGridViewCellStyle15.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle15.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle15.SelectionForeColor = System.Drawing.Color.Black;
            this.dgvProfessores.RowsDefaultCellStyle = dataGridViewCellStyle15;
            this.dgvProfessores.RowTemplate.Height = 24;
            this.dgvProfessores.Size = new System.Drawing.Size(871, 438);
            this.dgvProfessores.TabIndex = 51;
            this.dgvProfessores.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvProfessores_CellDoubleClick);
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
            // frmVisualizarProfessoresPEE
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(895, 732);
            this.Controls.Add(this.dgvProfessores);
            this.Controls.Add(this.rjButton3);
            this.Controls.Add(this.btnAdicionar);
            this.Controls.Add(this.btnImportar);
            this.Controls.Add(this.lblSubtitulo);
            this.Controls.Add(this.lblTitulo);
            this.Controls.Add(this.cmbInstituicao);
            this.Controls.Add(this.btnPesquisa);
            this.Controls.Add(this.txtPesquisa);
            this.Controls.Add(this.menuProfessores);
            this.Font = new System.Drawing.Font("Century Gothic", 9.75F);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuProfessores;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmVisualizarProfessoresPEE";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Visualizar Professores-PEE";
            this.Load += new System.EventHandler(this.frmVisualizarProfessoresPEE_Load);
            this.menuProfessores.ResumeLayout(false);
            this.menuProfessores.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProfessores)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CustomControls.RJControls.RJButton rjButton3;
        private CustomControls.RJControls.RJButton btnAdicionar;
        private CustomControls.RJControls.RJButton btnImportar;
        private System.Windows.Forms.Label lblSubtitulo;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.ComboBox cmbInstituicao;
        private System.Windows.Forms.Button btnPesquisa;
        private System.Windows.Forms.TextBox txtPesquisa;
        private System.Windows.Forms.MenuStrip menuProfessores;
        private System.Windows.Forms.ToolStripMenuItem ativosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem substitutosToolStripMenuItem;
        private System.Windows.Forms.DataGridView dgvProfessores;
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
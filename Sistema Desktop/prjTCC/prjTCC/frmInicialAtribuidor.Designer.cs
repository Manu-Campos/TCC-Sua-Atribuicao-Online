namespace prjTCC
{
    partial class frmInicialAtribuidor
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmInicialAtribuidor));
            this.menuAtribuidor = new System.Windows.Forms.MenuStrip();
            this.professoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.turmasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.instituiçõesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.diretoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.supervisoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuAtribuidor.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuAtribuidor
            // 
            this.menuAtribuidor.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(3)))), ((int)(((byte)(29)))), ((int)(((byte)(68)))));
            this.menuAtribuidor.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuAtribuidor.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuAtribuidor.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.professoresToolStripMenuItem,
            this.turmasToolStripMenuItem,
            this.instituiçõesToolStripMenuItem,
            this.diretoresToolStripMenuItem,
            this.supervisoresToolStripMenuItem});
            this.menuAtribuidor.Location = new System.Drawing.Point(0, 0);
            this.menuAtribuidor.Name = "menuAtribuidor";
            this.menuAtribuidor.Padding = new System.Windows.Forms.Padding(8, 3, 0, 3);
            this.menuAtribuidor.Size = new System.Drawing.Size(818, 31);
            this.menuAtribuidor.TabIndex = 1;
            this.menuAtribuidor.Text = "menuStrip1";
            // 
            // professoresToolStripMenuItem
            // 
            this.professoresToolStripMenuItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.professoresToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.professoresToolStripMenuItem.Name = "professoresToolStripMenuItem";
            this.professoresToolStripMenuItem.Size = new System.Drawing.Size(104, 25);
            this.professoresToolStripMenuItem.Text = "Professores";
            this.professoresToolStripMenuItem.Click += new System.EventHandler(this.professoresToolStripMenuItem_Click);
            // 
            // turmasToolStripMenuItem
            // 
            this.turmasToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.turmasToolStripMenuItem.Name = "turmasToolStripMenuItem";
            this.turmasToolStripMenuItem.Size = new System.Drawing.Size(77, 25);
            this.turmasToolStripMenuItem.Text = "Turmas";
            this.turmasToolStripMenuItem.Click += new System.EventHandler(this.turmasToolStripMenuItem_Click);
            // 
            // instituiçõesToolStripMenuItem
            // 
            this.instituiçõesToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.instituiçõesToolStripMenuItem.Name = "instituiçõesToolStripMenuItem";
            this.instituiçõesToolStripMenuItem.Size = new System.Drawing.Size(109, 25);
            this.instituiçõesToolStripMenuItem.Text = "Instituições";
            this.instituiçõesToolStripMenuItem.Click += new System.EventHandler(this.instituiçõesToolStripMenuItem_Click);
            // 
            // diretoresToolStripMenuItem
            // 
            this.diretoresToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.diretoresToolStripMenuItem.Name = "diretoresToolStripMenuItem";
            this.diretoresToolStripMenuItem.Size = new System.Drawing.Size(90, 25);
            this.diretoresToolStripMenuItem.Text = "Diretores";
            this.diretoresToolStripMenuItem.Click += new System.EventHandler(this.diretoresToolStripMenuItem_Click);
            // 
            // supervisoresToolStripMenuItem
            // 
            this.supervisoresToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.supervisoresToolStripMenuItem.Name = "supervisoresToolStripMenuItem";
            this.supervisoresToolStripMenuItem.Size = new System.Drawing.Size(116, 25);
            this.supervisoresToolStripMenuItem.Text = "Supervisores";
            this.supervisoresToolStripMenuItem.Click += new System.EventHandler(this.supervisoresToolStripMenuItem_Click);
            // 
            // frmInicialAtribuidor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(238)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(818, 611);
            this.Controls.Add(this.menuAtribuidor);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuAtribuidor;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.Name = "frmInicialAtribuidor";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sua Atribuição Online - Atribuidor";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmSuaAtribuicao_FormClosing);
            this.menuAtribuidor.ResumeLayout(false);
            this.menuAtribuidor.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuAtribuidor;
        private System.Windows.Forms.ToolStripMenuItem professoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem instituiçõesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem supervisoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem diretoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem turmasToolStripMenuItem;
    }
}


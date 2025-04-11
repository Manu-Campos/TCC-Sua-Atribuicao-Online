namespace prjTCC
{
    partial class frmLogin
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmLogin));
            this.txtLogin = new System.Windows.Forms.TextBox();
            this.txtSenha = new System.Windows.Forms.TextBox();
            this.lblLogin = new System.Windows.Forms.Label();
            this.lblSenha = new System.Windows.Forms.Label();
            this.btnEntra = new CustomControls.RJControls.RJButton();
            this.btnVisivel = new botão();
            this.linkEsqueceu = new System.Windows.Forms.LinkLabel();
            this.SuspendLayout();
            // 
            // txtLogin
            // 
            this.txtLogin.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtLogin.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtLogin.Location = new System.Drawing.Point(411, 123);
            this.txtLogin.Margin = new System.Windows.Forms.Padding(2);
            this.txtLogin.Name = "txtLogin";
            this.txtLogin.Size = new System.Drawing.Size(203, 23);
            this.txtLogin.TabIndex = 0;
            this.txtLogin.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtLogin_KeyDown);
            // 
            // txtSenha
            // 
            this.txtSenha.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtSenha.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSenha.Location = new System.Drawing.Point(411, 189);
            this.txtSenha.Margin = new System.Windows.Forms.Padding(2);
            this.txtSenha.Name = "txtSenha";
            this.txtSenha.PasswordChar = '*';
            this.txtSenha.Size = new System.Drawing.Size(203, 23);
            this.txtSenha.TabIndex = 1;
            this.txtSenha.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtSenha_KeyDown);
            // 
            // lblLogin
            // 
            this.lblLogin.AutoSize = true;
            this.lblLogin.BackColor = System.Drawing.Color.White;
            this.lblLogin.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLogin.Location = new System.Drawing.Point(408, 98);
            this.lblLogin.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblLogin.Name = "lblLogin";
            this.lblLogin.Size = new System.Drawing.Size(47, 17);
            this.lblLogin.TabIndex = 2;
            this.lblLogin.Text = "Login:";
            // 
            // lblSenha
            // 
            this.lblSenha.AutoSize = true;
            this.lblSenha.BackColor = System.Drawing.Color.White;
            this.lblSenha.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSenha.Location = new System.Drawing.Point(408, 163);
            this.lblSenha.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblSenha.Name = "lblSenha";
            this.lblSenha.Size = new System.Drawing.Size(51, 17);
            this.lblSenha.TabIndex = 3;
            this.lblSenha.Text = "Senha:";
            // 
            // btnEntra
            // 
            this.btnEntra.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnEntra.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnEntra.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnEntra.BorderRadius = 10;
            this.btnEntra.BorderSize = 0;
            this.btnEntra.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnEntra.FlatAppearance.BorderSize = 0;
            this.btnEntra.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEntra.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEntra.ForeColor = System.Drawing.Color.White;
            this.btnEntra.Location = new System.Drawing.Point(476, 260);
            this.btnEntra.Margin = new System.Windows.Forms.Padding(2);
            this.btnEntra.Name = "btnEntra";
            this.btnEntra.Size = new System.Drawing.Size(79, 28);
            this.btnEntra.TabIndex = 6;
            this.btnEntra.Text = "Entrar";
            this.btnEntra.TextColor = System.Drawing.Color.White;
            this.btnEntra.UseVisualStyleBackColor = false;
            this.btnEntra.Click += new System.EventHandler(this.btnEntra_Click);
            // 
            // btnVisivel
            // 
            this.btnVisivel.BackColor = System.Drawing.Color.White;
            this.btnVisivel.BackgroundColor = System.Drawing.Color.White;
            this.btnVisivel.BorderColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnVisivel.BorderRadius = 0;
            this.btnVisivel.BorderSize = 1;
            this.btnVisivel.FlatAppearance.BorderSize = 0;
            this.btnVisivel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnVisivel.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnVisivel.ForeColor = System.Drawing.Color.White;
            this.btnVisivel.Image = global::prjTCC.Properties.Resources.visivel;
            this.btnVisivel.Location = new System.Drawing.Point(572, 189);
            this.btnVisivel.Name = "btnVisivel";
            this.btnVisivel.Size = new System.Drawing.Size(42, 22);
            this.btnVisivel.TabIndex = 7;
            this.btnVisivel.TextColor = System.Drawing.Color.White;
            this.btnVisivel.UseVisualStyleBackColor = false;
            this.btnVisivel.Click += new System.EventHandler(this.btnVisivel_Click);
            // 
            // linkEsqueceu
            // 
            this.linkEsqueceu.ActiveLinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(203)))), ((int)(((byte)(44)))), ((int)(((byte)(42)))));
            this.linkEsqueceu.AutoSize = true;
            this.linkEsqueceu.BackColor = System.Drawing.Color.White;
            this.linkEsqueceu.DisabledLinkColor = System.Drawing.Color.White;
            this.linkEsqueceu.Font = new System.Drawing.Font("Century Gothic", 7F);
            this.linkEsqueceu.LinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.linkEsqueceu.Location = new System.Drawing.Point(510, 224);
            this.linkEsqueceu.Name = "linkEsqueceu";
            this.linkEsqueceu.Size = new System.Drawing.Size(104, 15);
            this.linkEsqueceu.TabIndex = 8;
            this.linkEsqueceu.TabStop = true;
            this.linkEsqueceu.Text = "Esqueceu a senha?";
            this.linkEsqueceu.VisitedLinkColor = System.Drawing.Color.FromArgb(((int)(((byte)(23)))), ((int)(((byte)(105)))), ((int)(((byte)(181)))));
            this.linkEsqueceu.Click += new System.EventHandler(this.linkEsqueceu_Click);
            // 
            // frmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.ClientSize = new System.Drawing.Size(675, 336);
            this.Controls.Add(this.linkEsqueceu);
            this.Controls.Add(this.btnVisivel);
            this.Controls.Add(this.btnEntra);
            this.Controls.Add(this.lblSenha);
            this.Controls.Add(this.lblLogin);
            this.Controls.Add(this.txtSenha);
            this.Controls.Add(this.txtLogin);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.MaximizeBox = false;
            this.Name = "frmLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sua Atribuição Online";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmLogin_FormClosing);
            this.Load += new System.EventHandler(this.frmLogin_Load);
            this.KeyDown += new System.Windows.Forms.KeyEventHandler(this.frmLogin_KeyDown);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtLogin;
        private System.Windows.Forms.TextBox txtSenha;
        private System.Windows.Forms.Label lblLogin;
        private System.Windows.Forms.Label lblSenha;
        private CustomControls.RJControls.RJButton btnEntra;
        private botão btnVisivel;
        private System.Windows.Forms.LinkLabel linkEsqueceu;
    }
}
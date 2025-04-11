namespace prjTCC
{
    partial class frmAvisoVoltar
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
            this.btnNao = new CustomControls.RJControls.RJButton();
            this.btnSim = new CustomControls.RJControls.RJButton();
            this.label1 = new System.Windows.Forms.Label();
            this.imagem = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.imagem)).BeginInit();
            this.SuspendLayout();
            // 
            // btnNao
            // 
            this.btnNao.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnNao.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnNao.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnNao.BorderRadius = 10;
            this.btnNao.BorderSize = 0;
            this.btnNao.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnNao.FlatAppearance.BorderSize = 0;
            this.btnNao.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNao.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNao.ForeColor = System.Drawing.Color.White;
            this.btnNao.Location = new System.Drawing.Point(184, 84);
            this.btnNao.Margin = new System.Windows.Forms.Padding(2);
            this.btnNao.Name = "btnNao";
            this.btnNao.Size = new System.Drawing.Size(73, 27);
            this.btnNao.TabIndex = 10;
            this.btnNao.Text = "Não";
            this.btnNao.TextColor = System.Drawing.Color.White;
            this.btnNao.UseVisualStyleBackColor = false;
            this.btnNao.Click += new System.EventHandler(this.btnNao_Click);
            // 
            // btnSim
            // 
            this.btnSim.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnSim.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnSim.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(6)))), ((int)(((byte)(58)))), ((int)(((byte)(137)))));
            this.btnSim.BorderRadius = 10;
            this.btnSim.BorderSize = 0;
            this.btnSim.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnSim.FlatAppearance.BorderSize = 0;
            this.btnSim.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSim.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSim.ForeColor = System.Drawing.Color.White;
            this.btnSim.Location = new System.Drawing.Point(89, 84);
            this.btnSim.Margin = new System.Windows.Forms.Padding(2);
            this.btnSim.Name = "btnSim";
            this.btnSim.Size = new System.Drawing.Size(73, 27);
            this.btnSim.TabIndex = 9;
            this.btnSim.Text = "Sim";
            this.btnSim.TextColor = System.Drawing.Color.White;
            this.btnSim.UseVisualStyleBackColor = false;
            this.btnSim.Click += new System.EventHandler(this.btnSim_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(84, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(242, 34);
            this.label1.TabIndex = 7;
            this.label1.Text = "Tem certeza de que deseja voltar? \r\nOs campos preenchidos serão perdidos";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // imagem
            // 
            this.imagem.Image = global::prjTCC.Properties.Resources.questionando__1_;
            this.imagem.Location = new System.Drawing.Point(20, 25);
            this.imagem.Name = "imagem";
            this.imagem.Size = new System.Drawing.Size(44, 39);
            this.imagem.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.imagem.TabIndex = 8;
            this.imagem.TabStop = false;
            // 
            // frmAvisoVoltar
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ClientSize = new System.Drawing.Size(347, 127);
            this.ControlBox = false;
            this.Controls.Add(this.btnNao);
            this.Controls.Add(this.btnSim);
            this.Controls.Add(this.imagem);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAvisoVoltar";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Tem certeza?";
            this.Load += new System.EventHandler(this.frmAvisoVoltar_Load);
            ((System.ComponentModel.ISupportInitialize)(this.imagem)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CustomControls.RJControls.RJButton btnNao;
        private CustomControls.RJControls.RJButton btnSim;
        private System.Windows.Forms.PictureBox imagem;
        private System.Windows.Forms.Label label1;
    }
}
namespace QuanLyBenhVien
{
    partial class frmPhieuKhamBenh
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPhieuKhamBenh));
            this.btnLamMoi = new System.Windows.Forms.Button();
            this.dgvPhieuKB = new System.Windows.Forms.DataGridView();
            this.btnThoat = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.btnXoaPKB = new System.Windows.Forms.Button();
            this.btnThemPKB = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.dtpNgayKham = new System.Windows.Forms.DateTimePicker();
            this.txtMaBN = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMaPhieuKB = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnKhamBenh = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhieuKB)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnLamMoi
            // 
            this.btnLamMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLamMoi.Location = new System.Drawing.Point(1176, 651);
            this.btnLamMoi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLamMoi.Name = "btnLamMoi";
            this.btnLamMoi.Size = new System.Drawing.Size(125, 59);
            this.btnLamMoi.TabIndex = 32;
            this.btnLamMoi.Text = "Làm Mới";
            this.btnLamMoi.UseVisualStyleBackColor = true;
            this.btnLamMoi.Click += new System.EventHandler(this.btnLamMoi_Click);
            // 
            // dgvPhieuKB
            // 
            this.dgvPhieuKB.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvPhieuKB.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPhieuKB.Location = new System.Drawing.Point(761, 178);
            this.dgvPhieuKB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvPhieuKB.Name = "dgvPhieuKB";
            this.dgvPhieuKB.RowHeadersWidth = 51;
            this.dgvPhieuKB.RowTemplate.Height = 24;
            this.dgvPhieuKB.Size = new System.Drawing.Size(707, 442);
            this.dgvPhieuKB.TabIndex = 31;
            this.dgvPhieuKB.Click += new System.EventHandler(this.dgvPhieuKB_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1342, 651);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(125, 59);
            this.btnThoat.TabIndex = 30;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(72, 271);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(86, 29);
            this.label5.TabIndex = 13;
            this.label5.Text = "Mã BN";
            // 
            // btnXoaPKB
            // 
            this.btnXoaPKB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaPKB.Location = new System.Drawing.Point(561, 259);
            this.btnXoaPKB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnXoaPKB.Name = "btnXoaPKB";
            this.btnXoaPKB.Size = new System.Drawing.Size(122, 58);
            this.btnXoaPKB.TabIndex = 14;
            this.btnXoaPKB.Text = "Xóa";
            this.btnXoaPKB.UseVisualStyleBackColor = true;
            this.btnXoaPKB.Click += new System.EventHandler(this.btnXoaPKB_Click);
            // 
            // btnThemPKB
            // 
            this.btnThemPKB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemPKB.Location = new System.Drawing.Point(561, 146);
            this.btnThemPKB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThemPKB.Name = "btnThemPKB";
            this.btnThemPKB.Size = new System.Drawing.Size(122, 58);
            this.btnThemPKB.TabIndex = 13;
            this.btnThemPKB.Text = "Thêm";
            this.btnThemPKB.UseVisualStyleBackColor = true;
            this.btnThemPKB.Click += new System.EventHandler(this.btnThemPKB_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.dtpNgayKham);
            this.groupBox1.Controls.Add(this.txtMaBN);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.btnXoaPKB);
            this.groupBox1.Controls.Add(this.btnThemPKB);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.txtMaPhieuKB);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 165);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(720, 455);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Phiếu Khám Bệnh";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(55, 378);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(118, 29);
            this.label3.TabIndex = 17;
            this.label3.Text = "Ngày Tạo";
            // 
            // dtpNgayKham
            // 
            this.dtpNgayKham.Enabled = false;
            this.dtpNgayKham.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayKham.Location = new System.Drawing.Point(213, 378);
            this.dtpNgayKham.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpNgayKham.Name = "dtpNgayKham";
            this.dtpNgayKham.Size = new System.Drawing.Size(277, 35);
            this.dtpNgayKham.TabIndex = 16;
            // 
            // txtMaBN
            // 
            this.txtMaBN.Location = new System.Drawing.Point(213, 268);
            this.txtMaBN.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaBN.Name = "txtMaBN";
            this.txtMaBN.ReadOnly = true;
            this.txtMaBN.Size = new System.Drawing.Size(277, 35);
            this.txtMaBN.TabIndex = 15;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(39, 149);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(152, 29);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã Phiếu KB";
            // 
            // txtMaPhieuKB
            // 
            this.txtMaPhieuKB.Location = new System.Drawing.Point(213, 145);
            this.txtMaPhieuKB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaPhieuKB.Name = "txtMaPhieuKB";
            this.txtMaPhieuKB.Size = new System.Drawing.Size(277, 35);
            this.txtMaPhieuKB.TabIndex = 2;
            this.txtMaPhieuKB.TextChanged += new System.EventHandler(this.txtMaPhieuKB_TextChanged);
            this.txtMaPhieuKB.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaPhieuKB_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(397, 66);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(555, 46);
            this.label1.TabIndex = 28;
            this.label1.Text = "Thông Tin Phiếu Khám Bệnh";
            // 
            // btnKhamBenh
            // 
            this.btnKhamBenh.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnKhamBenh.Location = new System.Drawing.Point(968, 651);
            this.btnKhamBenh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnKhamBenh.Name = "btnKhamBenh";
            this.btnKhamBenh.Size = new System.Drawing.Size(160, 59);
            this.btnKhamBenh.TabIndex = 34;
            this.btnKhamBenh.Text = "Khám Bệnh";
            this.btnKhamBenh.UseVisualStyleBackColor = true;
            this.btnKhamBenh.Click += new System.EventHandler(this.btnKhamBenh_Click);
            // 
            // frmPhieuKhamBenh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1502, 1050);
            this.Controls.Add(this.btnKhamBenh);
            this.Controls.Add(this.btnLamMoi);
            this.Controls.Add(this.dgvPhieuKB);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmPhieuKhamBenh";
            this.Text = "PhieuKhamBenh";
            this.Load += new System.EventHandler(this.frmPhieuKhamBenh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhieuKB)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLamMoi;
        private System.Windows.Forms.DataGridView dgvPhieuKB;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnXoaPKB;
        private System.Windows.Forms.Button btnThemPKB;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtMaPhieuKB;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtpNgayKham;
        private System.Windows.Forms.TextBox txtMaBN;
        private System.Windows.Forms.Button btnKhamBenh;
    }
}
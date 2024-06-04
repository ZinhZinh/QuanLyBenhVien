namespace QuanLyBenhVien
{
    partial class frmPhongKham
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPhongKham));
            this.btnLamMoi = new System.Windows.Forms.Button();
            this.dgvPhongKham = new System.Windows.Forms.DataGridView();
            this.btnThoat = new System.Windows.Forms.Button();
            this.txtLoaiPhong = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnSuaPK = new System.Windows.Forms.Button();
            this.cboKhoa = new System.Windows.Forms.ComboBox();
            this.btnXoaPK = new System.Windows.Forms.Button();
            this.btnThemPK = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTenPhongKham = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtMaPhongKham = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhongKham)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnLamMoi
            // 
            this.btnLamMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLamMoi.Location = new System.Drawing.Point(1321, 1136);
            this.btnLamMoi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLamMoi.Name = "btnLamMoi";
            this.btnLamMoi.Size = new System.Drawing.Size(125, 59);
            this.btnLamMoi.TabIndex = 27;
            this.btnLamMoi.Text = "Làm Mới";
            this.btnLamMoi.UseVisualStyleBackColor = true;
            this.btnLamMoi.Click += new System.EventHandler(this.btnLamMoi_Click);
            // 
            // dgvPhongKham
            // 
            this.dgvPhongKham.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvPhongKham.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPhongKham.Location = new System.Drawing.Point(202, 689);
            this.dgvPhongKham.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvPhongKham.Name = "dgvPhongKham";
            this.dgvPhongKham.RowHeadersWidth = 51;
            this.dgvPhongKham.RowTemplate.Height = 24;
            this.dgvPhongKham.Size = new System.Drawing.Size(1109, 365);
            this.dgvPhongKham.TabIndex = 25;
            this.dgvPhongKham.Click += new System.EventHandler(this.dgvPhongKham_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1488, 1136);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(125, 59);
            this.btnThoat.TabIndex = 23;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // txtLoaiPhong
            // 
            this.txtLoaiPhong.Location = new System.Drawing.Point(388, 296);
            this.txtLoaiPhong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLoaiPhong.Name = "txtLoaiPhong";
            this.txtLoaiPhong.Size = new System.Drawing.Size(298, 35);
            this.txtLoaiPhong.TabIndex = 16;
            this.txtLoaiPhong.TextChanged += new System.EventHandler(this.txtLoaiPhong_TextChanged);
            this.txtLoaiPhong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLoaiPhong_KeyPress);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(181, 405);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 29);
            this.label5.TabIndex = 13;
            this.label5.Text = "Khoa";
            // 
            // btnSuaPK
            // 
            this.btnSuaPK.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaPK.Location = new System.Drawing.Point(813, 364);
            this.btnSuaPK.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSuaPK.Name = "btnSuaPK";
            this.btnSuaPK.Size = new System.Drawing.Size(135, 82);
            this.btnSuaPK.TabIndex = 15;
            this.btnSuaPK.Text = "Sửa";
            this.btnSuaPK.UseVisualStyleBackColor = true;
            this.btnSuaPK.Click += new System.EventHandler(this.btnSuaPK_Click);
            // 
            // cboKhoa
            // 
            this.cboKhoa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboKhoa.FormattingEnabled = true;
            this.cboKhoa.Location = new System.Drawing.Point(388, 397);
            this.cboKhoa.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboKhoa.Name = "cboKhoa";
            this.cboKhoa.Size = new System.Drawing.Size(298, 37);
            this.cboKhoa.TabIndex = 12;
            // 
            // btnXoaPK
            // 
            this.btnXoaPK.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaPK.Location = new System.Drawing.Point(813, 217);
            this.btnXoaPK.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnXoaPK.Name = "btnXoaPK";
            this.btnXoaPK.Size = new System.Drawing.Size(135, 82);
            this.btnXoaPK.TabIndex = 14;
            this.btnXoaPK.Text = "Xóa";
            this.btnXoaPK.UseVisualStyleBackColor = true;
            this.btnXoaPK.Click += new System.EventHandler(this.btnXoaPK_Click);
            // 
            // btnThemPK
            // 
            this.btnThemPK.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemPK.Location = new System.Drawing.Point(813, 73);
            this.btnThemPK.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThemPK.Name = "btnThemPK";
            this.btnThemPK.Size = new System.Drawing.Size(135, 82);
            this.btnThemPK.TabIndex = 13;
            this.btnThemPK.Text = "Thêm";
            this.btnThemPK.UseVisualStyleBackColor = true;
            this.btnThemPK.Click += new System.EventHandler(this.btnThemPK_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtLoaiPhong);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.btnSuaPK);
            this.groupBox1.Controls.Add(this.btnXoaPK);
            this.groupBox1.Controls.Add(this.btnThemPK);
            this.groupBox1.Controls.Add(this.cboKhoa);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtTenPhongKham);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtMaPhongKham);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(202, 136);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(1109, 501);
            this.groupBox1.TabIndex = 22;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Phòng Khám";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(181, 302);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(203, 29);
            this.label4.TabIndex = 11;
            this.label4.Text = "Loại Phòng Khám";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // txtTenPhongKham
            // 
            this.txtTenPhongKham.Location = new System.Drawing.Point(388, 197);
            this.txtTenPhongKham.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtTenPhongKham.Name = "txtTenPhongKham";
            this.txtTenPhongKham.Size = new System.Drawing.Size(298, 35);
            this.txtTenPhongKham.TabIndex = 4;
            this.txtTenPhongKham.TextChanged += new System.EventHandler(this.txtTenPhongKham_TextChanged);
            this.txtTenPhongKham.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTenPhongKham_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(181, 102);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(190, 29);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã Phòng Khám";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(181, 201);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(200, 29);
            this.label3.TabIndex = 3;
            this.label3.Text = "Tên Phòng Khám";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // txtMaPhongKham
            // 
            this.txtMaPhongKham.Location = new System.Drawing.Point(388, 96);
            this.txtMaPhongKham.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaPhongKham.Name = "txtMaPhongKham";
            this.txtMaPhongKham.Size = new System.Drawing.Size(298, 35);
            this.txtMaPhongKham.TabIndex = 2;
            this.txtMaPhongKham.TextChanged += new System.EventHandler(this.txtMaPhongKham_TextChanged);
            this.txtMaPhongKham.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaPhongKham_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(484, 53);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(460, 46);
            this.label1.TabIndex = 21;
            this.label1.Text = "Thông Tin Phòng Khám";
            // 
            // frmPhongKham
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1924, 1050);
            this.Controls.Add(this.btnLamMoi);
            this.Controls.Add(this.dgvPhongKham);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmPhongKham";
            this.Text = "PhongKham_KhamBenh";
            this.Load += new System.EventHandler(this.frmPhongKham_KhamBenh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhongKham)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLamMoi;
        private System.Windows.Forms.DataGridView dgvPhongKham;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.TextBox txtLoaiPhong;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnSuaPK;
        private System.Windows.Forms.ComboBox cboKhoa;
        private System.Windows.Forms.Button btnXoaPK;
        private System.Windows.Forms.Button btnThemPK;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTenPhongKham;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtMaPhongKham;
        private System.Windows.Forms.Label label1;
    }
}
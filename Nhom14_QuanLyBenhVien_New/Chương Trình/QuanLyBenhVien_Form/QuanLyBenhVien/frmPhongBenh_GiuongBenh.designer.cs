namespace QuanLyBenhVien
{
    partial class frmPhongBenh_GiuongBenh
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPhongBenh_GiuongBenh));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMaPhong = new System.Windows.Forms.TextBox();
            this.txtTenPhong = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtLoaiPhong = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnSuaPB = new System.Windows.Forms.Button();
            this.cboKhoa = new System.Windows.Forms.ComboBox();
            this.btnXoaPB = new System.Windows.Forms.Button();
            this.btnThemPB = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnSuaGB = new System.Windows.Forms.Button();
            this.btnXoaGB = new System.Windows.Forms.Button();
            this.btnThemGB = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.cboPhongBenh = new System.Windows.Forms.ComboBox();
            this.txtSoGiuong = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txtMaGiuong = new System.Windows.Forms.TextBox();
            this.dgvPhongBenh = new System.Windows.Forms.DataGridView();
            this.dgvGiuongBenh = new System.Windows.Forms.DataGridView();
            this.btnLamMoi = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhongBenh)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGiuongBenh)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(319, 57);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(732, 46);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thông Tin Phòng Bệnh - Giường Bệnh";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(29, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(122, 29);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã Phòng";
            // 
            // txtMaPhong
            // 
            this.txtMaPhong.Location = new System.Drawing.Point(181, 60);
            this.txtMaPhong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaPhong.Name = "txtMaPhong";
            this.txtMaPhong.Size = new System.Drawing.Size(277, 35);
            this.txtMaPhong.TabIndex = 2;
            this.txtMaPhong.TextChanged += new System.EventHandler(this.txtMaPhong_TextChanged);
            this.txtMaPhong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaPhong_KeyPress);
            // 
            // txtTenPhong
            // 
            this.txtTenPhong.Location = new System.Drawing.Point(181, 156);
            this.txtTenPhong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtTenPhong.Name = "txtTenPhong";
            this.txtTenPhong.Size = new System.Drawing.Size(277, 35);
            this.txtTenPhong.TabIndex = 4;
            this.txtTenPhong.TextChanged += new System.EventHandler(this.txtTenPhong_TextChanged);
            this.txtTenPhong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTenPhong_KeyPress);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(29, 162);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(132, 29);
            this.label3.TabIndex = 3;
            this.label3.Text = "Tên Phòng";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtLoaiPhong);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.btnSuaPB);
            this.groupBox1.Controls.Add(this.cboKhoa);
            this.groupBox1.Controls.Add(this.btnXoaPB);
            this.groupBox1.Controls.Add(this.btnThemPB);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtTenPhong);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtMaPhong);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(12, 156);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(668, 415);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Phòng Bệnh";
            // 
            // txtLoaiPhong
            // 
            this.txtLoaiPhong.Location = new System.Drawing.Point(181, 256);
            this.txtLoaiPhong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtLoaiPhong.Name = "txtLoaiPhong";
            this.txtLoaiPhong.Size = new System.Drawing.Size(277, 35);
            this.txtLoaiPhong.TabIndex = 16;
            this.txtLoaiPhong.TextChanged += new System.EventHandler(this.txtLoaiPhong_TextChanged);
            this.txtLoaiPhong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLoaiPhong_KeyPress);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(56, 354);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(69, 29);
            this.label5.TabIndex = 13;
            this.label5.Text = "Khoa";
            // 
            // btnSuaPB
            // 
            this.btnSuaPB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaPB.Location = new System.Drawing.Point(515, 300);
            this.btnSuaPB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSuaPB.Name = "btnSuaPB";
            this.btnSuaPB.Size = new System.Drawing.Size(119, 45);
            this.btnSuaPB.TabIndex = 15;
            this.btnSuaPB.Text = "Sửa";
            this.btnSuaPB.UseVisualStyleBackColor = true;
            this.btnSuaPB.Click += new System.EventHandler(this.btnSuaPB_Click);
            // 
            // cboKhoa
            // 
            this.cboKhoa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboKhoa.FormattingEnabled = true;
            this.cboKhoa.Location = new System.Drawing.Point(181, 350);
            this.cboKhoa.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboKhoa.Name = "cboKhoa";
            this.cboKhoa.Size = new System.Drawing.Size(277, 37);
            this.cboKhoa.TabIndex = 12;
            // 
            // btnXoaPB
            // 
            this.btnXoaPB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaPB.Location = new System.Drawing.Point(515, 194);
            this.btnXoaPB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnXoaPB.Name = "btnXoaPB";
            this.btnXoaPB.Size = new System.Drawing.Size(119, 45);
            this.btnXoaPB.TabIndex = 14;
            this.btnXoaPB.Text = "Xóa";
            this.btnXoaPB.UseVisualStyleBackColor = true;
            this.btnXoaPB.Click += new System.EventHandler(this.btnXoaPB_Click);
            // 
            // btnThemPB
            // 
            this.btnThemPB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemPB.Location = new System.Drawing.Point(515, 81);
            this.btnThemPB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThemPB.Name = "btnThemPB";
            this.btnThemPB.Size = new System.Drawing.Size(119, 45);
            this.btnThemPB.TabIndex = 13;
            this.btnThemPB.Text = "Thêm";
            this.btnThemPB.UseVisualStyleBackColor = true;
            this.btnThemPB.Click += new System.EventHandler(this.btnThemPB_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(27, 255);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(135, 29);
            this.label4.TabIndex = 11;
            this.label4.Text = "Loại Phòng";
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1357, 974);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(119, 45);
            this.btnThoat.TabIndex = 16;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnSuaGB);
            this.groupBox2.Controls.Add(this.btnXoaGB);
            this.groupBox2.Controls.Add(this.btnThemGB);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.cboPhongBenh);
            this.groupBox2.Controls.Add(this.txtSoGiuong);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.txtMaGiuong);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(12, 605);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox2.Size = new System.Drawing.Size(668, 328);
            this.groupBox2.TabIndex = 17;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Thông Tin Giường Bệnh";
            // 
            // btnSuaGB
            // 
            this.btnSuaGB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaGB.Location = new System.Drawing.Point(523, 249);
            this.btnSuaGB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSuaGB.Name = "btnSuaGB";
            this.btnSuaGB.Size = new System.Drawing.Size(119, 45);
            this.btnSuaGB.TabIndex = 15;
            this.btnSuaGB.Text = "Sửa";
            this.btnSuaGB.UseVisualStyleBackColor = true;
            this.btnSuaGB.Click += new System.EventHandler(this.btnSuaGB_Click);
            // 
            // btnXoaGB
            // 
            this.btnXoaGB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaGB.Location = new System.Drawing.Point(523, 149);
            this.btnXoaGB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnXoaGB.Name = "btnXoaGB";
            this.btnXoaGB.Size = new System.Drawing.Size(119, 45);
            this.btnXoaGB.TabIndex = 14;
            this.btnXoaGB.Text = "Xóa";
            this.btnXoaGB.UseVisualStyleBackColor = true;
            this.btnXoaGB.Click += new System.EventHandler(this.btnXoaGB_Click);
            // 
            // btnThemGB
            // 
            this.btnThemGB.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemGB.Location = new System.Drawing.Point(523, 50);
            this.btnThemGB.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThemGB.Name = "btnThemGB";
            this.btnThemGB.Size = new System.Drawing.Size(119, 45);
            this.btnThemGB.TabIndex = 13;
            this.btnThemGB.Text = "Thêm";
            this.btnThemGB.UseVisualStyleBackColor = true;
            this.btnThemGB.Click += new System.EventHandler(this.btnThemGB_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(36, 256);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(122, 29);
            this.label7.TabIndex = 11;
            this.label7.Text = "Mã Phòng";
            // 
            // cboPhongBenh
            // 
            this.cboPhongBenh.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboPhongBenh.FormattingEnabled = true;
            this.cboPhongBenh.Location = new System.Drawing.Point(181, 251);
            this.cboPhongBenh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboPhongBenh.Name = "cboPhongBenh";
            this.cboPhongBenh.Size = new System.Drawing.Size(285, 37);
            this.cboPhongBenh.TabIndex = 10;
            // 
            // txtSoGiuong
            // 
            this.txtSoGiuong.Location = new System.Drawing.Point(181, 156);
            this.txtSoGiuong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtSoGiuong.Name = "txtSoGiuong";
            this.txtSoGiuong.Size = new System.Drawing.Size(285, 35);
            this.txtSoGiuong.TabIndex = 4;
            this.txtSoGiuong.TextChanged += new System.EventHandler(this.txtSoGiuong_TextChanged);
            this.txtSoGiuong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtSoGiuong_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(29, 64);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(130, 29);
            this.label8.TabIndex = 1;
            this.label8.Text = "Mã Giường";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(33, 160);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(127, 29);
            this.label9.TabIndex = 3;
            this.label9.Text = "Số Giường";
            // 
            // txtMaGiuong
            // 
            this.txtMaGiuong.Location = new System.Drawing.Point(181, 60);
            this.txtMaGiuong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaGiuong.Name = "txtMaGiuong";
            this.txtMaGiuong.Size = new System.Drawing.Size(285, 35);
            this.txtMaGiuong.TabIndex = 2;
            this.txtMaGiuong.TextChanged += new System.EventHandler(this.txtMaGiuong_TextChanged);
            this.txtMaGiuong.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaGiuong_KeyPress);
            // 
            // dgvPhongBenh
            // 
            this.dgvPhongBenh.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvPhongBenh.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPhongBenh.Location = new System.Drawing.Point(702, 169);
            this.dgvPhongBenh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvPhongBenh.Name = "dgvPhongBenh";
            this.dgvPhongBenh.RowHeadersWidth = 51;
            this.dgvPhongBenh.RowTemplate.Height = 24;
            this.dgvPhongBenh.Size = new System.Drawing.Size(772, 402);
            this.dgvPhongBenh.TabIndex = 18;
            this.dgvPhongBenh.Click += new System.EventHandler(this.dgvPhongBenh_Click);
            // 
            // dgvGiuongBenh
            // 
            this.dgvGiuongBenh.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvGiuongBenh.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvGiuongBenh.Location = new System.Drawing.Point(702, 620);
            this.dgvGiuongBenh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvGiuongBenh.Name = "dgvGiuongBenh";
            this.dgvGiuongBenh.RowHeadersWidth = 51;
            this.dgvGiuongBenh.RowTemplate.Height = 24;
            this.dgvGiuongBenh.Size = new System.Drawing.Size(772, 313);
            this.dgvGiuongBenh.TabIndex = 19;
            this.dgvGiuongBenh.Click += new System.EventHandler(this.dgvGiuongBenh_Click);
            // 
            // btnLamMoi
            // 
            this.btnLamMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLamMoi.Location = new System.Drawing.Point(1155, 974);
            this.btnLamMoi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLamMoi.Name = "btnLamMoi";
            this.btnLamMoi.Size = new System.Drawing.Size(119, 45);
            this.btnLamMoi.TabIndex = 20;
            this.btnLamMoi.Text = "Làm Mới";
            this.btnLamMoi.UseVisualStyleBackColor = true;
            this.btnLamMoi.Click += new System.EventHandler(this.btnLamMoi_Click);
            // 
            // frmPhongBenh_GiuongBenh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(1924, 1050);
            this.Controls.Add(this.btnLamMoi);
            this.Controls.Add(this.dgvGiuongBenh);
            this.Controls.Add(this.dgvPhongBenh);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmPhongBenh_GiuongBenh";
            this.Text = "Thông Tin Phòng Bệnh - Giường Bệnh";
            this.Load += new System.EventHandler(this.frmBenhNhan_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPhongBenh)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvGiuongBenh)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtMaPhong;
        private System.Windows.Forms.TextBox txtTenPhong;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cboKhoa;
        private System.Windows.Forms.Button btnSuaPB;
        private System.Windows.Forms.Button btnXoaPB;
        private System.Windows.Forms.Button btnThemPB;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnSuaGB;
        private System.Windows.Forms.Button btnXoaGB;
        private System.Windows.Forms.Button btnThemGB;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cboPhongBenh;
        private System.Windows.Forms.TextBox txtSoGiuong;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtMaGiuong;
        private System.Windows.Forms.DataGridView dgvPhongBenh;
        private System.Windows.Forms.DataGridView dgvGiuongBenh;
        private System.Windows.Forms.TextBox txtLoaiPhong;
        private System.Windows.Forms.Button btnLamMoi;
    }
}
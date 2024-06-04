namespace QuanLyBenhVien
{
    partial class frmLoaiPhauThuat_PhauThuat
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmLoaiPhauThuat_PhauThuat));
            this.btnLamMoi = new System.Windows.Forms.Button();
            this.dgvLoaiPT = new System.Windows.Forms.DataGridView();
            this.btnXoaPT = new System.Windows.Forms.Button();
            this.btnThemPT = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.cboNV = new System.Windows.Forms.ComboBox();
            this.txtTenBN = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.dgvPT = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.cboLoaiPT = new System.Windows.Forms.ComboBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txtMaBN = new System.Windows.Forms.TextBox();
            this.cboPhongPT = new System.Windows.Forms.ComboBox();
            this.txtMaNYC = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txtTenNV = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.dtpNgayPT = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            this.txtMucDo = new System.Windows.Forms.TextBox();
            this.btnSuaLoaiPT = new System.Windows.Forms.Button();
            this.btnXoaLoaiPT = new System.Windows.Forms.Button();
            this.btnThemLoaiPT = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTenPT = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtMaPT = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnPhanGiuong = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvLoaiPT)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPT)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnLamMoi
            // 
            this.btnLamMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLamMoi.Location = new System.Drawing.Point(1130, 1592);
            this.btnLamMoi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnLamMoi.Name = "btnLamMoi";
            this.btnLamMoi.Size = new System.Drawing.Size(140, 62);
            this.btnLamMoi.TabIndex = 27;
            this.btnLamMoi.Text = "Làm Mới";
            this.btnLamMoi.UseVisualStyleBackColor = true;
            this.btnLamMoi.Click += new System.EventHandler(this.btnLamMoi_Click);
            // 
            // dgvLoaiPT
            // 
            this.dgvLoaiPT.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvLoaiPT.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvLoaiPT.Location = new System.Drawing.Point(722, 220);
            this.dgvLoaiPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvLoaiPT.Name = "dgvLoaiPT";
            this.dgvLoaiPT.RowHeadersWidth = 51;
            this.dgvLoaiPT.RowTemplate.Height = 24;
            this.dgvLoaiPT.Size = new System.Drawing.Size(737, 401);
            this.dgvLoaiPT.TabIndex = 25;
            this.dgvLoaiPT.Click += new System.EventHandler(this.dgvLoaiPT_Click);
            // 
            // btnXoaPT
            // 
            this.btnXoaPT.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaPT.Location = new System.Drawing.Point(779, 430);
            this.btnXoaPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnXoaPT.Name = "btnXoaPT";
            this.btnXoaPT.Size = new System.Drawing.Size(119, 45);
            this.btnXoaPT.TabIndex = 14;
            this.btnXoaPT.Text = "Xóa";
            this.btnXoaPT.UseVisualStyleBackColor = true;
            this.btnXoaPT.Click += new System.EventHandler(this.btnXoaPT_Click);
            // 
            // btnThemPT
            // 
            this.btnThemPT.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemPT.Location = new System.Drawing.Point(484, 430);
            this.btnThemPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThemPT.Name = "btnThemPT";
            this.btnThemPT.Size = new System.Drawing.Size(119, 45);
            this.btnThemPT.TabIndex = 13;
            this.btnThemPT.Text = "Thêm";
            this.btnThemPT.UseVisualStyleBackColor = true;
            this.btnThemPT.Click += new System.EventHandler(this.btnThemPT_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(754, 100);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(85, 29);
            this.label7.TabIndex = 11;
            this.label7.Text = "Mã NV";
            // 
            // cboNV
            // 
            this.cboNV.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboNV.FormattingEnabled = true;
            this.cboNV.Location = new System.Drawing.Point(911, 92);
            this.cboNV.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboNV.Name = "cboNV";
            this.cboNV.Size = new System.Drawing.Size(335, 37);
            this.cboNV.TabIndex = 10;
            this.cboNV.SelectedIndexChanged += new System.EventHandler(this.cboNV_SelectedIndexChanged);
            // 
            // txtTenBN
            // 
            this.txtTenBN.Enabled = false;
            this.txtTenBN.Location = new System.Drawing.Point(304, 177);
            this.txtTenBN.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtTenBN.Name = "txtTenBN";
            this.txtTenBN.Size = new System.Drawing.Size(335, 35);
            this.txtTenBN.TabIndex = 4;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(159, 266);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(135, 29);
            this.label8.TabIndex = 1;
            this.label8.Text = "Phẫu Thuật";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(159, 100);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(86, 29);
            this.label9.TabIndex = 3;
            this.label9.Text = "Mã BN";
            // 
            // dgvPT
            // 
            this.dgvPT.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvPT.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPT.Location = new System.Drawing.Point(33, 1200);
            this.dgvPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dgvPT.Name = "dgvPT";
            this.dgvPT.RowHeadersWidth = 51;
            this.dgvPT.RowTemplate.Height = 24;
            this.dgvPT.Size = new System.Drawing.Size(1426, 365);
            this.dgvPT.TabIndex = 26;
            this.dgvPT.Click += new System.EventHandler(this.dgvPT_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.cboLoaiPT);
            this.groupBox2.Controls.Add(this.label12);
            this.groupBox2.Controls.Add(this.txtMaBN);
            this.groupBox2.Controls.Add(this.cboPhongPT);
            this.groupBox2.Controls.Add(this.txtMaNYC);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.btnXoaPT);
            this.groupBox2.Controls.Add(this.txtTenNV);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.btnThemPT);
            this.groupBox2.Controls.Add(this.dtpNgayPT);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.cboNV);
            this.groupBox2.Controls.Add(this.txtTenBN);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(33, 658);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox2.Size = new System.Drawing.Size(1426, 508);
            this.groupBox2.TabIndex = 24;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Thông Tin Phẫu Thuật";
            // 
            // cboLoaiPT
            // 
            this.cboLoaiPT.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboLoaiPT.FormattingEnabled = true;
            this.cboLoaiPT.Location = new System.Drawing.Point(304, 263);
            this.cboLoaiPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboLoaiPT.Name = "cboLoaiPT";
            this.cboLoaiPT.Size = new System.Drawing.Size(335, 37);
            this.cboLoaiPT.TabIndex = 28;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(754, 266);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(144, 29);
            this.label12.TabIndex = 27;
            this.label12.Text = "NV Yêu Cầu";
            this.label12.Click += new System.EventHandler(this.label12_Click);
            // 
            // txtMaBN
            // 
            this.txtMaBN.Enabled = false;
            this.txtMaBN.Location = new System.Drawing.Point(304, 94);
            this.txtMaBN.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaBN.Name = "txtMaBN";
            this.txtMaBN.Size = new System.Drawing.Size(335, 35);
            this.txtMaBN.TabIndex = 25;
            // 
            // cboPhongPT
            // 
            this.cboPhongPT.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboPhongPT.FormattingEnabled = true;
            this.cboPhongPT.Location = new System.Drawing.Point(304, 349);
            this.cboPhongPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboPhongPT.Name = "cboPhongPT";
            this.cboPhongPT.Size = new System.Drawing.Size(335, 37);
            this.cboPhongPT.TabIndex = 24;
            this.cboPhongPT.SelectedIndexChanged += new System.EventHandler(this.cboPhongPT_SelectedIndexChanged);
            // 
            // txtMaNYC
            // 
            this.txtMaNYC.Enabled = false;
            this.txtMaNYC.Location = new System.Drawing.Point(911, 263);
            this.txtMaNYC.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaNYC.Name = "txtMaNYC";
            this.txtMaNYC.Size = new System.Drawing.Size(335, 35);
            this.txtMaNYC.TabIndex = 26;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(754, 352);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(107, 29);
            this.label11.TabIndex = 23;
            this.label11.Text = "Ngày PT";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(754, 177);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(95, 29);
            this.label10.TabIndex = 22;
            this.label10.Text = "Tên NV";
            // 
            // txtTenNV
            // 
            this.txtTenNV.Enabled = false;
            this.txtTenNV.Location = new System.Drawing.Point(911, 177);
            this.txtTenNV.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtTenNV.Name = "txtTenNV";
            this.txtTenNV.Size = new System.Drawing.Size(335, 35);
            this.txtTenNV.TabIndex = 21;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(159, 177);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(96, 29);
            this.label6.TabIndex = 20;
            this.label6.Text = "Tên BN";
            // 
            // dtpNgayPT
            // 
            this.dtpNgayPT.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayPT.Location = new System.Drawing.Point(910, 349);
            this.dtpNgayPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpNgayPT.Name = "dtpNgayPT";
            this.dtpNgayPT.Size = new System.Drawing.Size(335, 35);
            this.dtpNgayPT.TabIndex = 18;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(159, 352);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(121, 29);
            this.label5.TabIndex = 17;
            this.label5.Text = "Phòng PT";
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1323, 1592);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(138, 62);
            this.btnThoat.TabIndex = 23;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // txtMucDo
            // 
            this.txtMucDo.Location = new System.Drawing.Point(178, 290);
            this.txtMucDo.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMucDo.Name = "txtMucDo";
            this.txtMucDo.Size = new System.Drawing.Size(277, 35);
            this.txtMucDo.TabIndex = 16;
            this.txtMucDo.TextChanged += new System.EventHandler(this.txtMucDo_TextChanged);
            this.txtMucDo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMucDo_KeyPress);
            // 
            // btnSuaLoaiPT
            // 
            this.btnSuaLoaiPT.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSuaLoaiPT.Location = new System.Drawing.Point(515, 300);
            this.btnSuaLoaiPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnSuaLoaiPT.Name = "btnSuaLoaiPT";
            this.btnSuaLoaiPT.Size = new System.Drawing.Size(119, 45);
            this.btnSuaLoaiPT.TabIndex = 15;
            this.btnSuaLoaiPT.Text = "Sửa";
            this.btnSuaLoaiPT.UseVisualStyleBackColor = true;
            this.btnSuaLoaiPT.Click += new System.EventHandler(this.btnSuaLoaiPT_Click);
            // 
            // btnXoaLoaiPT
            // 
            this.btnXoaLoaiPT.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoaLoaiPT.Location = new System.Drawing.Point(515, 194);
            this.btnXoaLoaiPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnXoaLoaiPT.Name = "btnXoaLoaiPT";
            this.btnXoaLoaiPT.Size = new System.Drawing.Size(119, 45);
            this.btnXoaLoaiPT.TabIndex = 14;
            this.btnXoaLoaiPT.Text = "Xóa";
            this.btnXoaLoaiPT.UseVisualStyleBackColor = true;
            this.btnXoaLoaiPT.Click += new System.EventHandler(this.btnXoaLoaiPT_Click);
            // 
            // btnThemLoaiPT
            // 
            this.btnThemLoaiPT.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemLoaiPT.Location = new System.Drawing.Point(515, 81);
            this.btnThemLoaiPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThemLoaiPT.Name = "btnThemLoaiPT";
            this.btnThemLoaiPT.Size = new System.Drawing.Size(119, 45);
            this.btnThemLoaiPT.TabIndex = 13;
            this.btnThemLoaiPT.Text = "Thêm";
            this.btnThemLoaiPT.UseVisualStyleBackColor = true;
            this.btnThemLoaiPT.Click += new System.EventHandler(this.btnThemLoaiPT_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtMucDo);
            this.groupBox1.Controls.Add(this.btnSuaLoaiPT);
            this.groupBox1.Controls.Add(this.btnXoaLoaiPT);
            this.groupBox1.Controls.Add(this.btnThemLoaiPT);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtTenPT);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txtMaPT);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(33, 206);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.groupBox1.Size = new System.Drawing.Size(668, 415);
            this.groupBox1.TabIndex = 22;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông Tin Loại Phẫu Thuật";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(55, 294);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(95, 29);
            this.label4.TabIndex = 11;
            this.label4.Text = "Mức Độ";
            // 
            // txtTenPT
            // 
            this.txtTenPT.Location = new System.Drawing.Point(178, 190);
            this.txtTenPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtTenPT.Name = "txtTenPT";
            this.txtTenPT.Size = new System.Drawing.Size(277, 35);
            this.txtTenPT.TabIndex = 4;
            this.txtTenPT.TextChanged += new System.EventHandler(this.txtTenPT_TextChanged);
            this.txtTenPT.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtTenPT_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(55, 95);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 29);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã PT";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(55, 194);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(94, 29);
            this.label3.TabIndex = 3;
            this.label3.Text = "Tên PT";
            // 
            // txtMaPT
            // 
            this.txtMaPT.Location = new System.Drawing.Point(178, 94);
            this.txtMaPT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.txtMaPT.Name = "txtMaPT";
            this.txtMaPT.Size = new System.Drawing.Size(277, 35);
            this.txtMaPT.TabIndex = 2;
            this.txtMaPT.TextChanged += new System.EventHandler(this.txtMaPT_TextChanged);
            this.txtMaPT.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaPT_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(295, 80);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(780, 46);
            this.label1.TabIndex = 21;
            this.label1.Text = "Thông Tin Loại Phẫu Thuật - Phẫu Thuật";
            // 
            // btnPhanGiuong
            // 
            this.btnPhanGiuong.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPhanGiuong.Location = new System.Drawing.Point(919, 1592);
            this.btnPhanGiuong.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnPhanGiuong.Name = "btnPhanGiuong";
            this.btnPhanGiuong.Size = new System.Drawing.Size(159, 62);
            this.btnPhanGiuong.TabIndex = 28;
            this.btnPhanGiuong.Text = "Phân Giường";
            this.btnPhanGiuong.UseVisualStyleBackColor = true;
            this.btnPhanGiuong.Click += new System.EventHandler(this.btnPhanGiuong_Click);
            // 
            // frmLoaiPhauThuat_PhauThuat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1924, 1050);
            this.Controls.Add(this.btnPhanGiuong);
            this.Controls.Add(this.btnLamMoi);
            this.Controls.Add(this.dgvLoaiPT);
            this.Controls.Add(this.dgvPT);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmLoaiPhauThuat_PhauThuat";
            this.Text = "LoaiPhauThuat_PhauThuat";
            this.Load += new System.EventHandler(this.frmLoaiPhauThuat_PhauThuat_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvLoaiPT)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPT)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLamMoi;
        private System.Windows.Forms.DataGridView dgvLoaiPT;
        private System.Windows.Forms.Button btnXoaPT;
        private System.Windows.Forms.Button btnThemPT;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cboNV;
        private System.Windows.Forms.TextBox txtTenBN;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DataGridView dgvPT;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.TextBox txtMucDo;
        private System.Windows.Forms.Button btnSuaLoaiPT;
        private System.Windows.Forms.Button btnXoaLoaiPT;
        private System.Windows.Forms.Button btnThemLoaiPT;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTenPT;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtMaPT;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dtpNgayPT;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtTenNV;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox cboPhongPT;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtMaNYC;
        private System.Windows.Forms.TextBox txtMaBN;
        private System.Windows.Forms.Button btnPhanGiuong;
        private System.Windows.Forms.ComboBox cboLoaiPT;
    }
}
namespace QuanLyBenhVien
{
    partial class frmSuDungDichVu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSuDungDichVu));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cboDichVu = new System.Windows.Forms.ComboBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.dgvDichVu = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTenBN = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtMaNYC = new System.Windows.Forms.TextBox();
            this.txtMaBN = new System.Windows.Forms.TextBox();
            this.txtMaPKB = new System.Windows.Forms.TextBox();
            this.btnPhanGiuong = new System.Windows.Forms.Button();
            this.bntXNCC = new System.Windows.Forms.Button();
            this.btnPhauThuat = new System.Windows.Forms.Button();
            this.btnThanhToan = new System.Windows.Forms.Button();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDichVu)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(366, 40);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(329, 38);
            this.label1.TabIndex = 3;
            this.label1.Text = "SỬ DỤNG DỊCH VỤ";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 173);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(156, 26);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mã bệnh nhân:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(31, 358);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(91, 26);
            this.label3.TabIndex = 4;
            this.label3.Text = "Dịch vụ:";
            // 
            // cboDichVu
            // 
            this.cboDichVu.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboDichVu.FormattingEnabled = true;
            this.cboDichVu.Location = new System.Drawing.Point(234, 361);
            this.cboDichVu.Name = "cboDichVu";
            this.cboDichVu.Size = new System.Drawing.Size(304, 34);
            this.cboDichVu.TabIndex = 2;
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(854, 689);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(119, 62);
            this.btnThoat.TabIndex = 7;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // dgvDichVu
            // 
            this.dgvDichVu.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvDichVu.BackgroundColor = System.Drawing.SystemColors.ControlLight;
            this.dgvDichVu.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDichVu.Location = new System.Drawing.Point(36, 421);
            this.dgvDichVu.Name = "dgvDichVu";
            this.dgvDichVu.RowHeadersWidth = 51;
            this.dgvDichVu.RowTemplate.Height = 24;
            this.dgvDichVu.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvDichVu.Size = new System.Drawing.Size(937, 241);
            this.dgvDichVu.TabIndex = 6;
            this.dgvDichVu.Click += new System.EventHandler(this.dgvDichVu_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(31, 297);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(162, 26);
            this.label4.TabIndex = 4;
            this.label4.Text = "Tên bệnh nhân:";
            // 
            // txtTenBN
            // 
            this.txtTenBN.Location = new System.Drawing.Point(234, 300);
            this.txtTenBN.Name = "txtTenBN";
            this.txtTenBN.ReadOnly = true;
            this.txtTenBN.Size = new System.Drawing.Size(304, 32);
            this.txtTenBN.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(31, 117);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(146, 26);
            this.label5.TabIndex = 10;
            this.label5.Text = "Mã Phiếu KB:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(31, 235);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(177, 26);
            this.label6.TabIndex = 12;
            this.label6.Text = "Mã NV Yêu Cầu:";
            // 
            // txtMaNYC
            // 
            this.txtMaNYC.Location = new System.Drawing.Point(234, 235);
            this.txtMaNYC.Name = "txtMaNYC";
            this.txtMaNYC.ReadOnly = true;
            this.txtMaNYC.Size = new System.Drawing.Size(304, 32);
            this.txtMaNYC.TabIndex = 13;
            // 
            // txtMaBN
            // 
            this.txtMaBN.Location = new System.Drawing.Point(234, 173);
            this.txtMaBN.Name = "txtMaBN";
            this.txtMaBN.ReadOnly = true;
            this.txtMaBN.Size = new System.Drawing.Size(304, 32);
            this.txtMaBN.TabIndex = 14;
            // 
            // txtMaPKB
            // 
            this.txtMaPKB.Location = new System.Drawing.Point(234, 117);
            this.txtMaPKB.Name = "txtMaPKB";
            this.txtMaPKB.ReadOnly = true;
            this.txtMaPKB.Size = new System.Drawing.Size(304, 32);
            this.txtMaPKB.TabIndex = 15;
            // 
            // btnPhanGiuong
            // 
            this.btnPhanGiuong.Location = new System.Drawing.Point(809, 300);
            this.btnPhanGiuong.Name = "btnPhanGiuong";
            this.btnPhanGiuong.Size = new System.Drawing.Size(128, 62);
            this.btnPhanGiuong.TabIndex = 21;
            this.btnPhanGiuong.Text = "Phân giường";
            this.btnPhanGiuong.UseVisualStyleBackColor = true;
            this.btnPhanGiuong.Click += new System.EventHandler(this.btnPhanGiuong_Click);
            // 
            // bntXNCC
            // 
            this.bntXNCC.Location = new System.Drawing.Point(809, 140);
            this.bntXNCC.Name = "bntXNCC";
            this.bntXNCC.Size = new System.Drawing.Size(128, 62);
            this.bntXNCC.TabIndex = 20;
            this.bntXNCC.Text = "XN_CC";
            this.bntXNCC.UseVisualStyleBackColor = true;
            this.bntXNCC.Click += new System.EventHandler(this.bntXNCC_Click);
            // 
            // btnPhauThuat
            // 
            this.btnPhauThuat.Location = new System.Drawing.Point(809, 223);
            this.btnPhauThuat.Name = "btnPhauThuat";
            this.btnPhauThuat.Size = new System.Drawing.Size(128, 62);
            this.btnPhauThuat.TabIndex = 19;
            this.btnPhauThuat.Text = "Phẫu thuật";
            this.btnPhauThuat.UseVisualStyleBackColor = true;
            this.btnPhauThuat.Click += new System.EventHandler(this.btnPhauThuat_Click);
            // 
            // btnThanhToan
            // 
            this.btnThanhToan.Location = new System.Drawing.Point(618, 300);
            this.btnThanhToan.Name = "btnThanhToan";
            this.btnThanhToan.Size = new System.Drawing.Size(128, 62);
            this.btnThanhToan.TabIndex = 18;
            this.btnThanhToan.Text = "Thanh toán";
            this.btnThanhToan.UseVisualStyleBackColor = true;
            this.btnThanhToan.Click += new System.EventHandler(this.btnThanhToan_Click);
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(618, 223);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(128, 62);
            this.btnXoa.TabIndex = 17;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(618, 140);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(128, 62);
            this.btnThem.TabIndex = 16;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // frmSuDungDichVu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 26F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1182, 731);
            this.ControlBox = false;
            this.Controls.Add(this.btnPhanGiuong);
            this.Controls.Add(this.bntXNCC);
            this.Controls.Add(this.btnPhauThuat);
            this.Controls.Add(this.btnThanhToan);
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.txtMaPKB);
            this.Controls.Add(this.txtMaBN);
            this.Controls.Add(this.txtMaNYC);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtTenBN);
            this.Controls.Add(this.dgvDichVu);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.cboDichVu);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmSuDungDichVu";
            this.Text = "SỬ DỤNG DỊCH VỤ";
            this.Load += new System.EventHandler(this.frmSuDungDichVu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDichVu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboDichVu;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.DataGridView dgvDichVu;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTenBN;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtMaNYC;
        private System.Windows.Forms.TextBox txtMaBN;
        private System.Windows.Forms.TextBox txtMaPKB;
        private System.Windows.Forms.Button btnPhanGiuong;
        private System.Windows.Forms.Button bntXNCC;
        private System.Windows.Forms.Button btnPhauThuat;
        private System.Windows.Forms.Button btnThanhToan;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnThem;
    }
}
namespace QuanLyBenhVien
{
    partial class frmTraCuuDSNVTheoKhoa
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmTraCuuDSNVTheoKhoa));
            this.LayDanhSachNhanVienTheoKhoaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.cboMaKhoa = new System.Windows.Forms.ComboBox();
            this.dgvNhanVien = new System.Windows.Forms.DataGridView();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnTim = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnIn = new System.Windows.Forms.Button();
            this.rptNVTheoKhoa = new Microsoft.Reporting.WinForms.ReportViewer();
            this.LayDanhSachNhanVienTheoKhoaTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.LayDanhSachNhanVienTheoKhoaTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.LayDanhSachNhanVienTheoKhoaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien)).BeginInit();
            this.SuspendLayout();
            // 
            // LayDanhSachNhanVienTheoKhoaBindingSource
            // 
            this.LayDanhSachNhanVienTheoKhoaBindingSource.DataMember = "LayDanhSachNhanVienTheoKhoa";
            this.LayDanhSachNhanVienTheoKhoaBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // cboMaKhoa
            // 
            this.cboMaKhoa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboMaKhoa.FormattingEnabled = true;
            this.cboMaKhoa.Location = new System.Drawing.Point(257, 117);
            this.cboMaKhoa.Name = "cboMaKhoa";
            this.cboMaKhoa.Size = new System.Drawing.Size(283, 34);
            this.cboMaKhoa.TabIndex = 16;
            // 
            // dgvNhanVien
            // 
            this.dgvNhanVien.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvNhanVien.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.dgvNhanVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNhanVien.Location = new System.Drawing.Point(12, 181);
            this.dgvNhanVien.Name = "dgvNhanVien";
            this.dgvNhanVien.RowHeadersWidth = 51;
            this.dgvNhanVien.RowTemplate.Height = 24;
            this.dgvNhanVien.Size = new System.Drawing.Size(984, 413);
            this.dgvNhanVien.TabIndex = 15;
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(812, 600);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(184, 54);
            this.btnThoat.TabIndex = 14;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnTim
            // 
            this.btnTim.Location = new System.Drawing.Point(601, 114);
            this.btnTim.Name = "btnTim";
            this.btnTim.Size = new System.Drawing.Size(108, 39);
            this.btnTim.TabIndex = 13;
            this.btnTim.Text = "Tìm";
            this.btnTim.UseVisualStyleBackColor = true;
            this.btnTim.Click += new System.EventHandler(this.btnTim_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(154, 120);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 26);
            this.label2.TabIndex = 12;
            this.label2.Text = "Khoa:";
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(259, 36);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(633, 38);
            this.label1.TabIndex = 11;
            this.label1.Text = "DANH SÁCH NHÂN VIÊN THEO KHOA";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // btnIn
            // 
            this.btnIn.Location = new System.Drawing.Point(770, 114);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(106, 39);
            this.btnIn.TabIndex = 17;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // rptNVTheoKhoa
            // 
            reportDataSource1.Name = "DataSetNhanVienTheoKhoa";
            reportDataSource1.Value = this.LayDanhSachNhanVienTheoKhoaBindingSource;
            this.rptNVTheoKhoa.LocalReport.DataSources.Add(reportDataSource1);
            this.rptNVTheoKhoa.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportNhanVienTheoKhoa.rdlc";
            this.rptNVTheoKhoa.Location = new System.Drawing.Point(12, 181);
            this.rptNVTheoKhoa.Name = "rptNVTheoKhoa";
            this.rptNVTheoKhoa.ServerReport.BearerToken = null;
            this.rptNVTheoKhoa.Size = new System.Drawing.Size(984, 413);
            this.rptNVTheoKhoa.TabIndex = 19;
            // 
            // LayDanhSachNhanVienTheoKhoaTableAdapter
            // 
            this.LayDanhSachNhanVienTheoKhoaTableAdapter.ClearBeforeFill = true;
            // 
            // frmTraCuuDSNVTheoKhoa
            // 
            this.AcceptButton = this.btnTim;
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 26F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1170, 723);
            this.ControlBox = false;
            this.Controls.Add(this.rptNVTheoKhoa);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.cboMaKhoa);
            this.Controls.Add(this.dgvNhanVien);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnTim);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmTraCuuDSNVTheoKhoa";
            this.Text = "DÁNH SÁCH NHÂN VIÊN THEO KHOA";
            this.Load += new System.EventHandler(this.frmTraCuuDSNVTheoKhoa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.LayDanhSachNhanVienTheoKhoaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNhanVien)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cboMaKhoa;
        private System.Windows.Forms.DataGridView dgvNhanVien;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnTim;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnIn;
        private Microsoft.Reporting.WinForms.ReportViewer rptNVTheoKhoa;
        private System.Windows.Forms.BindingSource LayDanhSachNhanVienTheoKhoaBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.LayDanhSachNhanVienTheoKhoaTableAdapter LayDanhSachNhanVienTheoKhoaTableAdapter;
    }
}
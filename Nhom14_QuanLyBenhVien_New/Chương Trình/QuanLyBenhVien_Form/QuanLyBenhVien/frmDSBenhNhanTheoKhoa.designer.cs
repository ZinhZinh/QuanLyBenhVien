namespace QuanLyBenhVien
{
    partial class frmDSBenhNhanTheoKhoa
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDSBenhNhanTheoKhoa));
            this.LayDanhSachBenhNhanTheoKhoaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.label1 = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            this.dgvDSBN = new System.Windows.Forms.DataGridView();
            this.cboKhoa = new System.Windows.Forms.ComboBox();
            this.btnTim = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.btnIn = new System.Windows.Forms.Button();
            this.rptBN = new Microsoft.Reporting.WinForms.ReportViewer();
            this.LayDanhSachBenhNhanTheoKhoaTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.LayDanhSachBenhNhanTheoKhoaTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.LayDanhSachBenhNhanTheoKhoaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSBN)).BeginInit();
            this.SuspendLayout();
            // 
            // LayDanhSachBenhNhanTheoKhoaBindingSource
            // 
            this.LayDanhSachBenhNhanTheoKhoaBindingSource.DataMember = "LayDanhSachBenhNhanTheoKhoa";
            this.LayDanhSachBenhNhanTheoKhoaBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(247, 44);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(649, 38);
            this.label1.TabIndex = 13;
            this.label1.Text = "DANH SÁCH BỆNH NHÂN THEO KHOA";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(859, 560);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(135, 49);
            this.btnThoat.TabIndex = 26;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // dgvDSBN
            // 
            this.dgvDSBN.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvDSBN.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            this.dgvDSBN.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDSBN.Location = new System.Drawing.Point(12, 188);
            this.dgvDSBN.Name = "dgvDSBN";
            this.dgvDSBN.RowHeadersWidth = 51;
            this.dgvDSBN.RowTemplate.Height = 24;
            this.dgvDSBN.Size = new System.Drawing.Size(982, 366);
            this.dgvDSBN.TabIndex = 25;
            // 
            // cboKhoa
            // 
            this.cboKhoa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboKhoa.FormattingEnabled = true;
            this.cboKhoa.Location = new System.Drawing.Point(201, 117);
            this.cboKhoa.Name = "cboKhoa";
            this.cboKhoa.Size = new System.Drawing.Size(349, 34);
            this.cboKhoa.TabIndex = 24;
            // 
            // btnTim
            // 
            this.btnTim.Location = new System.Drawing.Point(592, 112);
            this.btnTim.Name = "btnTim";
            this.btnTim.Size = new System.Drawing.Size(108, 39);
            this.btnTim.TabIndex = 23;
            this.btnTim.Text = "Tìm";
            this.btnTim.UseVisualStyleBackColor = true;
            this.btnTim.Click += new System.EventHandler(this.btnTim_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(114, 120);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 26);
            this.label2.TabIndex = 22;
            this.label2.Text = "Khoa:";
            // 
            // btnIn
            // 
            this.btnIn.Location = new System.Drawing.Point(746, 112);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(124, 42);
            this.btnIn.TabIndex = 27;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // rptBN
            // 
            reportDataSource1.Name = "DataSetBenhNhanTheoKhoa";
            reportDataSource1.Value = this.LayDanhSachBenhNhanTheoKhoaBindingSource;
            this.rptBN.LocalReport.DataSources.Add(reportDataSource1);
            this.rptBN.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportBenhNhanTheoKhoa.rdlc";
            this.rptBN.Location = new System.Drawing.Point(12, 188);
            this.rptBN.Name = "rptBN";
            this.rptBN.ServerReport.BearerToken = null;
            this.rptBN.Size = new System.Drawing.Size(982, 366);
            this.rptBN.TabIndex = 29;
            // 
            // LayDanhSachBenhNhanTheoKhoaTableAdapter
            // 
            this.LayDanhSachBenhNhanTheoKhoaTableAdapter.ClearBeforeFill = true;
            // 
            // frmDSBenhNhanTheoKhoa
            // 
            this.AcceptButton = this.btnTim;
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 26F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1274, 724);
            this.ControlBox = false;
            this.Controls.Add(this.rptBN);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.dgvDSBN);
            this.Controls.Add(this.cboKhoa);
            this.Controls.Add(this.btnTim);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmDSBenhNhanTheoKhoa";
            this.Text = "DANH SÁCH BỆNH NHÂN";
            this.Load += new System.EventHandler(this.frmDSBenhNhanTheoKhoa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.LayDanhSachBenhNhanTheoKhoaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDSBN)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.DataGridView dgvDSBN;
        private System.Windows.Forms.ComboBox cboKhoa;
        private System.Windows.Forms.Button btnTim;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnIn;
        private Microsoft.Reporting.WinForms.ReportViewer rptBN;
        private System.Windows.Forms.BindingSource LayDanhSachBenhNhanTheoKhoaBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.LayDanhSachBenhNhanTheoKhoaTableAdapter LayDanhSachBenhNhanTheoKhoaTableAdapter;
    }
}
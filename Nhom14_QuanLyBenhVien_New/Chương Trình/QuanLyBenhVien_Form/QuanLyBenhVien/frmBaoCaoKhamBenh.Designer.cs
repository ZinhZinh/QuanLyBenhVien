namespace QuanLyBenhVien
{
    partial class frmBaoCaoKhamBenh
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmBaoCaoKhamBenh));
            this.BaoCaoKhamBenhBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.BaoCaoKhamBenhTheoKhoaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dtpNgayDau = new System.Windows.Forms.DateTimePicker();
            this.radTatCaKhoa = new System.Windows.Forms.RadioButton();
            this.btnThoat = new System.Windows.Forms.Button();
            this.radKhoa = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.cboKhoa = new System.Windows.Forms.ComboBox();
            this.btnIn = new System.Windows.Forms.Button();
            this.dtpNgayCuoi = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.rptBCKhamBenh = new Microsoft.Reporting.WinForms.ReportViewer();
            this.rptBaoCaoKBTheoKhoa = new Microsoft.Reporting.WinForms.ReportViewer();
            this.BaoCaoKhamBenhTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.BaoCaoKhamBenhTableAdapter();
            this.BaoCaoKhamBenhTheoKhoaTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.BaoCaoKhamBenhTheoKhoaTableAdapter();
            this.label4 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.BaoCaoKhamBenhBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BaoCaoKhamBenhTheoKhoaBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // BaoCaoKhamBenhBindingSource
            // 
            this.BaoCaoKhamBenhBindingSource.DataMember = "BaoCaoKhamBenh";
            this.BaoCaoKhamBenhBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // BaoCaoKhamBenhTheoKhoaBindingSource
            // 
            this.BaoCaoKhamBenhTheoKhoaBindingSource.DataMember = "BaoCaoKhamBenhTheoKhoa";
            this.BaoCaoKhamBenhTheoKhoaBindingSource.DataSource = this.QLBVDataSet;
            // 
            // dtpNgayDau
            // 
            this.dtpNgayDau.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpNgayDau.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayDau.Location = new System.Drawing.Point(281, 170);
            this.dtpNgayDau.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpNgayDau.Name = "dtpNgayDau";
            this.dtpNgayDau.Size = new System.Drawing.Size(224, 32);
            this.dtpNgayDau.TabIndex = 31;
            // 
            // radTatCaKhoa
            // 
            this.radTatCaKhoa.AutoSize = true;
            this.radTatCaKhoa.Checked = true;
            this.radTatCaKhoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radTatCaKhoa.Location = new System.Drawing.Point(717, 246);
            this.radTatCaKhoa.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radTatCaKhoa.Name = "radTatCaKhoa";
            this.radTatCaKhoa.Size = new System.Drawing.Size(101, 30);
            this.radTatCaKhoa.TabIndex = 30;
            this.radTatCaKhoa.TabStop = true;
            this.radTatCaKhoa.Text = "Tất Cả";
            this.radTatCaKhoa.UseVisualStyleBackColor = true;
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1362, 307);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(125, 59);
            this.btnThoat.TabIndex = 29;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // radKhoa
            // 
            this.radKhoa.AutoSize = true;
            this.radKhoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.radKhoa.Location = new System.Drawing.Point(853, 246);
            this.radKhoa.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.radKhoa.Name = "radKhoa";
            this.radKhoa.Size = new System.Drawing.Size(88, 30);
            this.radKhoa.TabIndex = 28;
            this.radKhoa.Text = "Khoa";
            this.radKhoa.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(711, 170);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(69, 29);
            this.label3.TabIndex = 27;
            this.label3.Text = "Khoa";
            // 
            // cboKhoa
            // 
            this.cboKhoa.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboKhoa.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboKhoa.FormattingEnabled = true;
            this.cboKhoa.Location = new System.Drawing.Point(806, 172);
            this.cboKhoa.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.cboKhoa.Name = "cboKhoa";
            this.cboKhoa.Size = new System.Drawing.Size(284, 33);
            this.cboKhoa.TabIndex = 26;
            // 
            // btnIn
            // 
            this.btnIn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIn.Location = new System.Drawing.Point(1146, 307);
            this.btnIn.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(125, 59);
            this.btnIn.TabIndex = 25;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // dtpNgayCuoi
            // 
            this.dtpNgayCuoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpNgayCuoi.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayCuoi.Location = new System.Drawing.Point(281, 240);
            this.dtpNgayCuoi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpNgayCuoi.Name = "dtpNgayCuoi";
            this.dtpNgayCuoi.Size = new System.Drawing.Size(224, 32);
            this.dtpNgayCuoi.TabIndex = 24;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Blue;
            this.label2.Location = new System.Drawing.Point(481, 56);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(460, 52);
            this.label2.TabIndex = 23;
            this.label2.Text = "Báo Cáo Khám Bệnh";
            // 
            // rptBCKhamBenh
            // 
            reportDataSource1.Name = "DataSetBCKhamBenh";
            reportDataSource1.Value = this.BaoCaoKhamBenhBindingSource;
            this.rptBCKhamBenh.LocalReport.DataSources.Add(reportDataSource1);
            this.rptBCKhamBenh.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportBCKhamBenh.rdlc";
            this.rptBCKhamBenh.Location = new System.Drawing.Point(12, 384);
            this.rptBCKhamBenh.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.rptBCKhamBenh.Name = "rptBCKhamBenh";
            this.rptBCKhamBenh.ServerReport.BearerToken = null;
            this.rptBCKhamBenh.Size = new System.Drawing.Size(1475, 554);
            this.rptBCKhamBenh.TabIndex = 32;
            // 
            // rptBaoCaoKBTheoKhoa
            // 
            reportDataSource2.Name = "DataSetKhamBenhTheoKhoa";
            reportDataSource2.Value = this.BaoCaoKhamBenhTheoKhoaBindingSource;
            this.rptBaoCaoKBTheoKhoa.LocalReport.DataSources.Add(reportDataSource2);
            this.rptBaoCaoKBTheoKhoa.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportBCKhamBenhTheoKhoa.rdlc";
            this.rptBaoCaoKBTheoKhoa.Location = new System.Drawing.Point(12, 384);
            this.rptBaoCaoKBTheoKhoa.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.rptBaoCaoKBTheoKhoa.Name = "rptBaoCaoKBTheoKhoa";
            this.rptBaoCaoKBTheoKhoa.ServerReport.BearerToken = null;
            this.rptBaoCaoKBTheoKhoa.Size = new System.Drawing.Size(1475, 554);
            this.rptBaoCaoKBTheoKhoa.TabIndex = 33;
            // 
            // BaoCaoKhamBenhTableAdapter
            // 
            this.BaoCaoKhamBenhTableAdapter.ClearBeforeFill = true;
            // 
            // BaoCaoKhamBenhTheoKhoaTableAdapter
            // 
            this.BaoCaoKhamBenhTheoKhoaTableAdapter.ClearBeforeFill = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(130, 240);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(125, 29);
            this.label4.TabIndex = 35;
            this.label4.Text = "Ngày Cuối";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(130, 170);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(118, 29);
            this.label1.TabIndex = 34;
            this.label1.Text = "Ngày Đầu";
            // 
            // frmBaoCaoKhamBenh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1924, 1050);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rptBaoCaoKBTheoKhoa);
            this.Controls.Add(this.rptBCKhamBenh);
            this.Controls.Add(this.dtpNgayDau);
            this.Controls.Add(this.radTatCaKhoa);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.radKhoa);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cboKhoa);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.dtpNgayCuoi);
            this.Controls.Add(this.label2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmBaoCaoKhamBenh";
            this.Text = "frmBaoCaoKhamBenh";
            this.Load += new System.EventHandler(this.frmBaoCaoKhamBenh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.BaoCaoKhamBenhBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BaoCaoKhamBenhTheoKhoaBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DateTimePicker dtpNgayDau;
        private System.Windows.Forms.RadioButton radTatCaKhoa;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.RadioButton radKhoa;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboKhoa;
        private System.Windows.Forms.Button btnIn;
        private System.Windows.Forms.DateTimePicker dtpNgayCuoi;
        private System.Windows.Forms.Label label2;
        private Microsoft.Reporting.WinForms.ReportViewer rptBCKhamBenh;
        private Microsoft.Reporting.WinForms.ReportViewer rptBaoCaoKBTheoKhoa;
        private System.Windows.Forms.BindingSource BaoCaoKhamBenhBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.BaoCaoKhamBenhTableAdapter BaoCaoKhamBenhTableAdapter;
        private System.Windows.Forms.BindingSource BaoCaoKhamBenhTheoKhoaBindingSource;
        private QLBVDataSetTableAdapters.BaoCaoKhamBenhTheoKhoaTableAdapter BaoCaoKhamBenhTheoKhoaTableAdapter;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
    }
}
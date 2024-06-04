namespace QuanLyBenhVien
{
    partial class frmBaoCaoChuaBenh
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmBaoCaoChuaBenh));
            this.DanhSachBenhNhanDieuTriBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dtpNgayDau = new System.Windows.Forms.DateTimePicker();
            this.dtpNgayCuoi = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.btnIn = new System.Windows.Forms.Button();
            this.rptTDDT = new Microsoft.Reporting.WinForms.ReportViewer();
            this.btnThoat = new System.Windows.Forms.Button();
            this.DanhSachBenhNhanDieuTriTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.DanhSachBenhNhanDieuTriTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.DanhSachBenhNhanDieuTriBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // DanhSachBenhNhanDieuTriBindingSource
            // 
            this.DanhSachBenhNhanDieuTriBindingSource.DataMember = "DanhSachBenhNhanDieuTri";
            this.DanhSachBenhNhanDieuTriBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(199, 190);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(118, 29);
            this.label1.TabIndex = 1;
            this.label1.Text = "Ngày Đầu";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Blue;
            this.label2.Location = new System.Drawing.Point(460, 90);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(585, 52);
            this.label2.TabIndex = 2;
            this.label2.Text = "Báo Cáo Theo Dõi Điều Trị";
            // 
            // dtpNgayDau
            // 
            this.dtpNgayDau.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpNgayDau.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayDau.Location = new System.Drawing.Point(337, 190);
            this.dtpNgayDau.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpNgayDau.Name = "dtpNgayDau";
            this.dtpNgayDau.Size = new System.Drawing.Size(224, 32);
            this.dtpNgayDau.TabIndex = 5;
            // 
            // dtpNgayCuoi
            // 
            this.dtpNgayCuoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpNgayCuoi.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dtpNgayCuoi.Location = new System.Drawing.Point(870, 190);
            this.dtpNgayCuoi.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.dtpNgayCuoi.Name = "dtpNgayCuoi";
            this.dtpNgayCuoi.Size = new System.Drawing.Size(224, 32);
            this.dtpNgayCuoi.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(735, 190);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(125, 29);
            this.label4.TabIndex = 6;
            this.label4.Text = "Ngày Cuối";
            // 
            // btnIn
            // 
            this.btnIn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIn.Location = new System.Drawing.Point(1202, 300);
            this.btnIn.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(125, 59);
            this.btnIn.TabIndex = 8;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // rptTDDT
            // 
            reportDataSource1.Name = "DataSetTDDT";
            reportDataSource1.Value = this.DanhSachBenhNhanDieuTriBindingSource;
            this.rptTDDT.LocalReport.DataSources.Add(reportDataSource1);
            this.rptTDDT.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportBCTheoDoiDieuTri.rdlc";
            this.rptTDDT.Location = new System.Drawing.Point(12, 367);
            this.rptTDDT.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.rptTDDT.Name = "rptTDDT";
            this.rptTDDT.ServerReport.BearerToken = null;
            this.rptTDDT.Size = new System.Drawing.Size(1479, 412);
            this.rptTDDT.TabIndex = 9;
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1366, 300);
            this.btnThoat.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(125, 59);
            this.btnThoat.TabIndex = 10;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // DanhSachBenhNhanDieuTriTableAdapter
            // 
            this.DanhSachBenhNhanDieuTriTableAdapter.ClearBeforeFill = true;
            // 
            // frmBaoCaoChuaBenh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1581, 1050);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.rptTDDT);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.dtpNgayCuoi);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.dtpNgayDau);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "frmBaoCaoChuaBenh";
            this.Text = "frmBaoCaoChuaBenh";
            this.Load += new System.EventHandler(this.frmBaoCaoChuaBenh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DanhSachBenhNhanDieuTriBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dtpNgayDau;
        private System.Windows.Forms.DateTimePicker dtpNgayCuoi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnIn;
        private Microsoft.Reporting.WinForms.ReportViewer rptTDDT;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.BindingSource DanhSachBenhNhanDieuTriBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.DanhSachBenhNhanDieuTriTableAdapter DanhSachBenhNhanDieuTriTableAdapter;
    }
}
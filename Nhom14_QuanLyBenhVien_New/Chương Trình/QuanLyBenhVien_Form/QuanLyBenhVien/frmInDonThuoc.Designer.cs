namespace QuanLyBenhVien
{
    partial class frmInDonThuoc
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmInDonThuoc));
            this.ThongTinDonThuocBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.txtMaDT = new System.Windows.Forms.TextBox();
            this.btnIn = new System.Windows.Forms.Button();
            this.rptInDonThuoc = new Microsoft.Reporting.WinForms.ReportViewer();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnQuayLai = new System.Windows.Forms.Button();
            this.btnThoat = new System.Windows.Forms.Button();
            this.ThongTinDonThuocTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.ThongTinDonThuocTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.ThongTinDonThuocBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // ThongTinDonThuocBindingSource
            // 
            this.ThongTinDonThuocBindingSource.DataMember = "ThongTinDonThuoc";
            this.ThongTinDonThuocBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // txtMaDT
            // 
            this.txtMaDT.Location = new System.Drawing.Point(699, 141);
            this.txtMaDT.Name = "txtMaDT";
            this.txtMaDT.Size = new System.Drawing.Size(265, 22);
            this.txtMaDT.TabIndex = 1;
            // 
            // btnIn
            // 
            this.btnIn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIn.Location = new System.Drawing.Point(1057, 128);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(116, 54);
            this.btnIn.TabIndex = 2;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // rptInDonThuoc
            // 
            this.rptInDonThuoc.Dock = System.Windows.Forms.DockStyle.Bottom;
            reportDataSource1.Name = "DataSetInDonThuoc";
            reportDataSource1.Value = this.ThongTinDonThuocBindingSource;
            this.rptInDonThuoc.LocalReport.DataSources.Add(reportDataSource1);
            this.rptInDonThuoc.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportInDonThuoc.rdlc";
            this.rptInDonThuoc.Location = new System.Drawing.Point(0, 254);
            this.rptInDonThuoc.Name = "rptInDonThuoc";
            this.rptInDonThuoc.ServerReport.BearerToken = null;
            this.rptInDonThuoc.Size = new System.Drawing.Size(1650, 651);
            this.rptInDonThuoc.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(538, 138);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(142, 25);
            this.label1.TabIndex = 4;
            this.label1.Text = "Mã Đơn Thuốc";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Blue;
            this.label2.Location = new System.Drawing.Point(795, 32);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(211, 42);
            this.label2.TabIndex = 5;
            this.label2.Text = "Đơn Thuốc";
            // 
            // btnQuayLai
            // 
            this.btnQuayLai.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnQuayLai.Location = new System.Drawing.Point(1223, 128);
            this.btnQuayLai.Name = "btnQuayLai";
            this.btnQuayLai.Size = new System.Drawing.Size(116, 54);
            this.btnQuayLai.TabIndex = 6;
            this.btnQuayLai.Text = "Quay Lại";
            this.btnQuayLai.UseVisualStyleBackColor = true;
            this.btnQuayLai.Click += new System.EventHandler(this.btnQuayLai_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1391, 128);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(116, 54);
            this.btnThoat.TabIndex = 7;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // ThongTinDonThuocTableAdapter
            // 
            this.ThongTinDonThuocTableAdapter.ClearBeforeFill = true;
            // 
            // frmInDonThuoc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1650, 905);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnQuayLai);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rptInDonThuoc);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.txtMaDT);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmInDonThuoc";
            this.Text = "frmInDonThuoc";
            this.Load += new System.EventHandler(this.frmInDonThuoc_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ThongTinDonThuocBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txtMaDT;
        private System.Windows.Forms.Button btnIn;
        private Microsoft.Reporting.WinForms.ReportViewer rptInDonThuoc;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnQuayLai;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.BindingSource ThongTinDonThuocBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.ThongTinDonThuocTableAdapter ThongTinDonThuocTableAdapter;
    }
}
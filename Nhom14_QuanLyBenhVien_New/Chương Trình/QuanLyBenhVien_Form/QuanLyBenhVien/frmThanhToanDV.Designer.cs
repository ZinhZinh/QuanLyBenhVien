namespace QuanLyBenhVien
{
    partial class frmThanhToanDV
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmThanhToanDV));
            this.SuDungDichVuBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMaBN = new System.Windows.Forms.TextBox();
            this.btnIn = new System.Windows.Forms.Button();
            this.txtPhieuKB = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnThoat = new System.Windows.Forms.Button();
            this.rptThanhToanDV = new Microsoft.Reporting.WinForms.ReportViewer();
            this.SuDungDichVuTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.SuDungDichVuTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.SuDungDichVuBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // SuDungDichVuBindingSource
            // 
            this.SuDungDichVuBindingSource.DataMember = "SuDungDichVu";
            this.SuDungDichVuBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(461, 69);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(380, 42);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thanh Toán Dịch Vụ";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(302, 158);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(143, 25);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã Bệnh Nhân";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // txtMaBN
            // 
            this.txtMaBN.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaBN.Location = new System.Drawing.Point(488, 158);
            this.txtMaBN.Name = "txtMaBN";
            this.txtMaBN.ReadOnly = true;
            this.txtMaBN.Size = new System.Drawing.Size(215, 30);
            this.txtMaBN.TabIndex = 2;
            this.txtMaBN.TextChanged += new System.EventHandler(this.txtMaBN_TextChanged);
            // 
            // btnIn
            // 
            this.btnIn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnIn.Location = new System.Drawing.Point(807, 169);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(106, 51);
            this.btnIn.TabIndex = 3;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // txtPhieuKB
            // 
            this.txtPhieuKB.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPhieuKB.Location = new System.Drawing.Point(488, 214);
            this.txtPhieuKB.Name = "txtPhieuKB";
            this.txtPhieuKB.ReadOnly = true;
            this.txtPhieuKB.Size = new System.Drawing.Size(215, 30);
            this.txtPhieuKB.TabIndex = 6;
            this.txtPhieuKB.TextChanged += new System.EventHandler(this.txtPhieuKB_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(302, 214);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(152, 25);
            this.label3.TabIndex = 5;
            this.label3.Text = "Mã Phiếu Khám";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(956, 169);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(120, 51);
            this.btnThoat.TabIndex = 7;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // rptThanhToanDV
            // 
            this.rptThanhToanDV.Dock = System.Windows.Forms.DockStyle.Bottom;
            reportDataSource2.Name = "DataSetSuDungDichVu";
            reportDataSource2.Value = this.SuDungDichVuBindingSource;
            this.rptThanhToanDV.LocalReport.DataSources.Add(reportDataSource2);
            this.rptThanhToanDV.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportSuDungDichVu.rdlc";
            this.rptThanhToanDV.Location = new System.Drawing.Point(0, 290);
            this.rptThanhToanDV.Name = "rptThanhToanDV";
            this.rptThanhToanDV.ServerReport.BearerToken = null;
            this.rptThanhToanDV.Size = new System.Drawing.Size(1242, 494);
            this.rptThanhToanDV.TabIndex = 8;
            this.rptThanhToanDV.Load += new System.EventHandler(this.rptThanhToanDV_Load);
            // 
            // SuDungDichVuTableAdapter
            // 
            this.SuDungDichVuTableAdapter.ClearBeforeFill = true;
            // 
            // frmThanhToanDV
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1242, 784);
            this.Controls.Add(this.rptThanhToanDV);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.txtPhieuKB);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.txtMaBN);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmThanhToanDV";
            this.Text = "ThanhToanDV";
            this.Load += new System.EventHandler(this.frmThanhToanDV_Load);
            ((System.ComponentModel.ISupportInitialize)(this.SuDungDichVuBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtMaBN;
        private System.Windows.Forms.Button btnIn;
        private System.Windows.Forms.TextBox txtPhieuKB;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnThoat;
        private Microsoft.Reporting.WinForms.ReportViewer rptThanhToanDV;
        private System.Windows.Forms.BindingSource SuDungDichVuBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.SuDungDichVuTableAdapter SuDungDichVuTableAdapter;
    }
}
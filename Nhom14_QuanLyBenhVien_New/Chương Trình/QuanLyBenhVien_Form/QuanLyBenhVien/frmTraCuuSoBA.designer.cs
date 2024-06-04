namespace QuanLyBenhVien
{
    partial class frmTraCuuSoBA
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmTraCuuSoBA));
            this.LaySoBenhAnCuaBenhNhanBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.btnThoat = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.btnIN = new System.Windows.Forms.Button();
            this.rptSoBenhAn = new Microsoft.Reporting.WinForms.ReportViewer();
            this.btnTim = new System.Windows.Forms.Button();
            this.txtMaBN = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.LaySoBenhAnCuaBenhNhanTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.LaySoBenhAnCuaBenhNhanTableAdapter();
            this.dgvTraCuuSBA = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.LaySoBenhAnCuaBenhNhanBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTraCuuSBA)).BeginInit();
            this.SuspendLayout();
            // 
            // LaySoBenhAnCuaBenhNhanBindingSource
            // 
            this.LaySoBenhAnCuaBenhNhanBindingSource.DataMember = "LaySoBenhAnCuaBenhNhan";
            this.LaySoBenhAnCuaBenhNhanBindingSource.DataSource = this.QLBVDataSet;
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(828, 541);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(171, 54);
            this.btnThoat.TabIndex = 13;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(134, 140);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(156, 26);
            this.label2.TabIndex = 9;
            this.label2.Text = "Mã bệnh nhân:";
            // 
            // btnIN
            // 
            this.btnIN.Location = new System.Drawing.Point(749, 134);
            this.btnIN.Name = "btnIN";
            this.btnIN.Size = new System.Drawing.Size(108, 39);
            this.btnIN.TabIndex = 14;
            this.btnIN.Text = "In";
            this.btnIN.UseVisualStyleBackColor = true;
            this.btnIN.Click += new System.EventHandler(this.btnIN_Click_1);
            // 
            // rptSoBenhAn
            // 
            reportDataSource1.Name = "DataSetSBenhAn";
            reportDataSource1.Value = this.LaySoBenhAnCuaBenhNhanBindingSource;
            this.rptSoBenhAn.LocalReport.DataSources.Add(reportDataSource1);
            this.rptSoBenhAn.LocalReport.ReportEmbeddedResource = "QuanLyBenhVien.ReportSBenhAn.rdlc";
            this.rptSoBenhAn.Location = new System.Drawing.Point(12, 207);
            this.rptSoBenhAn.Name = "rptSoBenhAn";
            this.rptSoBenhAn.ServerReport.BearerToken = null;
            this.rptSoBenhAn.Size = new System.Drawing.Size(987, 328);
            this.rptSoBenhAn.TabIndex = 20;
            // 
            // btnTim
            // 
            this.btnTim.Location = new System.Drawing.Point(609, 134);
            this.btnTim.Name = "btnTim";
            this.btnTim.Size = new System.Drawing.Size(108, 39);
            this.btnTim.TabIndex = 18;
            this.btnTim.Text = "Tìm";
            this.btnTim.UseVisualStyleBackColor = true;
            this.btnTim.Click += new System.EventHandler(this.btnTim_Click);
            // 
            // txtMaBN
            // 
            this.txtMaBN.Location = new System.Drawing.Point(291, 137);
            this.txtMaBN.Name = "txtMaBN";
            this.txtMaBN.Size = new System.Drawing.Size(282, 32);
            this.txtMaBN.TabIndex = 17;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(374, 59);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(395, 38);
            this.label1.TabIndex = 16;
            this.label1.Text = "TRA CỨU SỔ BỆNH ÁN";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // LaySoBenhAnCuaBenhNhanTableAdapter
            // 
            this.LaySoBenhAnCuaBenhNhanTableAdapter.ClearBeforeFill = true;
            // 
            // dgvTraCuuSBA
            // 
            this.dgvTraCuuSBA.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvTraCuuSBA.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTraCuuSBA.Location = new System.Drawing.Point(12, 207);
            this.dgvTraCuuSBA.Name = "dgvTraCuuSBA";
            this.dgvTraCuuSBA.RowHeadersWidth = 51;
            this.dgvTraCuuSBA.RowTemplate.Height = 24;
            this.dgvTraCuuSBA.Size = new System.Drawing.Size(987, 328);
            this.dgvTraCuuSBA.TabIndex = 21;
            this.dgvTraCuuSBA.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTraCuuSBA_CellContentClick);
            this.dgvTraCuuSBA.Click += new System.EventHandler(this.dgvTraCuuSBA_Click);
            // 
            // frmTraCuuSoBA
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 26F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1248, 778);
            this.ControlBox = false;
            this.Controls.Add(this.dgvTraCuuSBA);
            this.Controls.Add(this.rptSoBenhAn);
            this.Controls.Add(this.btnTim);
            this.Controls.Add(this.txtMaBN);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnIN);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.label2);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmTraCuuSoBA";
            this.Text = "TRA CỨU SỔ BỆNH ÁN";
            this.Load += new System.EventHandler(this.frmTraCuuSoBA_Load);
            ((System.ComponentModel.ISupportInitialize)(this.LaySoBenhAnCuaBenhNhanBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTraCuuSBA)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnIN;
        private Microsoft.Reporting.WinForms.ReportViewer rptSoBenhAn;
        private System.Windows.Forms.Button btnTim;
        private System.Windows.Forms.TextBox txtMaBN;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.BindingSource LaySoBenhAnCuaBenhNhanBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.LaySoBenhAnCuaBenhNhanTableAdapter LaySoBenhAnCuaBenhNhanTableAdapter;
        private System.Windows.Forms.DataGridView dgvTraCuuSBA;
    }
}
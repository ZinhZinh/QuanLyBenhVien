namespace QuanLyBenhVien
{
    partial class frmTraCuuDonThuoc
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmTraCuuDonThuoc));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtMaBN = new System.Windows.Forms.TextBox();
            this.btnTim = new System.Windows.Forms.Button();
            this.dgvTCDT = new System.Windows.Forms.DataGridView();
            this.btnThoat = new System.Windows.Forms.Button();
            this.QLBVDataSet = new QuanLyBenhVien.QLBVDataSet();
            this.ThongTinDonThuocBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ThongTinDonThuocTableAdapter = new QuanLyBenhVien.QLBVDataSetTableAdapters.ThongTinDonThuocTableAdapter();
            this.btnIn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTCDT)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ThongTinDonThuocBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Blue;
            this.label1.Location = new System.Drawing.Point(322, 35);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(391, 38);
            this.label1.TabIndex = 1;
            this.label1.Text = "TRA CỨU ĐƠN THUỐC";
            this.label1.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(79, 100);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(156, 26);
            this.label2.TabIndex = 2;
            this.label2.Text = "Mã bệnh nhân:";
            // 
            // txtMaBN
            // 
            this.txtMaBN.Location = new System.Drawing.Point(233, 100);
            this.txtMaBN.Name = "txtMaBN";
            this.txtMaBN.Size = new System.Drawing.Size(276, 32);
            this.txtMaBN.TabIndex = 3;
            this.txtMaBN.TextChanged += new System.EventHandler(this.txtMaBN_TextChanged);
            this.txtMaBN.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtMaBN_KeyPress);
            // 
            // btnTim
            // 
            this.btnTim.Location = new System.Drawing.Point(566, 93);
            this.btnTim.Name = "btnTim";
            this.btnTim.Size = new System.Drawing.Size(108, 39);
            this.btnTim.TabIndex = 4;
            this.btnTim.Text = "Tìm";
            this.btnTim.UseVisualStyleBackColor = true;
            this.btnTim.Click += new System.EventHandler(this.btnTim_Click);
            // 
            // dgvTCDT
            // 
            this.dgvTCDT.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvTCDT.BackgroundColor = System.Drawing.SystemColors.InactiveBorder;
            this.dgvTCDT.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTCDT.Location = new System.Drawing.Point(12, 177);
            this.dgvTCDT.Name = "dgvTCDT";
            this.dgvTCDT.RowHeadersWidth = 51;
            this.dgvTCDT.RowTemplate.Height = 24;
            this.dgvTCDT.Size = new System.Drawing.Size(986, 373);
            this.dgvTCDT.TabIndex = 5;
            this.dgvTCDT.Click += new System.EventHandler(this.dgvTCDT_Click);
            // 
            // btnThoat
            // 
            this.btnThoat.Location = new System.Drawing.Point(814, 556);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(184, 54);
            this.btnThoat.TabIndex = 7;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // QLBVDataSet
            // 
            this.QLBVDataSet.DataSetName = "QLBVDataSet";
            this.QLBVDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // ThongTinDonThuocBindingSource
            // 
            this.ThongTinDonThuocBindingSource.DataMember = "ThongTinDonThuoc";
            this.ThongTinDonThuocBindingSource.DataSource = this.QLBVDataSet;
            // 
            // ThongTinDonThuocTableAdapter
            // 
            this.ThongTinDonThuocTableAdapter.ClearBeforeFill = true;
            // 
            // btnIn
            // 
            this.btnIn.Location = new System.Drawing.Point(704, 93);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(108, 39);
            this.btnIn.TabIndex = 8;
            this.btnIn.Text = "In";
            this.btnIn.UseVisualStyleBackColor = true;
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
            // 
            // frmTraCuuDonThuoc
            // 
            this.AcceptButton = this.btnTim;
            this.AutoScaleDimensions = new System.Drawing.SizeF(13F, 26F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1164, 704);
            this.ControlBox = false;
            this.Controls.Add(this.btnIn);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.dgvTCDT);
            this.Controls.Add(this.btnTim);
            this.Controls.Add(this.txtMaBN);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmTraCuuDonThuoc";
            this.Text = "TRA CỨU ĐƠN THUỐC";
            this.Load += new System.EventHandler(this.frmTraCuuDonThuoc_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvTCDT)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.QLBVDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ThongTinDonThuocBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtMaBN;
        private System.Windows.Forms.Button btnTim;
        private System.Windows.Forms.DataGridView dgvTCDT;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.BindingSource ThongTinDonThuocBindingSource;
        private QLBVDataSet QLBVDataSet;
        private QLBVDataSetTableAdapters.ThongTinDonThuocTableAdapter ThongTinDonThuocTableAdapter;
        private System.Windows.Forms.Button btnIn;
    }
}
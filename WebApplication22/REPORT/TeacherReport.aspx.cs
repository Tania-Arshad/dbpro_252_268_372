﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

namespace WebApplication22.REPORT
{
    public partial class StudentReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateReportData();
            }
        }

        private void populateReportData()
        {
            List<AddTeacher> all = new List<AddTeacher>();
            using (FinalEntities1 dc = new FinalEntities1())
            {
                all = dc.AddTeachers.ToList();

            }
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource rdl = new ReportDataSource("DataSet3", all);
            ReportViewer1.LocalReport.DataSources.Add(rdl);
            ReportViewer1.LocalReport.Refresh();

        }
    }
}
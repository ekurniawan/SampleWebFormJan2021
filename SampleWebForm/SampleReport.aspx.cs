using Microsoft.Reporting.WebForms;
using SampleWebForm.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class SampleReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ShowReport();
            }
        }

        private void ShowReport()
        {
            CategoryDAL categoryDAL = new CategoryDAL();
            rvLaporan.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("DataSet1", categoryDAL.GetAll());
            rvLaporan.LocalReport.DataSources.Add(rds);
            rvLaporan.LocalReport.ReportPath = Server.MapPath("~/Reports/CategoryReport.rdlc");
            rvLaporan.LocalReport.Refresh();
        }
    }
}
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
    public partial class ReportProducts : System.Web.UI.Page
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
            ProductWithCategoryDAL productDAL = new ProductWithCategoryDAL();
            rvProducts.LocalReport.DataSources.Clear();

            var data = productDAL.GetAll();
            ReportDataSource rds = new ReportDataSource("DataSet1", data);
            rvProducts.LocalReport.DataSources.Add(rds);
            rvProducts.LocalReport.ReportPath = Server.MapPath("~/Reports/ReportProduct.rdlc");
            rvProducts.LocalReport.Refresh();
        }
    }
}
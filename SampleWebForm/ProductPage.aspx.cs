using SampleWebForm.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class ProductPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToString();
        }
        protected void txtSearch_Click(object sender, EventArgs e)
        {
            odsProduct.SelectParameters["ProductName"].DefaultValue = txtSearch.Text;
            odsProduct.Select();
            odsProduct.DataBind();
        }
    }
}
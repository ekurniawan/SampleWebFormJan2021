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
        }
        protected void txtSearch_Click(object sender, EventArgs e)
        {
            string pilihan = string.Empty;
            foreach(ListItem item in chkPilihan.Items)
            {
                pilihan += item.Value + ",";
            }
            pilihan = pilihan.Substring(0, pilihan.Length - 1);
            
            string myOperator = ddOperator.SelectedValue;

            odsProduct.SelectParameters["Keyword"].DefaultValue = txtSearch.Text;
            odsProduct.SelectParameters["Pilihan"].DefaultValue = pilihan;
            odsProduct.SelectParameters["Operator"].DefaultValue = myOperator;
            odsProduct.Select();
            odsProduct.DataBind();


            //odsProduct.SelectParameters["Keyword"].DefaultValue = txtSearch.Text;
            //if (rdNamaProduct.Checked)
            //{
            //    odsProduct.SelectParameters["Pilihan"].DefaultValue = "ProductName";
            //}
            //else
            //{
            //    odsProduct.SelectParameters["Pilihan"].DefaultValue = "CategoryName";
            //}

            //odsProduct.Select();
            //odsProduct.DataBind();
        }
    }
}
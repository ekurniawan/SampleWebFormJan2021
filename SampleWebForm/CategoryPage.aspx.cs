using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class CategoryPage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/LoginPage");
            }
            else
            {
                if (Session["aturan"].ToString() != "Admin")
                {
                    Response.Redirect("~/LoginPage");
                }
            }
        }

        private void ClearText()
        {
            txtCategoryName.Text = string.Empty;
            txtDescription.Text = string.Empty;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                odsCategory.InsertParameters["CategoryName"].DefaultValue = txtCategoryName.Text;
                odsCategory.InsertParameters["Description"].DefaultValue = txtDescription.Text;
                odsCategory.Insert();
                ltKeterangan.Text =
                    $"<span class='alert alert-success'>Category {txtCategoryName.Text} berhasil diambah</span>";
                ClearText();
            }
            catch (Exception ex)
            {
                ltKeterangan.Text =
                 $"<span class='alert alert-danger'>Error: {ex.Message}</span>";
            }
        }
    }
}
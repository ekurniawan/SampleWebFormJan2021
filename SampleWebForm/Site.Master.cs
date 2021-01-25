using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                lnkLogin.Text = "Logout";
                ltPengguna.Text = $"<li><a href='#'>Welcome, {Session["Username"].ToString()}</a></li>";
            }
            else
            {
                lnkLogin.Text = "Sign In";
                lnkLogin.PostBackUrl = "~/LoginPage";
            }
        }

      
    }
}
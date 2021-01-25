using SampleWebForm.DAL;
using SampleWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            RegistrasiDAL registrasiDAL = new RegistrasiDAL();
            var pengguna = new Pengguna
            {
                Username = txtUsername.Text,
                Password = txtPassword.Text
            };
            var result = registrasiDAL.LoginPengguna(pengguna);
            if (result != null)
            {
                Session["username"] = result.Username;
                Response.Redirect("~/Default");
            }
            else
            {
                ltKeterangan.Text = $"<span class='alert alert-danger'>Username/Password tidak valid</span>";
            }
        }
    }
}
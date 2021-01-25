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
    public partial class Registrasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrasi_Click(object sender, EventArgs e)
        {
            RegistrasiDAL regisDAL = new RegistrasiDAL();
            Pengguna newPengguna = new Pengguna
            {
                Username = txtUsername.Text,
                Password = txtPassword.Text,
                Aturan = txtAturan.Text
            };
            try
            {
                regisDAL.RegistrasiPengguna(newPengguna);
                ltKeterangan.Text = $"<span class='alert alert-success'>Registrasi Berhasil</span>";
            }
            catch (Exception ex)
            {
                ltKeterangan.Text = $"<span class='alert alert-danger'>{ex.Message}</span>";
            }
        }
    }
}
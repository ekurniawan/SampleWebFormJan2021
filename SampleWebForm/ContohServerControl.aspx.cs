using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class ContohServerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string firsName = txtFirstName.Text;
            string lastName = txtLastName.Text;

            lblBiodata.Text = $"Nama anda: {firsName} {lastName}";
        }
    }
}
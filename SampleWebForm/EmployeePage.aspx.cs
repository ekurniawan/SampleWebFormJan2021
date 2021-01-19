using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class EmployeePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            odsEmployee.InsertParameters["EmpName"].DefaultValue = txtEmpName.Text;
            odsEmployee.InsertParameters["Designation"].DefaultValue = txtDesignation.Text;
            odsEmployee.InsertParameters["Department"].DefaultValue = txtDepartment.Text;
            odsEmployee.InsertParameters["Qualification"].DefaultValue = txtQualification.Text;

            try
            {
                odsEmployee.Insert();
                ltKeterangan.Text =
                    $"";
            }
            catch (Exception ex)
            {
                ltKeterangan.Text = $"<span class='alert alert-danger'>Error: {ex.Message}</span>";
            }
        }
    }
}
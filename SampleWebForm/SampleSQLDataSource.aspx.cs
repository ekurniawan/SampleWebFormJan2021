using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class SampleSQLDataSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                sdsEmployee.InsertParameters["EmpName"].DefaultValue = txtEmpName.Text;
                sdsEmployee.InsertParameters["Designation"].DefaultValue = txtDesignation.Text;
                sdsEmployee.InsertParameters["Department"].DefaultValue = txtDepartment.Text;
                sdsEmployee.InsertParameters["Qualification"].DefaultValue = txtQualification.Text;
                sdsEmployee.Insert();
                ltKeterangan.Text = 
                    $"<span class='alert alert-success'>Data Employee {txtEmpName.Text} berhasil ditambah !</span>";
            }
            catch (Exception ex)
            {
                ltKeterangan.Text = $"<span class='alert alert-danger'>{ex.Message}</span>";
            }
        }

       
    }
}
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
    public partial class ContohTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProses_Click(object sender, EventArgs e)
        {
            CategoryDAL categoryDAL = new CategoryDAL();
            EmployeeDAL employeeDAL = new EmployeeDAL();
            RegistrasiDAL registrasiDAL = new RegistrasiDAL();

            try
            {
                //proses 1 - insert category
                categoryDAL.Insert("Test Insert Category 1", "Test Insert Category 1");
                
                //proses 2 - insert pengguna
                var newPengguna = new Pengguna
                {
                    Username="joko",
                    Password = "rahasia",
                    Aturan = "mahasiswa"
                };
                registrasiDAL.RegistrasiPengguna(newPengguna);

                //proses 3 - menambahkan employee
                employeeDAL.Insert("Budi","")
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
using SampleWebForm.DAL;
using SampleWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Transactions;

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

            
            using(var transactionScope = new TransactionScope())
            {
                try
                {
                    //proses 1 - insert category
                    categoryDAL.Insert("Test 4", "Test Insert Category 4");

                    //proses 2 - insert pengguna
                    var newPengguna = new Pengguna
                    {
                        Username = "joko",
                        Password = "rahasia",
                        Aturan = "mahasiswa"
                    };
                    registrasiDAL.RegistrasiPengguna(newPengguna);

                    //proses 3 - menambahkan employee
                    var newEmployee = new MyEmployee
                    {
                        FirstName = "Jojo",
                        LastName = "Jojo"
                    };
                    employeeDAL.InsertMyEmployee(newEmployee);

                    transactionScope.Complete();

                    ltKeterangan.Text = $"<span class='alert alert-success'>Proses berhasil dijalankan</span>";
                }
                catch (Exception ex)
                {
                    ltKeterangan.Text = $"<span class='alert alert-danger'>{ex.Message}</span>";
                }
            }
          
        }
    }
}
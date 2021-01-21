using Dapper;
using SampleWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace SampleWebForm.DAL
{
    public class SupplierDAL
    {
        private string GetConnStr()
        {
            return WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        public IEnumerable<Supplier> GetAll()
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select * from Suppliers order by CategoryName asc";
                var results = conn.Query<Supplier>(strSql);
                return results;
            }
        }
    }
}
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
    public class ProductWithCategoryDAL
    {
        private string GetConnStr()
        {
            return WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        public IEnumerable<ViewProductWithCategory> GetAll()
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select * from ViewProductWithCategory order by ProductName asc";
                var results = conn.Query<ViewProductWithCategory>(strSql);
                return results;
            }
        }
    }
}
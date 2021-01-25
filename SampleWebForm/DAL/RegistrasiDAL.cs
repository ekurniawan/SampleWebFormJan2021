using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace SampleWebForm.DAL
{
    public class RegistrasiDAL
    {
        private string GetConnStr()
        {
            return WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        public IEnumerable<Category> GetAll()
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select CategoryID,CategoryName,Description from Categories order by CategoryName asc";
                var results = conn.Query<Category>(strSql);
                return results;
            }
        }
    }
}
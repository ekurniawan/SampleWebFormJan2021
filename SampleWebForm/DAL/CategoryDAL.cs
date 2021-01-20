using SampleWebForm.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using Dapper;

namespace SampleWebForm.DAL
{
    public class CategoryDAL
    {
        private string GetConnStr()
        {
            return WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        public IEnumerable<Category> GetAll()
        {
            using(SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select CategoryID,CategoryName,Description from Categories order by CategoryName asc";
                var results = conn.Query<Category>(strSql);
                return results;
            }
        }

        public Category GetById(int categoryId)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select CategoryID,CategoryName,Description from Categories 
                                  where CategoryID=@CategoryID";
                var param = new { CategoryID = categoryId };
                var result = conn.QuerySingle<Category>(strSql, param);
                return result;
            }
        }

        public IEnumerable<Category> GetByName(string categoryName)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select CategoryID,CategoryName,Description from Categories 
                                  where CategoryName like @CategoryName
                                  order by CategoryName asc";
                var param = new { CategoryName = $"%{categoryName}%" };
                var results = conn.Query<Category>(strSql, param);
                return results;
            }
        }
    }
}
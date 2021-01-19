using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using Dapper;
using SampleWebForm.Models;

namespace SampleWebForm.DAL
{
    public class EmployeeDAL
    {
        private string GetConnStr()
        {
            return WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        public IEnumerable<Employee> GetAll()
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select * from Employees order by EmpName asc";
                var results = conn.Query<Employee>(strSql);
                return results;
            }
        }

        public Employee GetById(int empId)
        {
            using(SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select * from Employees where EmpId=@EmpId";
                var param = new { EmpId = empId };
                var result = conn.QuerySingle<Employee>(strSql,param);
                return result;
            }
        }

        public IEnumerable<Employee> GetSearch(string keyword)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select * from Employees where EmpName like '%'+@keyword+'%' 
                OR Department like '%'+@keyword+'%' OR Designation like '%'+@keyword+'%' OR 
                Qualification like '%'+@keyword+'%' order by EmpName asc";
                var param = new { keyword = keyword };
                var results = conn.Query<Employee>(strSql, param);
                return results;
            }
        }

        public IEnumerable<Employee> GetByNameAndDept(string empName,string dept)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"select * from Employees where EmpName like '%'+@EmpName+'%' 
                AND Department like '%'+@Department+'%' order by EmpName asc";
                var param = new { EmpName = empName, Department = dept };
                var results = conn.Query<Employee>(strSql, param);
                return results;
            }
        }
    }
}
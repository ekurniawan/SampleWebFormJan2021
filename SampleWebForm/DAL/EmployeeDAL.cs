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

        public void Insert(string EmpName, string Designation, 
            string Department, string Qualification)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"insert into Employees(EmpName,Designation,Department,Qualification) 
                values(@EmpName,@Designation,@Department,@Qualification)";
                var param = new
                {
                    EmpName = EmpName,
                    Designation = Designation,
                    Department = Department,
                    Qualification = Qualification
                };
                try
                {
                    int result = conn.Execute(strSql, param);
                    if (result != 1)
                        throw new Exception("Data gagal untuk ditambahkan");
                }
                catch (SqlException sqlEx)
                {
                    throw new Exception($"{sqlEx.Message}");
                }
            }
        }


        public void InsertMyEmployee(MyEmployee employee)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"insert into Employees(LastName,FirstName) values(@LastName,@FirstName)";
                var param = new { LastName = employee.LastName, FirstName = employee.FirstName };
                try
                {
                    int result = conn.Execute(strSql, param);
                    if (result != 1)
                        throw new Exception("Gagal menambahkan data Employee");
                }
                catch (SqlException sqlEx)
                {
                    throw new Exception(sqlEx.Message);
                }
            }
        }
    }
}
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

        public void Insert(string ProductName, int SupplierID, int CategoryID, string QuantityPerUnit,
            decimal? UnitPrice, short? UnitsInStock, short? UnitsOnOrder, short? ReorderLevel, bool Discontinued)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"insert into Products
               (ProductName,SupplierID,CategoryID,QuantityPerUnit,UnitPrice,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued) 
               values (@ProductName,@SupplierID,@CategoryID,@QuantityPerUnit,@UnitPrice,@UnitsInStock,@UnitsOnOrder,@ReorderLevel,@Discontinued)";
                var param = new { ProductName = ProductName, SupplierID = SupplierID, CategoryID = CategoryID, QuantityPerUnit = QuantityPerUnit, UnitPrice = UnitPrice, UnitsInStock = UnitsInStock, UnitsOnOrder = UnitsOnOrder, ReorderLevel = ReorderLevel, Discontinued = Discontinued };
                try
                {
                    int result = conn.Execute(strSql, param);
                    if (result != 1)
                        throw new Exception("Gagal menambahkan Products");
                }
                catch (SqlException sqlEx)
                {
                    throw new Exception(sqlEx.Message);
                }
            }
        }
    }
}
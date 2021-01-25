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
    public class RegistrasiDAL
    {
        private string GetConnStr()
        {
            return WebConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        }

        public void RegistrasiPengguna(Pengguna pengguna)
        {
            using (SqlConnection conn = new SqlConnection(GetConnStr()))
            {
                string strSql = @"insert into Pengguna(Username,Password,Aturan) values(@Username,@Password,@Aturan)";
                var hashPasword = Helper.Helper.GetMd5Hash(pengguna.Password);
                var param = new { Username = pengguna.Username, Password = hashPasword, Aturan = pengguna.Aturan };
                try
                {
                    int result = conn.Execute(strSql, param);
                    if (result != 1)
                        throw new Exception("Gagal melakukan registrasi");
                }
                catch (SqlException sqlEx)
                {
                    throw new Exception(sqlEx.Message);
                }
            }
        }
    }
}
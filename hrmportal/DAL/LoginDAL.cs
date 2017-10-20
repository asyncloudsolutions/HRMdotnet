using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using hrmportal.Domain;

namespace hrmportal.DAL
{
    public class LoginDAL
    {
        public bool IsValidUser(Users _user)
        {
            bool isValid = false;

            string conString = ConfigurationManager.ConnectionStrings["hrmdbconnection"].ToString();

            try
            {
                using (SqlConnection sqlCon = new SqlConnection(conString))
                {
                    sqlCon.Open();
                    using (SqlCommand sqlCmd = new SqlCommand("dbo.spIsValidUser", sqlCon))
                    {
                        sqlCmd.CommandType = CommandType.StoredProcedure;

                        sqlCmd.Parameters.Add("@UserId", SqlDbType.VarChar, 250).Value = _user.UserId;
                        sqlCmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = _user.Password;

                        int row = (int) sqlCmd.ExecuteScalar();

                        if (row > 0)
                        {
                            isValid = true;
                        }
                        else
                        {
                            isValid = false;
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                isValid = false;
            }
                return isValid;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using hrmportal.Domain;
using hrmportal.DAL;
namespace hrmportal.BAL
{
    public class LoginBAL
    {
        LoginDAL objDAL = new LoginDAL();

        public bool IsValidUser(Users _user)
        {
            return objDAL.IsValidUser(_user);
        }
    }
}
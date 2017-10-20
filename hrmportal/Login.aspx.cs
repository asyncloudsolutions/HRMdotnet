using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using hrmportal.Domain;
using hrmportal.BAL;

namespace hrmportal
{
    public partial class Login : System.Web.UI.Page
    {
        LoginBAL objBL = new LoginBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Users objUser = new Users();

            objUser.UserId = username.Text.Trim();
            objUser.Password = password.Text.Trim();

            bool isLoggedIn=objBL.IsValidUser(objUser);

            if(isLoggedIn)
            {
                //redirect to home page
                Response.Redirect("Home.aspx");
            }
            else
            {
                //call javascript and display Invalid user
            }

        }
    }
}
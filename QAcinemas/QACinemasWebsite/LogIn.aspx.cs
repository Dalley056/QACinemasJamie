using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QACinemasWebsite.App_Code;

namespace QACinemasWebsite
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void OnSignInButton_Click(object sender, EventArgs e)
        {
            Response.Write("<script>console.log('Sign In Pressed, registered server-side');</script>");

            string username = "placeholder";
            string password = "placeholder";
            if (Auth.VerifyUsernamePassword(username, password))
            {
                //VERIFICATION TRUE CASE
                //Update session data, redirect
            }
            else
            {
                //VERIFICATION FALSE CASE
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
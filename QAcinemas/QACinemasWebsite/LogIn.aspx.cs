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

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            string username = TextBoxUserName.Value;
            string password = TextBoxPassword.Value;
            if (Auth.VerifyUsernamePassword(username, password))
            {
                //VERIFICATION TRUE CASE
                //Update session data, redirect
                System.Diagnostics.Debug.WriteLine("GOOD!");
            }
            else
            {
                //VERIFICATION FALSE CASE
                System.Diagnostics.Debug.WriteLine("BAD!");
            }
        }
    }
}
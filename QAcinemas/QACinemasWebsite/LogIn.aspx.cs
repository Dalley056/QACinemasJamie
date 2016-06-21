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
            Alert_Composer();
        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            string username = TextBoxUserName.Value;
            string password = TextBoxPassword.Value;
            if (Auth.VerifyUsernamePassword(username, password))
            {
                //VERIFICATION TRUE CASE
                //Update session data, redirect
                DataSetTableAdapters.UsersTableAdapter usertableadapter = new DataSetTableAdapters.UsersTableAdapter();
                Session["LoggedIn"] = true;
                Session["UserInfo"] = usertableadapter.GetDataByUsernameIgnoreActive(username)[0];
                                    //screenTableadApter.GetScreensByCinemaId(1, true);
                System.Diagnostics.Debug.WriteLine("Login passed");
            }
            else
            {
                //VERIFICATION FALSE CASE
                System.Diagnostics.Debug.WriteLine("Login failed");
                Response.Redirect("/LogIn.aspx?alert=2");

            }
        }

        protected void Alert_Composer()
        {
            //Check if alert needed
            if (Request["alert"] != null)
            {
                string alerttype = Request["alert"].ToString(); //get alert string

                switch (alerttype)
                {
                    case "1": //Log in to continue
                        alertcomponent.Attributes["class"] += " alert-info";
                        alertheader.InnerHtml = "Sign in to continue";
                        alertbody.InnerHtml = "This page requires you to sign in before proceeding.";
                        break;
                    case "2": //Login invalid
                        alertcomponent.Attributes["class"] += " alert-danger";
                        alertheader.InnerHtml = "Login Unsuccessful!";
                        alertbody.InnerHtml = "Username and password combination could not be verified. Please try again.";
                        break;
                    case "3": //Signed out
                        alertcomponent.Attributes["class"] += " alert-info";
                        alertheader.InnerHtml = "Logged out!";
                        alertbody.InnerHtml = "User logged out successfully.";
                        break;
                    default:
                        return;
                }
                alertcomponent.Visible = true;
            }
        }
    }
}
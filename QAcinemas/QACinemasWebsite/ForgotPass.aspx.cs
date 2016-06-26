using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Alert_Composer();
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
                        alertcomponent.Attributes["class"] += " alert-warning";
                        alertheader.InnerHtml = "unregestred username";
                        alertbody.InnerHtml = "The email address entered does not exisit in our database";
                        break;
                    case "2": //Login invalid
                        alertcomponent.Attributes["class"] += " alert-danger";
                        alertheader.InnerHtml = "invalid email format!";
                        alertbody.InnerHtml = "Please enter a valid email address.";
                        break;
                    default:
                        return;
                }
                alertcomponent.Visible = true;
            }
        }

    }
}
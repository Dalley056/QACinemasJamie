using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QACinemasWebsite.App_Code;

namespace QACinemasWebsite
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        private bool REQUEST_SENT = false;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            if (!REQUEST_SENT)
            {

                DataSetTableAdapters.UsersTableAdapter userta = new DataSetTableAdapters.UsersTableAdapter();
                DataSet.UsersDataTable data = userta.GetUserByUsername(textBoxUsername.Text, true);

                if (data.Count != 0)
                {
                    PasswordReset.AddRequest(new PasswordReset.PasswordResetRequest(data[0]));
                    
                }


                alertcomponent.Attributes["class"] += " alert-info";
                alertheader.InnerHtml = "Reset Email Sent";
                alertbody.InnerHtml = String.Format("A password reset link has been sent to the email address associated with {0}.<br>" +
                                                    "This link will expire in 15 minutes.<br>" +
                                                    "<a href=\"Login.aspx\">Return to Login</a>", textBoxUsername.Text);
                alertcomponent.Visible = true;


            }
        }
    }
}
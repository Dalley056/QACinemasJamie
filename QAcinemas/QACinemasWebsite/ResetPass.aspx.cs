using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QACinemasWebsite.App_Code;

namespace QACinemasWebsite
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected string request_id;
        protected PasswordReset.PasswordResetRequest request = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["id"] != null)
            {
                request_id = Request["id"].ToString();

                request = PasswordReset.GetRequestByRequestId(request_id);
                
            }
            else
            {
                Response.Redirect("/ForgotPass.aspx");
            }

        }

        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            //TODO: EVERYTHING
        }
    }
}
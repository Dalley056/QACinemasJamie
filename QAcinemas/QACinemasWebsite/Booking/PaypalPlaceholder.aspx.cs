using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class PaypalPlaceholder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            if (TextBoxCVC.Value.Length == 3 && TextBoxCardNumber.Value.Length == 16)
            {
                Response.Redirect("PaymentConfirmation.aspx");                
            }
            if (TextBoxCVC.Value.Length !=3)
            {
                CVCHelp.InnerHtml = "Please enter a 3-digit number";
            }
            else
            {
                CVCHelp.InnerHtml = " This is the 3 digit number on the back of your card ";
            }
            if (TextBoxCardNumber.Value.Length != 16)
            {
                CardNumHelp.InnerHtml = "Please enter a 16-digit number";
            }
            else
            {
                CardNumHelp.InnerHtml = "This is the 16 digit number on the front of your card ";
            }
        }
    }
}
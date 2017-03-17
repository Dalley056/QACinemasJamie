using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class RestPass : System.Web.UI.Page
    {
        protected string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["email"] != null)
            {
                email = Request["email"].ToString();
            }
        }
    }
}
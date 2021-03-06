﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class Members : System.Web.UI.MasterPage
    {
        bool LoginOverrideEnabled = false;                    //DEBUG ONLY, DISABLES LOGIN REQUIREMENT. USE WITH CAUTION
        string LoggedInKey = "LoggedIn";                        //TODO: Change to session key when implemented
        string BaseLoginRequiredPath = "/login.aspx?alert=2&redirect=";   //Login page base path

        protected void Page_Init(object sender, EventArgs e)
        {
            //Triggered on page init, Used to check membership, redirects if not member
            //BASIC IMPLEMENTATION, NEEDS LOGIN IMPLEMENTING BEFORE ENABLING

            if (!LoginOverrideEnabled)
            {
                if (Session[LoggedInKey] != null)
                {
                    if ((bool)Session[LoggedInKey]) return;     //True, allow load
                    else { }                                    //False
                }
                Response.Redirect(BaseLoginRequiredPath + Request.RawUrl);  //False, redirect to login
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
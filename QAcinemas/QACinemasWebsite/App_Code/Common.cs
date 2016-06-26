using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QACinemasWebsite.App_Code
{
    /// <summary>
    /// QACinemasWebsite common functionality class
    /// </summary>
    public class Common
    {

        /// <summary>
        /// Gets the IP address for the client in a specified context.
        /// </summary>
        /// <param name="context">HttpContext for the session.</param>
        /// <returns>String of IP address</returns>
        public static string GetIPAddress(System.Web.HttpContext context)
        {
            //System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
    }
}
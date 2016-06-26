using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
using QACinemasWebsite;


namespace QACinemasWebsite.App_Code
{
    /// <summary>
    /// QACinemasWebsite common functionality class
    /// </summary>
    public class Common
    {
        /// <summary>
        /// Email Subclass
        /// </summary>
        public static class Email
        {
            static string Username = "qacinemasbot@gmail.com";
            static string Password = "QACinemas";
            static int Port = 587;
            static bool SSL = true;
            static string Server = "smtp.gmail.com";

            /// <summary>
            /// Sends a single email to an email address
            /// </summary>
            /// <param name="To">Recepient email address</param>
            /// <param name="Subject">Subject of the email</param>
            /// <param name="Body">Body of the email</param>
            public static void SendEmail(string To, string Subject, string Body)
            {
                var client = new SmtpClient(Server, Port)
                {
                    Credentials = new NetworkCredential(Username, Password),
                    EnableSsl = true
                };
                client.Send(Username, To, Subject, Body);
            }
        }

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
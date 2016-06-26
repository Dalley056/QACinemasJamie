using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;


namespace QACinemasWebsite
{

    public partial class ContactUs : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ButtonSend_Click(object sender, EventArgs e)
        {


            string HOST = "smtp.gmail.com";
            int PORT = 587;
            string CLIENT_EMAIL = "qacinemasbot@gmail.com";
            string CLIENT_PASSWD = "QACinemas";
            string RECEPIENT_EMAIL = CLIENT_EMAIL;



            var client = new SmtpClient(HOST, PORT)
            {
                Credentials = new NetworkCredential(CLIENT_EMAIL, CLIENT_PASSWD),
                EnableSsl = true

            };


            client.Send(CLIENT_EMAIL, RECEPIENT_EMAIL, txtEmail.Text + " - " + txtSubject.Text, txtMessage.Text);

            string RESPONSE_MESSAGE = String.Format("Thank you for your feedback. we recieved your feedback:<br><br>Subject: {0}<br><br>{1}<hr>END", txtSubject.Text, txtMessage.Text);
            client.Send(CLIENT_EMAIL, txtEmail.Text, "QACinemas - Feedback", RESPONSE_MESSAGE);
        }
    


       }
      }
    
  
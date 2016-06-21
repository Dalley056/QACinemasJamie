using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QACinemasWebsite.App_Code;
using System.Net.Mail;
using System.Net;


namespace QACinemasWebsite
{
    public partial class register : System.Web.UI.Page
    {
        int MINLENGTH_FIRSTNAME = 1;
        int MINLENGTH_LASTNAME = 2;
        int MINLENGTH_EMAIL = 6;
        int MINLENGTH_USERNAME = 3;
        int MINLENGTH_PASSWORD = 6;
        int MINLENGTH_PHONE = 6;
        int MINLENGTH_PCODE = 3;
        int MINLENGTH_LINE1 = 1;
        int MINLENGTH_LINE2 = 0;
        int MINLENGTH_REGION = 1;
        int MINLENGTH_COUNTRY = 2;

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void textBoxEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void textBoxRegister_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("REGISTER CLICKED");
            string ADDR1        = textBoxALine1.Text;
            string ADDR2        = textBoxALine2.Text;
            string CITY         = textBoxACity.Text;
            string REGION       = textBoxARegion.Text;
            string COUNTRY      = textBoxACountry.Text;
            string POSTCODE     = textBoxAPost.Text;
            string USERNAME     = textBoxUsername.Text;
            string PASSWORD     = textBoxPassword.Text;
            string EMAIL        = textBoxEmail.Text;
            string PHONENO      = textBoxPhonNo.Text;
            string FIRSTNAME    = textBoxFirstN.Text;
            string LASTNAME     = textBoxLastN.Text;

            //Validate


            //Register
            Register_User(ADDR1, ADDR2, CITY, REGION, COUNTRY, POSTCODE, USERNAME, PASSWORD, EMAIL, PHONENO, FIRSTNAME, LASTNAME);



        }

        protected void textBoxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Register_User(string addr1, string addr2, string city, string region, string country, string postcode,
            string username, string password, string email, string phoneno, string firstname, string lastname)
        {
            //STEP 1: Get Hash/Salt for password
            Auth.AuthData authdata = Auth.PasswordToHashSalt(password);

            //STEP 2: (Optional) Attempt to get coords for address
            string coordsX = "0";
            string coordsY = "0";


            //STEP 3: Register!
            DataSetTableAdapters.QueriesTableAdapter querytableadapter = new DataSetTableAdapters.QueriesTableAdapter();
            querytableadapter.RegisterUser(addr1, addr2, city, region, country, postcode, coordsX, coordsY, true,
                                            username, authdata.Hash, authdata.Salt, email, phoneno, firstname, lastname, true);
            

        }
    }
}
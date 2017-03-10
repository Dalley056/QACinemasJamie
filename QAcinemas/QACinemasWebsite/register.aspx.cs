using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QACinemasWebsite.App_Code;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

namespace QACinemasWebsite
{
    public partial class register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Alert_Composer();
        }

        protected void textBoxEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void textBoxRegister_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("REGISTER CLICKED");
            string ADDR1 = textBoxALine1.Text;
            string ADDR2 = textBoxALine2.Text;
            string CITY = textBoxACity.Text;
            string REGION = textBoxARegion.Text;
            string COUNTRY = textBoxACountry.Text;
            string POSTCODE = textBoxAPost.Text;
            string USERNAME = textBoxUsername.Text;
            string PASSWORD = textBoxPassword.Text;
            string PASSWORD2 = inputPasswordConfirm.Text;
            string EMAIL = textBoxEmail.Text;
            string PHONENO = textBoxPhonNo.Text;
            string FIRSTNAME = textBoxFirstN.Text;
            string LASTNAME = textBoxLastN.Text;

            //Validate

            int MINLENGTH_FIRSTNAME = 2;
            int MINLENGTH_LASTNAME = 2;
            int MINLENGTH_EMAIL = 6;
            int MINLENGTH_USERNAME = 3;
            int MINLENGTH_PASSWORD = 6;
            int MINLENGTH_PHONE = 6;
            int MINLENGTH_PCODE = 3;
            int MINLENGTH_LINE1 = 1;
            int MINLENGTH_LINE2 = 0;
            int MINLENGTH_REGION = 3;
            int MINLENGTH_COUNTRY = 4;

            if (MINLENGTH_FIRSTNAME <= 2 ||
            MINLENGTH_LASTNAME <= 2 ||
            MINLENGTH_EMAIL <= 6 ||
            MINLENGTH_USERNAME <= 3 ||
            MINLENGTH_PASSWORD <= 6 ||
            MINLENGTH_PHONE <= 6 ||
            MINLENGTH_PCODE <= 3 ||
            MINLENGTH_LINE1 <= 1 ||
            MINLENGTH_LINE2 <= 0 ||
            MINLENGTH_REGION <= 3 ||
            MINLENGTH_COUNTRY <= 4) valadetErr(6); 

            checkMail(EMAIL);
            checkPass(PASSWORD, PASSWORD2);

            if (PHONENO.Length < 8 || PHONENO.Length > 15) valadetErr(5);
            //Register
            Register_User(ADDR1, ADDR2, CITY, REGION, COUNTRY, POSTCODE, USERNAME, PASSWORD, EMAIL, PHONENO, FIRSTNAME, LASTNAME);
        }
        //validation methods
        private void checkMail(string email)
        {
            bool isValid = true;

            isValid = Regex.IsMatch(email, @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase);

            if (!isValid)
            {
                valadetErr(2);
            }

        }

        private void checkPass(string pass1, string pass2)
        {
            bool isValid = true;
            int error = 3;

            //check if password is valid
            if (pass1.Length < 6 || pass1.Length > 20 || pass1.Any(char.IsDigit)) isValid = false;

            if (pass1 != pass2)
            //check if password match
            {
                isValid = false;
                error = 4;
            }

            if (!isValid)
            //send error message
            {
                valadetErr(error);
            }
        }

        private void valadetErr(int err)
        {
            Response.Redirect("/register.aspx?alert=" + err);
        }


        // end of validation method
        protected void textBoxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Register_User(string addr1, string addr2, string city, string region, string country, string postcode,
            string username, string password, string email, string phoneno, string firstname, string lastname)
        {
            //STEP 1: Get Hash/Salt for password
            Auth.AuthData authdata = Auth.StringToHashSalt(password);

            //STEP 2: (Optional) Attempt to get coords for address
            string coordsX = "0";
            string coordsY = "0";


            //STEP 3: Register!
            try
            {
                DataSetTableAdapters.QueriesTableAdapter querytableadapter = new DataSetTableAdapters.QueriesTableAdapter();
                querytableadapter.RegisterUser(addr1, addr2, city, region, country, postcode, coordsX, coordsY, true,
                                                username, authdata.Hash, authdata.Salt, email, phoneno, firstname, lastname, true);
            }
            catch (Exception exc)
            {
                if (exc.Message.Contains("Cannot insert duplicate key in object 'dbo.Users'"))
                    Alert_Composer("alert-danger", "Could not register account!", "Username already exists. Try another one.");
                return;
            }

            Response.Redirect("/Login.aspx?alert=4&username=" + textBoxUsername.Text);



        }
        protected void Alert_Composer()
        {


            if (Request["alert"] != null)
            {
                string alerttype = Request["alert"].ToString();

                switch (alerttype)
                {
                    case "1": //Log in to continue
                        Alert_Composer("alert-danger", "Could not register account", "Please try again.");
                        break;
                    case "2": //Email address not in correct format
                        Alert_Composer("alert-warning", "Email Address must be a valid format e.g. usernam@domain.com ", "Please try again.");
                        break;
                    case "3": //Password is not valid
                        Alert_Composer("alert-warning", "Password must be over 6 characters, under 20 and must contain at least one number", "Please try again.");
                        break;
                    case "4": //Password does not match
                        Alert_Composer("alert-warning", "Password and repeat password do not match", "Please try again.");
                        break;
                    case "5": //Log in to continue
                        Alert_Composer("alert-warning", "Phone Number length must be between 8-15 characters", "Please try again.");
                        break;
                    case "6": //Log in to continue
                        Alert_Composer("alert-warning", "Please make sure you have entered the form correctly and check that everything is valid", "Please try again.");
                        break;
                    default:
                        return;
                }
                alertcomponent.Visible = true;
            }
        }
        protected void Alert_Composer(string attribute, string header, string body, bool visible = true)
        {
            alertcomponent.Attributes["class"] += " " + attribute;
            alertheader.InnerHtml = header;
            alertbody.InnerHtml = body;
            alertcomponent.Visible = visible;
        }
    }
}
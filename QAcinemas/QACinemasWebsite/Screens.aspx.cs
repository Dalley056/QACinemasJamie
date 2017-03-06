using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class Screens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //use data item to retrieve all the cinemas and populate dlstCinema. Then use the default cinema (select main one or
            //the one nearest to user if location data is turned on?) to selecte all the availabel screens and populate
            //dlstScreens using them.
            //Also display images for the default cinema / screen so the image area isn't empty.

            //imgScreenView.ImageUrl =
            //imgSeatLayout.ImageUrl =

            //If a data source is used
            //dlstCinema.DataBind();

            //For each item in the dataset returned do this
            //dlstCinema.Items.Add(new ListItem("CinemaName", "CinemaID"));

            string[] testList = new string[10];
            testList[0] = "First";
            testList[1] = "Second";
            testList[2] = "Third";
            testList[3] = "Fourth";
            testList[4] = "Fifth";
            testList[5] = "Sixth";
            testList[6] = "Seventh";
            testList[7] = "Eighth";
            testList[8] = "Ninth";
            testList[9] = "Tenth";

            //Like this but use while(r.read()) and pass in cinema name and id
            foreach(string s in testList)
            {
                dlstCinema.Items.Add(new ListItem(s, "1"));
            }

        }

        protected void dlstCinema_SelectedIndexChanged(object sender, EventArgs e)
        {
            //use data item to retrieve all the available screens for the selected cinema and display them in dlstScreen.
            //also display the images for the first screen in that cinemas list

            //imgScreenView.ImageUrl =
            //imgSeatLayout.ImageUrl =
        }

        protected void dlstScreen_SelectedIndexChanged(object sender, EventArgs e)
        {
            //display the images for the selected screen / cinema combination

            //imgScreenView.ImageUrl =
            //imgSeatLayout.ImageUrl =
        }
    }
}
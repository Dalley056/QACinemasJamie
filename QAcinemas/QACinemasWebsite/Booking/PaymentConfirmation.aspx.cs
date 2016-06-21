using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class PaymentConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Username"] = "dlee";
            // get name? user id? adddress?
            Session["Cinema"] = "Salford";
            Session["Movie"] = "Logan";
            Session["ShowingDateTime"] = "2007-05-08 12:35:29.123";
            Session["BookingID"] = "3";
            //Session["PriceTotal"] = ;
            // costs?

            int year = Int32.Parse(Session["ShowingDateTime"].ToString().Substring(2, 2));
            int month = Int32.Parse(Session["ShowingDateTime"].ToString().Substring(5, 2));
            int day = Int32.Parse(Session["ShowingDateTime"].ToString().Substring(8, 2));
            //Response.Write("Year is  " + year);
            //Response.Write("<br/>");
            //Response.Write("Month is  " + month);
            //Response.Write("<br/>");
            //Response.Write("Day is  " + day);
            //Response.Write(Session["Cinema"].ToString().Substring(0, 2) + Session ["Movie"].ToString().Substring(0, 2));

            //"NoSeats" - int
            //Number of seats selected for the current booking
            //    "ShowingID" - int
            //    ID of the showing for the current booking
            //        "SelectedCinemaID" - int
            //        ID of the cinema for the current booking
            //            "SelectedMovieID" - int
            //            ID of the film for the current booking

            // QUERIES

            DataSetTableAdapters.CinemasTableAdapter cinematableadapter = new DataSetTableAdapters.CinemasTableAdapter();
            DataSet.CinemasDataTable cinemaData = cinematableadapter.GetCinemaByCinemaId(Convert.ToInt64(Session["SelectedCinemaID"]), true);

            DataSetTableAdapters.FilmsTableAdapter movietableadapter = new DataSetTableAdapters.FilmsTableAdapter();
            DataSet.FilmsDataTable movieData = movietableadapter.GetFilmById(Convert.ToInt64(Session["SelectedMovieID"]));

            //TextArea1.Value = "\nShowing of: " + Session["Movie"] + " at " + Session["Cinema"] + 
            TextArea1.Value = "\nShowing of: " + movieData[0].Title + " at " + cinemaData[0].Name +
                " Cinema \n \n" + "on " + day + "/"+month + "/" + year + " at: " + Session["ShowingDateTime"].ToString().Substring(11, 5) + 
                "\n \nYour seats are \nseat1 \nseat2 \nseat3" + 
                "\n \nYour confirmation ID is :" + cinemaData[0].Name.ToString().Substring(0, 2).ToUpper() + 
                Session["ShowingDateTime"].ToString().Substring(2, 2) + movieData[0].Title.ToString().Substring(0, 2).ToUpper() +  
                Session["BookingID"] + " \n \nYour total is:  ";


        }

        protected void Return_Click(object sender, EventArgs e)
        {
             //Session["DateTime"] = null;
            //Session["BookingID"] = null;           
        }

    }
}
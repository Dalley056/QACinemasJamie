using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite.Booking
{
    public partial class SelectSeats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Then use the cinema id and film id retrieved to display that info too
            Session["ShowingID"] = Request["sID"];
            //Session["SeatPrice"] = string.Format("{0:C}", Convert.ToDecimal(Request["price"]));
            Session["SeatPrice"] = Request["price"];

            DataSetTableAdapters.ShowingsTableAdapter showingsAdapter = new DataSetTableAdapters.ShowingsTableAdapter();
            //DataSet.ShowingsDataTable showingsData = showingsAdapter.GetShowingsByCinemaId(Session["ShowingID"].ToString());
            //Test*********************************************
            DataSet.ShowingsDataTable showingsData = showingsAdapter.GetShowingByShowingId(Convert.ToInt64(Session["ShowingID"].ToString()));

            DataSetTableAdapters.ScreensTableAdapter screenAdapter = new DataSetTableAdapters.ScreensTableAdapter();
            DataSet.ScreensDataTable screenData = screenAdapter.GetScreenByScreenId(showingsData[0].ScreenId, true);

            DataSetTableAdapters.FilmsTableAdapter taFilms = new DataSetTableAdapters.FilmsTableAdapter();
            DataSet.FilmsDataTable fData = taFilms.GetFilmById(Convert.ToInt64(Session["SelectedMovieID"]));
            DataSet.ScreensRow row1 = showingsData[0].ScreensRow;
          
            if (screenData[0].Deluxe == false)
            {
                Session["ScreenType"] = "Standard";
            }
            else
            {
                Session["ScreenType"] = "Deluxe";
            }

            Session["ShowingDateTime"] = showingsData[0].StartTime;
            lblFilmStuff.Text = "Booking for the " + showingsData[0].StartTime.ToString("H:mm") + " showing of " + fData[0].Title + " in a " + Session["ScreenType"] + " screen on " + showingsData[0].StartTime.ToString("yyyy'-'MM'-'dd");
            lblFilmStuff.Text += " " + Session["SeatPrice"];
        }

        protected void dlstNoSeats_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["NoSeats"] = dlstNoSeats.SelectedValue;
        }

        protected void btnToPay_Click(object sender, EventArgs e)
        {
            Session["NoSeats"] = dlstNoSeats.SelectedValue;
            string[] seats = new string[Convert.ToInt64(dlstNoSeats.SelectedValue)];
            for(int i = 0; i < Convert.ToInt64(dlstNoSeats.SelectedValue); i++)
            {
                seats[i] = "a" + i;
            }
            Session["Seats"] = seats;
            //string[] seat2 = Session["Seats"] as string[];
            Response.Redirect("PaypalPlaceholder.aspx");
        }
    }
}
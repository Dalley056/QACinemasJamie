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

            DataSetTableAdapters.ShowingsTableAdapter showingsAdapter = new DataSetTableAdapters.ShowingsTableAdapter();
            //DataSet.ShowingsDataTable showingsData = showingsAdapter.GetShowingsByCinemaId(Session["ShowingID"].ToString());
            //Test*********************************************
            DataSet.ShowingsDataTable showingsData = showingsAdapter.GetData();

            DataSetTableAdapters.FilmsTableAdapter taFilms = new DataSetTableAdapters.FilmsTableAdapter();
            DataSet.FilmsDataTable fData = taFilms.GetFilmById(Convert.ToInt64(Session["MovieID"]));

            //Format the start times*************************
            lblFilmStuff.Text = "Booking for the " + showingsData[0].StartTime + " showing of " + fData[0].Title + " on " + showingsData[0].StartTime;

        }

        protected void dlstNoSeats_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["NoSeats"] = dlstNoSeats.SelectedValue;
        }
    }
}
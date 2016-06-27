using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite.Booking
{
    public partial class SelectScreening : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSetTableAdapters.CinemasTableAdapter cinematableadapter = new DataSetTableAdapters.CinemasTableAdapter();
                DataSet.CinemasDataTable data = cinematableadapter.GetData();

                foreach (DataSet.CinemasRow row in data)
                {
                    dlstCinema.Items.Add(new ListItem(row.Name.ToString(), row.Id.ToString()));
                }

                Session["SelectedCinemaID"] = dlstCinema.SelectedValue;

                dlstMovie.Items.Add(new ListItem("<Select>", "0"));

                DataSetTableAdapters.FilmsTableAdapter taFilms = new DataSetTableAdapters.FilmsTableAdapter();
                DataSet.FilmsDataTable fData = taFilms.GetData();

                foreach (DataSet.FilmsRow row in fData)
                {
                    dlstMovie.Items.Add(new ListItem(row.Title.ToString(), row.Id.ToString()));
                }

                dlstScreenType.Items.Add(new ListItem("Any", "0"));
                dlstScreenType.Items.Add(new ListItem("Standard", "false"));
                dlstScreenType.Items.Add(new ListItem("Delux", "true"));

                Session["ScreenType"] = dlstScreenType.SelectedValue;
            }
        }

        protected void dlstCinema_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SelectedCinemaID"] = dlstCinema.SelectedValue;
        }

        protected void dlstMovie_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dlstMovie.SelectedValue == "0")
            {
                lblMovieDescription.Text = "No Film Selected!";
                imgSelectedMovie.ImageUrl = null;
                Session["SelectedMovieID"] = null;
            }
            else
            {
                DataSetTableAdapters.FilmsTableAdapter taFilms = new DataSetTableAdapters.FilmsTableAdapter();
                DataSet.FilmsDataTable fData = taFilms.GetFilmById(Convert.ToInt64(dlstMovie.SelectedValue.ToString()));
                lblMovieDescription.Text = fData[0].Description;
                imgSelectedMovie.ImageUrl = fData[0].ImgSmall;
                Session["SelectedMovieID"] = fData[0].Id;
                d1.InnerHtml = "";
                getFilmShowings();
            }
        }

        protected void dlstScreenType_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ScreenType"] = dlstScreenType.SelectedValue;
            d1.InnerHtml = "";

            if (Session["ScreenType"].ToString() == "0")
            {
                getFilmShowings();
            }
            else if(Session["ScreenType"].ToString() == "true")
            {
                getFilmShowingsWithScreenType();
            }
            else if(Session["ScreenType"].ToString() == "false")
            {
                getFilmShowingsWithScreenType();
            }
        }

        protected void dlstTime_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void getFilmShowings()
        {
            DataSetTableAdapters.ShowingsTableAdapter taShowings = new DataSetTableAdapters.ShowingsTableAdapter();
            DataSet.ShowingsDataTable sData = taShowings.GetShowingsByCinemaIdFilmId(Convert.ToInt64(dlstMovie.SelectedValue.ToString()), true, Convert.ToInt64(dlstCinema.SelectedValue.ToString()));
            foreach(DataSet.ShowingsRow r in sData)
            {
                d1.InnerHtml += "<a href='SelectSeats.aspx?sID=" + r.Id + "&price=" + r.CostPerSeat + "'>" + r.StartTime + "</a>";
            }
        }

        private void getFilmShowingsWithScreenType()
        {
            DataSetTableAdapters.ShowingsTableAdapter taShowings = new DataSetTableAdapters.ShowingsTableAdapter();
            DataSet.ShowingsDataTable sData = taShowings.GetShowingsByCinemaIdFilmIdDeluxe(Convert.ToInt64(dlstMovie.SelectedValue.ToString()), true, Convert.ToInt64(dlstCinema.SelectedValue.ToString()), Convert.ToBoolean(Session["ScreenType"].ToString()));
            foreach (DataSet.ShowingsRow r in sData)
            {
                d1.InnerHtml += "<a href='SelectSeats.aspx?sID=" + r.Id + "'>" + r.StartTime + "</a>";
            }
        }
    }
}
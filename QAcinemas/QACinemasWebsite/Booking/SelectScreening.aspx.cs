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
                dlstScreenType.Items.Add(new ListItem("Standard", "1"));
                dlstScreenType.Items.Add(new ListItem("Delux", "2"));         
            }
        }

        protected void dlstCinema_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SelectedCinemaID"] = dlstCinema.SelectedValue;
        }

        protected void dlstMovie_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSetTableAdapters.FilmsTableAdapter taFilms = new DataSetTableAdapters.FilmsTableAdapter();
            DataSet.FilmsDataTable fData = taFilms.GetFilmById(Convert.ToInt64(dlstMovie.SelectedValue.ToString()));
            lblMovieDescription.Text = fData[0].Description;
            Session["SelectedMovieID"] = fData[0].Id;
        }

        protected void dlstScreenType_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ScreenType"] = dlstScreenType.SelectedValue;
        }

        protected void dlstTime_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class MovieDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.FilmsTableAdapter filmtableadapter = new DataSetTableAdapters.FilmsTableAdapter();

            DataSet.FilmsDataTable data = filmtableadapter.GetFilmById(1);

            if(data != null && data.Count == 1)
            {
                DataSet.FilmsRow film = data[0];
                //classificationdata.InnerHtml = film.ClassificationId

                titledata.InnerHtml = film.Title;

                descriptiondata.InnerHtml = film.Description;

                //releasedatedata.InnerHtml = film.DateAdded.ToString();

                durationdata.InnerHtml = film.Duration.ToString() + " hrs";



            }
        }
    }
}
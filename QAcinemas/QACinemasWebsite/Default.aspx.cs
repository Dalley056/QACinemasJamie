using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

           
        }

        protected void sliderFill()
        {
            var films = new DataSetTableAdapters.FilmsTableAdapter();

            DataSet.FilmsDataTable filmData = films.GetFeaturedFilms();

            foreach(DataSet.FilmsRow featurnedFilm in filmData)
            {
                Response.Write("<div>");
                Response.Write("<img data-u='image' src="+ featurnedFilm.ImgLarge+" />");
                Response.Write("<div style='position:absolute;top:2px; left:4px; width: 100px; height: 30px; z-index:0; font-size:20px; color:#fbfbfb;line-height:30px;text-align:center;'>");
                Response.Write(featurnedFilm.Title);
                Response.Write("</div> </div>");
            } 
        }

    }
}
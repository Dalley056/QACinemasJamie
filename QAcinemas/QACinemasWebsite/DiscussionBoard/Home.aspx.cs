using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QACinemasWebsite.App_Code;

namespace QACinemasWebsite.DiscussionBoard
{
    public partial class Home : System.Web.UI.Page
    {
        public class DiscussionPanel
        {
            public DataSet.FilmsRow Film;
            public DataSet.PostsRow LastPost;
            public string URL;

            public DiscussionPanel(DataSet.FilmsRow film, DataSet.PostsRow lastpost, string url)
            {
                Film = film;
                LastPost = lastpost;
                URL = url;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected List<DiscussionPanel> Get_Threads()
        {
            List<DiscussionPanel> panels = new List<DiscussionPanel> { };

            DataSetTableAdapters.FilmsTableAdapter filmsta = new DataSetTableAdapters.FilmsTableAdapter();
            DataSet.FilmsDataTable films = filmsta.GetActiveFilmsAlphabetically();

            foreach (DataSet.FilmsRow film in films)
            {
                DataSetTableAdapters.PostsTableAdapter poststa = new DataSetTableAdapters.PostsTableAdapter();
                DataSet.PostsDataTable posts = poststa.GetPostsByFilmId(film.Id, true);
                DataSet.PostsRow lastpost = null;
                if (posts.Count > 0)
                {
                    lastpost = posts.Last();
                }

                string url = "/DiscussionBoard/discussion.aspx?id=" + film.Id.ToString();

                DiscussionPanel panel = new DiscussionPanel(film, lastpost, url);
                panels.Add(panel);
            }

            return panels;
        }
    }
}
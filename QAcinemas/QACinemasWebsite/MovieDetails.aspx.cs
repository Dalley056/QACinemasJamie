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
            long retrievedFilmId = 2; //**    need to be dynamic -- pulled as a request variable      **//

            //retrievedFilmId = long.Parse(Request["FilmId"].ToString());

            //Retrieves the film's info
            DataSetTableAdapters.FilmsTableAdapter filmTA = new DataSetTableAdapters.FilmsTableAdapter();

            DataSet.FilmsDataTable dataFilms = filmTA.GetFilmById(retrievedFilmId);

            //Retrieves the classification of the film
            DataSetTableAdapters.ClassificationsTableAdapter classificationTA = new DataSetTableAdapters.ClassificationsTableAdapter();

            DataSet.ClassificationsDataTable dataClassification = classificationTA.GetClassificationByFilmId(retrievedFilmId, true);

            //Retreives a contributor's info
            DataSetTableAdapters.ContributorsTableAdapter contributorTA = new DataSetTableAdapters.ContributorsTableAdapter();

            DataSet.ContributorsDataTable dataContributors;

            //Retreives actors for the film
            DataSetTableAdapters.FilmsContributorsTableAdapter filmcontributorActorsTA = new DataSetTableAdapters.FilmsContributorsTableAdapter();

            DataSet.FilmsContributorsDataTable dataActors = filmcontributorActorsTA.GetActorsByFilmId(retrievedFilmId, true);

            //Retreives directors for the film
            DataSetTableAdapters.FilmsContributorsTableAdapter filmcontributorTA = new DataSetTableAdapters.FilmsContributorsTableAdapter();

            DataSet.FilmsContributorsDataTable dataDirectors = filmcontributorTA.GetDirectorsByFilmId(1, true);


            if (dataFilms != null && dataFilms.Count == 1)
            {
                DataSet.FilmsRow film = dataFilms[0];

                DataSet.ClassificationsRow classificationFilm = dataClassification[0];

                imagelargedata.InnerHtml = "<img src='" + film.ImgLarge + "' class='img-thumbnail' title='" + film.Title + "large' style='max-height:100%;max-width:100%'/>";

                classificationdata.InnerHtml = "<img src='" + classificationFilm.ImgSmall + "' class='img-thumbnail' title='" + classificationFilm.Title + "Classification' />";

                titledata.InnerHtml = "<h3>" + film.Title + "</h3>";

                descriptiondata.InnerHtml = "<p>" + film.Description + "</p>";

                moviespecificinformation.InnerHtml += "<dl>";
                moviespecificinformation.InnerHtml += "<dt>Release Date</dt>";
                moviespecificinformation.InnerHtml += "<dd>" + film.ReleaseDate.ToLongDateString() + "</dd>";
                
                moviespecificinformation.InnerHtml += "<dt>Running Time</dt>";
                moviespecificinformation.InnerHtml += "<dd>" + film.Duration.ToString() + " mins</dd>";

                if (dataActors.Count == 0 && dataDirectors.Count == 0)    //no rows of actors or directors for that film
                {
                    moviespecificinformation.InnerHtml += "<dt>No actors or directors to be displayed. Please consult site administrator</dt>";
                }
                else
                {
                    moviespecificinformation.InnerHtml += "<dt>Director</dt>";

                    //getting each director in the film
                    foreach (DataSet.FilmsContributorsRow row in dataDirectors)
                    {
                        dataContributors = contributorTA.GetContributorByContributorId(row.ContributorId, true);

                        DataSet.ContributorsRow contributorinfo = dataContributors[0];
                        
                        moviespecificinformation.InnerHtml += "<dd>" + contributorinfo.FirstName + " " + contributorinfo.LastName + "</dd>";
                    }

                    
                    moviespecificinformation.InnerHtml += "<dt>Cast</dt>";

                    //getting each actor in the film
                    foreach (DataSet.FilmsContributorsRow row in dataActors)
                    {
                        dataContributors = contributorTA.GetContributorByContributorId(row.ContributorId, true);

                        DataSet.ContributorsRow contributorinfo = dataContributors[0];
                        
                        moviespecificinformation.InnerHtml += "<dd>" + contributorinfo.FirstName + " " + contributorinfo.LastName + "</dd>";
                    }
                }

                moviespecificinformation.InnerHtml += "</dl>";

            }
            
        }

        protected List<String> ListOfFilmSmallImages(long filmid)
        {
            string SmallImagesDB;

            List<String> SmallImagesSplitted = new List<string>();

            //Retrieves the film's info
            DataSetTableAdapters.FilmsTableAdapter filmTA = new DataSetTableAdapters.FilmsTableAdapter();

            DataSet.FilmsDataTable dataFilms = filmTA.GetFilmById(filmid);

            if (dataFilms != null && dataFilms.Count == 1)
            {
                DataSet.FilmsRow film = dataFilms[0];

                SmallImagesDB = film.ImgSmall;

                SmallImagesSplitted = SmallImagesDB.Split(',').ToList();
            }

            return SmallImagesSplitted;
        }
    }
}
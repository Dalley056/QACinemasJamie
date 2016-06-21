using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace QACinemasWebsite
{
    public partial class MovieListingGallarey : System.Web.UI.Page
    {

        //need to pass in the sql connection to the new instance of the conection
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
           // con.Open();
           // cmd.Connection = con;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmd.CommandText = "select GenreId from FilmsGenres";

            int genreNum = Convert.ToInt32(cmd);


            cmd.CommandText = "select Films.Imdid, films.Title from genres innerjoin filmsgenres on genres.id = filmgenres.genreID inner oin film on filmgneres.filmid = Films.id where genres=" + DropDownList1.Text + "'";

            SqlDataReader r = cmd.ExecuteReader();

            while (r.Read())
            {
                string img = r[0].ToString();
                string title = r[1].ToString();


                for (int i = 0; i < genreNum; i++)
                {
                    Response.Write("<div class='row'>");
                    Response.Write("<div class='col - sm - 3'<img src ='" + img + "' style=' width: 200px; height: 228px';/>");
                    Response.Write("<br>");
                    Response.Write("<asp:Label ID='Label2' runat='server' Text='" + img + "'></asp:Label>");
                    Response.Write("</br>");
                    Response.Write("</br>");

                    if (i % 4 == 0)
                    {
                        Response.Write("<br/>");
                    }
                }
            }
        }
    }
}
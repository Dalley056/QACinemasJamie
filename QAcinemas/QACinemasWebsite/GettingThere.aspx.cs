using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class GettingThere : System.Web.UI.Page
    {
        protected decimal lat, lon;

        protected string line1, line2, city, region, country, postcode;

        protected string name, cinemaImg, parkingImg, Description;

        protected void Page_Load(object sender, EventArgs e)
        {
            var address = new DataSetTableAdapters.AddressesTableAdapter();
            var cinima = new DataSetTableAdapters.CinemasTableAdapter();
            int cinemaId = 1;
            DataSetTableAdapters.CinemasTableAdapter cinemas = new DataSetTableAdapters.CinemasTableAdapter();

            if (!IsPostBack)
            {
                DataSet.CinemasDataTable listCinemas = cinima.GetData();

                DDLCinimas.DataSource = listCinemas;
                DDLCinimas.DataBind();
            }
            


            if (Request["cinema"] != null)
            {
                cinemaId = Int32.Parse(Request["cinema"].ToString());
            }

            cinemaId = Int32.Parse(DDLCinimas.SelectedValue);
            DataSet.AddressesDataTable addressData = address.GetAddressByCinemaId(cinemaId, true);

            if (addressData != null && addressData.Count == 1)
            {
                //cords for google maps
                lat = Convert.ToDecimal(addressData[0].CoordY);
                lon = Convert.ToDecimal(addressData[0].CoordX);

                //address details
                line1 = addressData[0].Line1;
                line2 = addressData[0].Line2;
                city = addressData[0].City;
                region = addressData[0].Region;
                country = addressData[0].Country;
                postcode = addressData[0].Postcode;

            }

            DataSet.CinemasDataTable cinemaData = cinima.GetCinemaByCinemaId(cinemaId, true);

            if (cinemaData != null && cinemaData.Count == 1)
            {
                name = cinemaData[0].Name;
                cinemaImg = cinemaData[0].ImgLarge;
                parkingImg = cinemaData[0].ImgParking;
                Description = cinemaData[0].Description;
            }
            




        }
    }
}
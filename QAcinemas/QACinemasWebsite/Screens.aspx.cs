using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class Screens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //use data item to retrieve all the cinemas and populate dlstCinema. Then use the default cinema (select main one or
            //the one nearest to user if location data is turned on?) to select all the available screens and populate
            //dlstScreens using them.
            //Also display images for the default cinema / screen so the image area isn't empty.

            //imgScreenView.ImageUrl =
            //imgSeatLayout.ImageUrl =

            if (!IsPostBack)
            {
                DataSetTableAdapters.CinemasTableAdapter cinematableadapter = new DataSetTableAdapters.CinemasTableAdapter();
                DataSet.CinemasDataTable data = cinematableadapter.GetData();

                foreach (DataSet.CinemasRow row in data)
                {
                    dlstCinema.Items.Add(new ListItem(row.Name.ToString(), row.Id.ToString()));
                }

                DataSetTableAdapters.ScreensTableAdapter screenTableadApter = new DataSetTableAdapters.ScreensTableAdapter();
                DataSet.ScreensDataTable screenData = screenTableadApter.GetScreensByCinemaId(1, true);
                dlstScreen.Items.Clear();
                foreach (DataSet.ScreensRow row in screenData)
                {
                    dlstScreen.Items.Add(new ListItem(row.Name.ToString(), row.Id.ToString()));
                }
            }
        }

        protected void dlstCinema_SelectedIndexChanged(object sender, EventArgs e)
        {
            //use data item to retrieve all the available screens for the selected cinema and display them in dlstScreen.
            //also display the images for the first screen in that cinemas list
            DataSetTableAdapters.ScreensTableAdapter screenTableadApter = new DataSetTableAdapters.ScreensTableAdapter();
            DataSet.ScreensDataTable screenData = screenTableadApter.GetScreensByCinemaId(Convert.ToInt64(dlstCinema.SelectedValue), true);

            dlstScreen.Items.Clear();

            foreach (DataSet.ScreensRow row in screenData)
            {
                dlstScreen.Items.Add(new ListItem(row.Name.ToString(), row.Id.ToString()));
            }

            screenData = screenTableadApter.GetScreensById(Convert.ToInt64(dlstScreen.SelectedValue), true);

            //imgScreenView.ImageUrl = screenData[0].ImgSeatingBackdrop;
            //imgSeatLayout.ImageUrl = screenData[0].ImgSeating;
        }

        protected void dlstScreen_SelectedIndexChanged(object sender, EventArgs e)
        {
            //display the images for the selected screen / cinema combination. Use images with names which match up with the cinema / screen names so 
            //those can be used to create the string? E.g. CinemaTwoScreenSix.jpg

            //imgScreenView.ImageUrl = screenData[0].ImgSeatingBackdrop;
            //imgSeatLayout.ImageUrl = screenData[0].ImgSeating;     
        }

        protected void sdsCinemas_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void sdsCinemaScreens_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
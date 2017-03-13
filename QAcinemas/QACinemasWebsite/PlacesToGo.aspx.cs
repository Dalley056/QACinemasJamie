using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite
{
    public partial class PlacesToGo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SqlConnection connection = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = QACinemasDB; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");

                try
                {
                    //connection.Open();

                    var venueAdapters = new DataSetTableAdapters.CinemasTableAdapter();
                    DataSet.CinemasDataTable venueData = venueAdapters.GetData();

                    ddlCinema.DataSource = venueData;
                    ddlCinema.DataBind();

                    //foreach (DataSet.LocalVenuesRow row in venueData)
                    //{
                    //    ddlCinema.Items.Add(new ListItem (row.Name.ToString()));
                    //}
                    //   connection.Close();

                    if (ddlCinema.SelectedItem != null)
                    {

                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                  //  connection.Close();
                }
            }
        }

        public void ddlCinema_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

    }
}
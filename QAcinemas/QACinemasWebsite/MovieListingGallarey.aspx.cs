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
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=QACinemasDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;

            if (!IsPostBack)
            {
                DataSetTableAdapters.GenresTableAdapter genretableadapter = new DataSetTableAdapters.GenresTableAdapter();
                DataSet.GenresDataTable data = genretableadapter.GetData();

                foreach (DataSet.GenresRow row in data)
                {
                   DropDownList1.Items.Add(new ListItem(row.Name.ToString()));

                    


                }
            }
        }

            
    

        
        }
    }

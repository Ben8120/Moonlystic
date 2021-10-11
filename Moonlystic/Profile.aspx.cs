using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Moonlystic
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getPersonalData();
        }

        protected void getPersonalData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Users WHERE userId=@id ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@id", Session["id"]);

            SqlDataReader reader = comm.ExecuteReader();
            if(reader.Read() == true)
            {
                //txtBla = reader["bla"].ToString();
                txtFirstName.Text = reader["firstName"].ToString();
            } else
            {
                //response.redirect to signin page
            }

            reader.Close();
            conn.Close();
        }
    }
}
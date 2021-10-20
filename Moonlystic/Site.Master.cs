using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moonlystic
{
    public partial class SiteMaster : MasterPage
    {
        protected int cartAmount;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                cartAmount = getCart();
            }
        }

        protected void btnSignout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }

        protected int getCart()
        {
            int cartAmount = 0;

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Cart WHERE userId=@userId AND hasPaid=0";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@userId", Session["id"]);

            SqlDataReader reader = comm.ExecuteReader();

            while(reader.Read() == true)
            {
                cartAmount++;
            }

            reader.Close();
            conn.Close();

            return cartAmount;
        }
    }
}
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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMy_Click(object sender, EventArgs e)
        {
            if (panelMY.Visible == true)
            {

            } else
            {
                panelBank.Visible = false;
                panelMY.Visible = true;
            }
        }

        protected void btnBank_Click(object sender, EventArgs e)
        {
            if (panelBank.Visible == true)
            {

            } else
            {
                panelMY.Visible = false;
                panelBank.Visible = true;
            }
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();

                string sqlquery = "UPDATE Cart SET hasPaid=1 WHERE userId=@userId";
                SqlCommand comm = new SqlCommand(sqlquery, conn);
                comm.Parameters.AddWithValue("@userId", Session["id"]);

                comm.ExecuteNonQuery();

                conn.Close();
            } else
            {
                Response.Redirect("SignIn.aspx");
            }
            
        }
    }
}
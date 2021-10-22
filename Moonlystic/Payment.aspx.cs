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
        protected List<List<string>> cartData;
        protected decimal totalPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                totalPrice = 0;
                cartData = getCartData();
            } else
            {
                Response.Redirect("SignIn.aspx");
            }
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

        protected List<List<string>> getCartData()
        {
            List<List<string>> cartData = new List<List<string>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT Product.productName, Cart.orderAmount, Cart.cartPrice FROM Cart INNER JOIN Product ON Cart.productId=Product.productId WHERE userId=@userId AND hasPaid=0";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@userId", Session["id"]);

            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read() == true)
            {
                cartData.Add(new List<string> { reader["productName"].ToString(), reader["orderAmount"].ToString(), reader["cartPrice"].ToString() });
                totalPrice = totalPrice + decimal.Parse(reader["cartPrice"].ToString());
            }

            reader.Close();
            conn.Close();

            return cartData;
        }
    }
}
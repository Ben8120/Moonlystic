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
    public partial class Invoice : System.Web.UI.Page
    {
        protected static int cId;
        protected string orderNumber;
        protected decimal totalPrice;
        protected List<List<string>> cartData;
        protected void Page_Load(object sender, EventArgs e)
        {
            cId = 0;
            cId = Convert.ToInt32(Request.QueryString["id"]);
            if (cId == 0)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                orderNumber = Convert.ToString(Request.QueryString["id"]);
                cartData = getCartData();
            }
        }

        protected List<List<string>> getCartData()
        {
            List<List<string>> cartData = new List<List<string>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT Product.productName, Cart.orderAmount, Cart.cartPrice FROM Cart INNER JOIN Product ON Cart.productId=Product.productId WHERE userId=@userId AND hasPaid=1 AND paidDate=@paidDate";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@userId", Session["id"]);
            comm.Parameters.AddWithValue("@paidDAte", cId.ToString());

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
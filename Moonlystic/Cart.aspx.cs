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
    public partial class Cart : System.Web.UI.Page
    {
        protected List<List<string>> cartInfo;
        protected decimal totalPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                totalPrice = 0;
                cartInfo = getCartItemData();
            } else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected List<List<string>> getCartItemData()
        {
            List<List<int>> cartIds = new List<List<int>>();
            List<List<string>> cartInfo = new List<List<string>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT Product.productName, Cart.orderAmount, Cart.cartPrice, Product.productImg FROM Cart INNER JOIN Product ON Cart.productId = Product.productId WHERE userId = 1 AND Cart.hasPaid = 0";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@userId", Session["id"]);

            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read() == true)
            {
                //cartIds.Add(new List<int> { int.Parse(reader["cartId"].ToString()), int.Parse(reader["productId"].ToString()) });
                cartInfo.Add(new List<string> { reader["productName"].ToString(), reader["orderAmount"].ToString(), reader["cartPrice"].ToString(), "https://tp054554.blob.core.windows.net/moonlystic/" + reader["productImg"].ToString() });
                totalPrice = totalPrice + decimal.Parse(reader["cartPrice"].ToString());
            }

            reader.Close();
            conn.Close();

            return cartInfo;
        }

        protected void getCartDatas()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Products WHERE productId=@productId";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            //comm.Parameters.AddWithValue("@userId", );
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}
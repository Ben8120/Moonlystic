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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                //TODO: get product ID from each List
            } else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected List<List<int>> getCartItemData()
        {
            List<List<int>> cartIds = new List<List<int>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT Cart.cartId, Cart.productId, Product.productName FROM Cart INNER JOIN Product ON Cart.productId=Product.productName WHERE userId=@id";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@userId", Session["id"]);

            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read() == true)
            {
                cartIds.Add(new List<int> { int.Parse(reader["cartId"].ToString()), int.Parse(reader["productId"].ToString()) });
            }

            reader.Close();
            conn.Close();

            return cartIds;
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
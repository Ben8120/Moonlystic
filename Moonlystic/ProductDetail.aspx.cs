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
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected string productName;
        protected string productDesc;
        protected string productPrice;
        protected string productDiscount;
        protected static int pId;
        protected decimal cartPrice;
        protected void Page_Load(object sender, EventArgs e)
        {
            pId = 0;
            pId = Convert.ToInt16(Request.QueryString["id"]);
            if (pId == 0)
            {
                Response.Redirect("Products.aspx");
            }
            else
            {
                getProductDetail();
            }
        }

        protected void getProductDetail()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Product WHERE productId=@id ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@id", pId);

            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                productName = reader["productName"].ToString();
                productDesc = reader["productDesc"].ToString();
                productPrice = reader["productPrice"].ToString();
                productDiscount = reader["productDiscount"].ToString();
            }

            reader.Close();
            conn.Close();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            txtQuantity.Text = (int.Parse(txtQuantity.Text) + 1).ToString();
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            int i;
            i = int.Parse(txtQuantity.Text);
            if (i <= 1)
            {
                txtQuantity.Text = i.ToString();
            } else
            {
                i--;
                txtQuantity.Text = i.ToString();
            }
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            addToCart();
            Response.Redirect("Products.aspx");
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            addToCart();
            Response.Redirect("Payment.aspx");
        }

        protected void addToCart()
        {
            if (Session["id"] != null)
            {
                //cart price to equal to orderamount(parsed to decimal) multiplied by productprice

                string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();

                string sqlquery = "INSERT INTO Cart VALUES (@productId, @userId, @orderAmount, @hasPaid, @cartPrice)";
                SqlCommand comm = new SqlCommand(sqlquery, conn);
                comm.Parameters.AddWithValue("@productId", pId);
                comm.Parameters.AddWithValue("@userId", Session["id"]);
                comm.Parameters.AddWithValue("@orderAmount", int.Parse(txtQuantity.Text));
                comm.Parameters.AddWithValue("@hasPaid", false);
                comm.Parameters.AddWithValue("@cartPrice", decimal.Parse(productPrice) * decimal.Parse(txtQuantity.Text));

                comm.ExecuteNonQuery();

                conn.Close();

                Response.Redirect("Products.aspx");
            }
            else
            {
                Response.Write("Need to Log In First!");
                Response.Redirect("SignIn.aspx");
            }
        }
    }
}
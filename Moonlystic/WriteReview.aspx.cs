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
    public partial class WriteReview : System.Web.UI.Page
    {
        protected static int cartId;
        protected string productName;
        protected bool isEmpty;
        protected void Page_Load(object sender, EventArgs e)
        {
            cartId = 0;
            cartId = Convert.ToInt16(Request.QueryString["cartId"]);
            if (cartId == 0)
            {
                Response.Redirect("Profile.aspx");
            } else
            {
                isEmpty = checknull();
                if (isEmpty)
                {
                    getProductName();
                } else
                {
                    Response.Redirect("Profile.aspx");
                }
            }

        }

        protected void getProductName()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT Product.productName FROM Cart INNER JOIN Product ON Cart.productId = Product.productId WHERE Cart.cartId = @id";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@id", cartId);

            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                productName = reader["productName"].ToString();
            }
            reader.Close();
            conn.Close();
        }

        protected void btnReview_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlQuery = "UPDATE Cart SET orderReview=@orderReview WHERE cartId=@cartId";
            SqlCommand command = new SqlCommand(sqlQuery, conn);
            command.Parameters.AddWithValue("@orderReview", txtReview.Text);
            command.Parameters.AddWithValue("@cartId", cartId);

            command.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Default.aspx");
        }

        protected bool checknull()
        {
            bool isEmpty = false;
            string strReview;

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT orderReview FROM Cart WHERE cartId=@id";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@id", cartId);

            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                strReview = reader["orderReview"].ToString();
                if (strReview == "")
                {
                    isEmpty = true;
                } else
                {
                    isEmpty = false;
                }
            }
            reader.Close();
            conn.Close();

            return isEmpty;
        }
    }
}
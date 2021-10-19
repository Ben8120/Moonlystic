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

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                if (Session["productId"] != null)
                {
                    getProductDetail();
                }
                else
                {
                    Response.Redirect("Products.aspx");
                }
            //}
        }

        protected void getProductDetail()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Product WHERE productId=@id ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@id", Session["productId"]);

            SqlDataReader reader = comm.ExecuteReader();
            if (reader.Read() == true)
            {
                productName = reader["productName"].ToString();
                productDesc = reader["productDesc"].ToString();
                productPrice = reader["productPrice"].ToString();
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
            if (Session["id"] != null)
            {
                string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();

                string sqlquery = "INSERT INTO Cart VALUES (@productId, @userId, @orderAmount, @hasPaid, @cartPrice)";
                SqlCommand comm = new SqlCommand(sqlquery, conn);
                comm.Parameters.AddWithValue("@productId", Session["productId"]);
                comm.Parameters.AddWithValue("@userId", Session["id"]);
                comm.Parameters.AddWithValue("@orderAmount", int.Parse(txtQuantity.Text));
                comm.Parameters.AddWithValue("@hasPaid", false);
                comm.Parameters.AddWithValue("@cartPrice", decimal.Parse(productPrice));

                comm.ExecuteNonQuery();

                conn.Close();

                Response.Redirect("Products.aspx");
            } else
            {
                Response.Write("Need to Log In First!");
            }
            
        }
    }
}
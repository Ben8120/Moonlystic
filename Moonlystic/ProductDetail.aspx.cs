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
            getProductDetail();
        }

        protected void getProductDetail()
        {
            if (!IsPostBack)
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
        }
    }
}
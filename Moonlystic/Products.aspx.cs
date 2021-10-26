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
    public partial class Products : System.Web.UI.Page
    {
        protected List<List<String>> productInfo;
        protected List<String> categories;
        public static int cId;
        protected void Page_Load(object sender, EventArgs e)
        {
            productInfo = getProductInfo();
            categories = getCategories();
            /* for testing only
            foreach (List<string> product in productInfo)
            {
                foreach (string prod in product)
                {
                    Response.Write(prod);
                }
            } */
        }

        protected List<List<String>> getProductInfo()
        {
            List<List<string>> getProductInfos = new List<List<string>>();

            if (!IsPostBack)
            {
                string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();

                string sqlquery; 
                if (Request.QueryString["cid"] != "" && Request.QueryString["cid"] != null)
                {
                    sqlquery = "SELECT * FROM Product WHERE productCategory="+ Convert.ToInt16(Request.QueryString["cid"]); ;
                } else
                {
                    sqlquery = "SELECT * FROM Product ";
                }
                
                SqlCommand comm = new SqlCommand(sqlquery, conn);

                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    getProductInfos.Add(new List<string> { reader["productName"].ToString(), reader["productPrice"].ToString(), reader["productId"].ToString() });

                }

                /* This does not continue to add more Lists, use while loop for that
                if (reader.Read() == true)
                {
                    getProductInfos.Add(new List<string> { reader["productName"].ToString(), reader["productPrice"].ToString() });
                }
                else
                {
                    //response.redirect
                }*/
                reader.Close();
                conn.Close();
            }

            return getProductInfos;
        }

        protected string loadProductList()
        {
            Components components = new Components();
            string data = "";

            foreach (List<string> product in productInfo)
            {
                data += components.productsCard(product[0], product[1], product[2]);
            }
            return data;
        }

        protected List<string> getCategories()
        {
            List<string> categories = new List<string>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT categoryName FROM Category ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);

            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                categories.Add(reader["categoryName"].ToString());

            }

            reader.Close();
            conn.Close();

            return categories;
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            Page.DataBind();
            Session["productId"] = 1;
            Response.Redirect("ProductDetail.aspx");
        }
    }
}
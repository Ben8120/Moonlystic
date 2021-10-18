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
        protected void Page_Load(object sender, EventArgs e)
        {
            productInfo = getProductInfo();
            foreach (List<string> product in productInfo)
            {
                foreach (string prod in product)
                {
                    Response.Write(prod);
                }
            }
        }

        protected List<List<String>> getProductInfo()
        {
            List<List<string>> getProductInfos = new List<List<string>>();

            if (!IsPostBack)
            {
                string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();

                string sqlquery = "SELECT * FROM Product ";
                SqlCommand comm = new SqlCommand(sqlquery, conn);

                SqlDataReader reader = comm.ExecuteReader();
                while (reader.Read())
                {
                    getProductInfos.Add(new List<string> { reader["productName"].ToString(), reader["productPrice"].ToString() });

                }
                /*
                if (reader.Read() == true)
                {
                    getProductInfos.Add(new List<string> { reader["productName"].ToString(), reader["productPrice"].ToString() });
                }
                else
                {
                    //response.redirect
                }*/
            }

            return getProductInfos;
        }
    }
}
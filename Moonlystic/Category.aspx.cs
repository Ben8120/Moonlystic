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
    public partial class Category : System.Web.UI.Page
    {
        public List<string> catNames = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            catNames = loadCatName();
        }

        protected List<String> loadCatName()
        {
            List<string> loadCatNames = new List<string>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Category ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);

            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read() == true)
            {
                loadCatNames.Add(reader["categoryName"].ToString());
            }
            
            return loadCatNames;
        }
    }
}
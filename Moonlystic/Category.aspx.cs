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
        public List<List<string>> catNames = new List<List<string>>();
        protected void Page_Load(object sender, EventArgs e)
        {
            catNames = loadCatName();
        }

        protected List<List<string>> loadCatName()
        {
            List<List<string>> loadCatNames = new List<List<string>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Category ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);

            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read() == true)
            {
                loadCatNames.Add( new List<string> { reader["categoryName"].ToString(), reader["categoryId"].ToString() });
            }

            reader.Close();
            conn.Close();
            
            return loadCatNames;
        }

        protected string loadCatList()
        {
            Components component = new Components();
            string data = "";

            foreach (List<string> cateName in catNames)
            {
                data += component.categoryCard(cateName[0], cateName[1]);
            }

            return data;
        }

        protected void btn_redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
            //get the id of the category and put it in session["cat"]
            //but idk how for now
        }
    }
}
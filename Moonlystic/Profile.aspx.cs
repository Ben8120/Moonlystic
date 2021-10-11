using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Moonlystic
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("SignIn.aspx");
            } else
            {
                getPersonalData();
            }
        }

        protected void getPersonalData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Users WHERE userId=@id ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);
            comm.Parameters.AddWithValue("@id", Session["id"]);

            SqlDataReader reader = comm.ExecuteReader();
            if(reader.Read() == true)
            {
                //txtBla = reader["bla"].ToString();
                txtFirstName.Text = reader["firstName"].ToString();
                txtLastName.Text = reader["lastName"].ToString();
                txtUserName.Text = reader["userName"].ToString();
                txtDate.Text = reader["dateOfBirth"].ToString();
                txtEmail.Text = reader["email"].ToString();
                txtPassword.Text = reader["password"].ToString();
            } else
            {
                //response.redirect to signin page
            }

            reader.Close();
            conn.Close();
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            txtFirstName.ReadOnly = true;
            txtLastName.ReadOnly = true;
            txtUserName.ReadOnly = true;
            txtDate.ReadOnly = true;
            txtEmail.ReadOnly = true;
            txtPassword.ReadOnly = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtFirstName.ReadOnly = false;
            txtLastName.ReadOnly = false;
            txtUserName.ReadOnly = false;
            txtDate.ReadOnly = false;
            txtEmail.ReadOnly = false;
            txtPassword.ReadOnly = false;
        }
    }
}
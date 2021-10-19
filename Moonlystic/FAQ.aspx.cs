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
    public partial class FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected List<List<string>> getFAQ()
        {
            List<List<string>> FAQs = new List<List<string>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Faq ";
            SqlCommand comm = new SqlCommand(sqlquery, conn);

            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read() == true)
            {
                FAQs.Add(new List<string> { reader["faqTitle"].ToString(), reader["faqDesc"].ToString() });
            }
            reader.Close();
            conn.Close();

            return FAQs;
        }

        protected string loadFaq()
        {
            string accordionFAQ = "";
            List<List<string>> FAQ = new List<List<string>>();
            FAQ = getFAQ();
            int i = 0;

            foreach (List<string> faq in FAQ)
            {
                accordionFAQ += "" +
                "<div class=\"card\">" + 
                    "<div class=\"card-header\" id=\"" + "heading" + i.ToString()+ "\">" +
                        "<h5 class=\"mb-0\">" +
                            "<button class=\"btn btn-link\" type=\"button\" data-toggle=\"collapse\" data-target=\"" + "#collapse" + i.ToString() + "\" aria-expanded=\"true\" aria-controls=\"" + "collapse" + i.ToString() + "\">" +
                                faq[0] +
                            "</button>" +
                        "</h5>" +
                    "</div>" +
                    "<div id = \"" + "collapse" + i.ToString() + "\" class=\"collapse show\" aria-labelledby=\"" + "heading" + i.ToString() +"\" data-parent=\"#Faq\">" +
                        "<div class=\"card-body\">" +
                            faq[1] +
                        "</div>" +
                    "</div>" +
                "</div>";
                i++;
            }

            return accordionFAQ;
        }
    }
}
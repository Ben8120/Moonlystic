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
    public partial class _Default : Page
    {
        protected string carModal;
        protected List<List<string>> carouselData;
        protected void Page_Load(object sender, EventArgs e)
        {
            var blob = new Blob();
            blob.tryBlob();
            var component = new Components();
            carouselData = getCarousel();
            foreach (List<string> carouseldata in carouselData)
            {
                carModal = component.carouselModal(carouseldata[0], carouseldata[1]);
            }
        }

        protected List<List<string>> getCarousel()
        {
            //TODO: List<List<string>> to get list title, desc from carousel where carShow=1, after that, load it in default page
            List<List<string>> carouselData = new List<List<string>>();

            string connStr = ConfigurationManager.ConnectionStrings["AvenueConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            string sqlquery = "SELECT * FROM Carousel WHERE carShow=1";
            SqlCommand comm = new SqlCommand(sqlquery, conn);

            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                carouselData.Add(new List<string> { reader["carTitle"].ToString(), reader["carDesc"].ToString(), reader["carBanner"].ToString() });

            }

            reader.Close();
            conn.Close();

            return carouselData;
        }

        protected void getIndex()
        {

        }
    }
}
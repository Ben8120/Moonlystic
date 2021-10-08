using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moonlystic
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calendar.Visible = false;
            }
        }

        protected void btnCal_Click(object sender, EventArgs e)
        {
            if (calendar.Visible)
            {
                calendar.Visible = false;
            } else
            {
                calendar.Visible = true;
            }
            calendar.Attributes.Add("style", "position: absolute");
        }

        protected void calendar_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = calendar.SelectedDate.ToString("dd/MM/yyyy");
            calendar.Visible = false;
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            //Show success label
        }
    }
}
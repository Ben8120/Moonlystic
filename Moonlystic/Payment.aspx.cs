using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moonlystic
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMy_Click(object sender, EventArgs e)
        {
            if (panelMY.Visible == true)
            {

            } else
            {
                panelBank.Visible = false;
                panelMY.Visible = true;
            }
        }

        protected void btnBank_Click(object sender, EventArgs e)
        {
            if (panelBank.Visible == true)
            {

            } else
            {
                panelMY.Visible = false;
                panelBank.Visible = true;
            }
        }
    }
}
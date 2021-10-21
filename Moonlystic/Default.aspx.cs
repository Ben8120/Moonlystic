using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moonlystic
{
    public partial class _Default : Page
    {
        protected string carModal;
        protected void Page_Load(object sender, EventArgs e)
        {
            var component = new Components();
            carModal = component.carouselModal("Test Title", "Testing Description");
        }
    }
}
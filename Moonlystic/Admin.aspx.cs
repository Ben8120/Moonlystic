using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moonlystic
{
    public partial class Admin : System.Web.UI.Page
    {
        protected bool faqVisible;
        string btnActive = "btn btn-primary active";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"] != null && int.Parse(Session["userType"].ToString()) == 1)
            {
                if (!IsPostBack)
                {
                    hideAllPanels();
                    btnCategory.Attributes["class"] = btnActive;
                    PanelCategory.Visible = true;
                }
            } else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {
            toInactive();
            btnCategory.Attributes["class"] = btnActive;
            hideAllPanels();
            PanelCategory.Visible = true;
        }

        protected void btnProducts_Click(object sender, EventArgs e)
        {
            toInactive();
            btnProducts.Attributes["class"] = btnActive;
            hideAllPanels();
            PanelManageProducts.Visible = true;
        }

        protected void btnUsers_Click(object sender, EventArgs e)
        {
            toInactive();
            btnUsers.Attributes["class"] = btnActive;
            hideAllPanels();
            PanelManageUsers.Visible = true;
        }

        protected void btnFAQ_Click(object sender, EventArgs e)
        {
            toInactive();
            btnFAQ.Attributes["class"] = btnActive;
            hideAllPanels();
            PanelManageFAQ.Visible = true;
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            toInactive();
            btnHome.Attributes["class"] = btnActive;
            hideAllPanels();
            PanelManageHome.Visible = true;
        }

        protected void btnOrders_Click(object sender, EventArgs e)
        {
            toInactive();
            btnOrders.Attributes["class"] = btnActive;
            hideAllPanels();
            PanelManageOrders.Visible = true;
        }

        protected void hideAllPanels()
        {
            PanelCategory.Visible = false;
            PanelManageFAQ.Visible = false;
            PanelManageHome.Visible = false;
            PanelManageOrders.Visible = false;
            PanelManageProducts.Visible = false;
            PanelManageUsers.Visible = false;
        }

        protected void toInactive()
        {
            string inactive = "btn btn-primary";
            btnCategory.Attributes["class"] = inactive;
            btnFAQ.Attributes["class"] = inactive;
            btnHome.Attributes["class"] = inactive;
            btnOrders.Attributes["class"] = inactive;
            btnProducts.Attributes["class"] = inactive;
            btnUsers.Attributes["class"] = inactive;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //SQLConnection here
            sqlUsers.Insert();
            Response.Redirect("Admin.aspx");
        }

        protected void btnCatAdd_Click(object sender, EventArgs e)
        {
            sqlCat.Insert();
            Response.Redirect("Admin.aspx");
        }

        protected void ddlProdCat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnProdAdd_Click(object sender, EventArgs e)
        {
            blobFunction(fileProdImg.FileName, fileProdImg, lblProdFileName);
            /*
            lblProdFileName.Text = fileProdImg.FileName;

            string folderPath = Server.MapPath("~/Uploads/");
            string imagePath = folderPath + Path.GetFileName(fileProdImg.FileName);
            fileProdImg.SaveAs(imagePath);

            Blob blob = new Blob();
            blob.tryBlob(fileProdImg.FileName, imagePath);

            string deletePath = Server.MapPath("~/Uploads/" + fileProdImg.FileName);
            FileInfo deleteFile = new FileInfo(deletePath);
            deleteFile.Delete();
            */

            sqlProd.Insert();

            Response.Redirect("Admin.aspx");
        }

        protected void btnAddFaq_Click(object sender, EventArgs e)
        {
            sqlFaq.Insert();
        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {
            sqlCar.Insert();
        }

        protected void blobFunction(string name, FileUpload fu, Label lbl)
        {
            lbl.Text = name;

            string folderPath = Server.MapPath("~/Uploads/");
            string imagePath = folderPath + Path.GetFileName(name);
            fu.SaveAs(imagePath);

            Blob blob = new Blob();
            blob.tryBlob(name, imagePath);

            string deletePath = Server.MapPath("~/Uploads/" + name);
            FileInfo deleteFile = new FileInfo(deletePath);
            deleteFile.Delete();
        }
    }
}
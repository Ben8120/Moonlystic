using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Moonlystic
{
    public class Components
    {
        public string carouselModal(string carouselTitle, string carouselDesc)
        {
            string carModal;
            carModal = "" +
                "<div class=\"container\">" +
                    "<div class=\"row\">" +
                        "<div class=\"col-12\">" +
                            "<div class=\"modal fade\" id=\"myModal\">" +
                                "<div class=\"modal-dialog modal-lg\">" +
                                    "<div class=\"modal-content\">" +
                                        "<div class=\"modal-header\">" +
                                            "<p>" + carouselTitle + "</p>" +
                                        "</div>" +
                                        "<div class=\"modal-body\">" +
                                            "<p>" + carouselDesc + "</p>" +
                                        "</div>" +
                                        "<div class=\"modal-footer\">" +
                                            "<input class=\"btn btn-primary\" data-dismiss=\"modal\" value=\"Close\" />" +
                                        "</div>" +
                                    "</div>" +
                                "</div>" +
                            "</div>" +
                        "</div>" +
                    "</div>" +
                "</div>";

            return carModal;
        }

        public string productsCard(string name, string price, string id)
        {
            string productsCard;

            productsCard = "" +
                "<div class=\"card m-2 col-sm grow\" style=\"width: 16rem; display: inline-block;\">" +
                        "<img class=\"card-img-top\" src=\"Assets/gray.jpg\" alt=\"Image Name\" />" +
                        "<div class=\"card-body\" onclick=\"location.href = \'ProductDetail.aspx?id=" + id +"\'; \" style=\"cursor: pointer; \">" +
                            "<h5 class=\"card-title\">" + name + "</h5>" +
                            "<p class=\"card-text\">RM" + price + "</p>" +
                            "<p style = \"display:none\" ><% = product[2] %></ p >" +
                        "</div>" +
                    "</div>";

            return productsCard;
        }

        public string categoryCard(string name, string id)
        {
            string cat;

            cat = "" +
            "<div class=\"card h-scroll category-style grow m-3\">" +
                "<model-viewer class=\"w-100\" alt=\"Some alt text\" src=\"banana.glb\" ar ar-modes=\"webxr scene-viewer quick-look\" environment-image=\"shared-assets/environments/moon_1k.hdr\" poster=\"assets/NeilArmstrong.webp\" seamless-poster shadow-intensity=\"1\" camera-controls></model-viewer>" +
                    "<div class=\"card-body\">" +
                        "<p class=\"card-text\"><a href=\"Products.aspx?=" + id + "\">" + name + "</a></p>" +
                        "<asp:Button ID=\"btn_redirect\" runat=\"server\" Text=\"Button\" OnClick=\"btn_redirect_Click\" />" +
                    "</div></div>";

            return cat;
        }
    }
}
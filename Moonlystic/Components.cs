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

        public string productsCard(string name, string price, string id, string img)
        {
            string productsCard;

            productsCard = "" +
                "<div class=\"card m-2 col-sm grow\" style=\"width: 16rem; display: inline-block;\">" +
                        "<img class=\"card-img-top\" src=\"https://tp054554.blob.core.windows.net/moonlystic/" + img + "\" alt=\"Image Name\" />" +
                        "<div class=\"card-body\" onclick=\"location.href = \'ProductDetail.aspx?id=" + id +"\'; \" style=\"cursor: pointer; \">" +
                            "<h5 class=\"card-title\">" + name + "</h5>" +
                            "<p class=\"card-text\">RM" + price + "</p>" +
                            "<p style = \"display:none\" ><% = product[2] %></ p >" +
                        "</div>" +
                    "</div>";

            return productsCard;
        }

        public string categoryCard(string name, string id, string cid)
        {
            string cat;

            cat = "" +
            "<div class=\"card h-scroll category-style grow m-3 align-middle\">" +
                "<model-viewer class=\"w-100\" alt=\"Some alt text\" src=\"banana.glb\" ar ar-modes=\"webxr scene-viewer quick-look\" environment-image=\"shared-assets/environments/moon_1k.hdr\" poster=\"assets/NeilArmstrong.webp\" seamless-poster shadow-intensity=\"1\" camera-controls></model-viewer>" +
                    "<div class=\"card-body\" onclick=\"location.href = \'Products.aspx?cid=" + cid + "\'; \" style=\"cursor: pointer; \">" +
                        "<p class=\"card-text\"><a href=\"Products.aspx?=" + id + "\">" + name + "</a></p>" +
                        "<asp:Button ID=\"btn_redirect\" runat=\"server\" Text=\"Button\" OnClick=\"btn_redirect_Click\" />" +
                    "</div></div>";

            return cat;
        }

        public string moonCard(string image, string name, string userName, string balance, string token)
        {
            string mooncard;

            mooncard = "" +
                "<div class=\"d-flex justify-content-center\">" +
                    "<div class=\"card\">" +
                        "<div class=\"top-container\"> <img src = \"" + image + "\" class=\"img-fluid profile-image\" width=\"70\">" +
                            "<div class=\"ml-3\">" +
                                "<h5 class=\"name\">" + name + "</h5>" +
                                "<p class=\"mail\">" + userName + "</p>" +
                            "</div>" +
                        "</div>" +
                        "<div class=\"middle-container d-flex justify-content-between align-items-center mt-3 p-2\">" +
                            "<div class=\"dollar-div px-3\">" +
                                "<div class=\"round-div\"><i class=\"fa fa-dollar dollar\"></i></div>" +
                            "</div>" +
                            "<div class=\"d-flex flex-column text-right mr-2\"> <span class=\"current-balance\">Current Balance</span> <span class=\"amount\"><span class=\"dollar-sign\">RM</span>" + balance + "</span> </div>" +
                        "</div>" +
                        "<div class=\"middle-container d-flex justify-content-between align-items-center mt-3 p-2\">" +
                            "<div class=\"dollar-div px-3\">" +
                                "<div class=\"round-div\"><i class=\"fa fa-dollar dollar\"></i></div>" +
                            "</div>" +
                            "<div class=\"d-flex flex-column text-right mr-2\"> <span class=\"current-balance\">Tokens</span> <span class=\"amount\"><span class=\"dollar-sign\">x</span>" + token + "</span> </div>" +
                        "</div>" +
                    "</div>" +
                "</div>";

            return mooncard;
        }

        public string deliveredCart(string name, string amount, string price, string id)
        {
            string deliveredCart;

            deliveredCart = "" +
                    "<tr>" +
                        "<td><img src=\"Assets/gray.jpg\" style=\"width:50px;height:50px;\" /></td>" +
                        "<td>" + name + "</td>" +
                        "<td>" + amount + "</td>" +
                        "<td>" + price + "</td>" +
                        "<td><div class=\"btn btn-primary\" onclick=\"location.href=\'WriteReview.aspx?cartId=" + id + "\'\">Review!</div></td>" +
                    "</tr>";
            
            return deliveredCart;
        }
    }
}
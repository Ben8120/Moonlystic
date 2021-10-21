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
    }
}
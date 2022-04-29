<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Moonlystic._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card m-2 w-100">
        <h2>Welcome to Moonlystic Online Store!</h2>
    </div>

    <!-- <% =carModal %>
    <a href="*" data-toggle="modal" data-target="#myModal">Open Modal</a>    -->
    <div class = "d-flex justify-content-center m-2">
        <div id = "carouselwithIndicators" class = "carousel slide w-75" data-ride = "carousel">
            <ol class = "carousel-indicators">
                <li data-target = "#carouselExampleIndicators" data-slide-to = "0" class = "active"></li>
                <li data-target = "#carouselExampleIndicators" data-slide-to = "1"></li>
                <li data-target = "#carouselExampleIndicators" data-slide-to = "2s"></li>
            </ol>
            
            <div class =" carousel-inner">
                <div class = "carousel-item active">
                    <img class ="d-block w-100 h-100"
                    src="Assets/banner1.jpg"
                    alt="First slide" />
                </div>
               
                <div class = "carousel-item">
                    <img class ="d-block w-100 h-100"
                    src="Assets/banner2.jpg"
                    alt="Secondd slide" />
                </div>
                <div class = "carousel-item">
                    <img class ="d-block w-100 h-100"
                    src="Assets/banner3.jpg"
                    alt="Third slide" />
                </div>
            </div>
            
            <a class = "carousel-control-prev" href = "#carouselwithIndicators" role = "button" data-slide = "prev">
                <span class = "carousel-control-prev-icon" aria-hidden = "true"></span>
                <span class = "sr-only">Previous</span>
            </a>
            
            <a class = "carousel-control-next" href = "#carouselwithIndicators" role = "button" data-slide = "next">
                <span class = "carousel-control-next-icon" aria-hidden = "true"></span>
                <span class = "sr-only">Next</span>
            </a>
        </div>
    </div>

</asp:Content>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Moonlystic._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <% =carModal %>
    <a href="*" data-toggle="modal" data-target="#myModal">Open Modal</a>    
    <div class = "d-flex justify-content-center">
        <div id = "carouselwithIndicators" class = "carousel slide w-75" data-ride = "carousel">
            <ol class = "carousel-indicators">
                <li data-target = "#carouselExampleIndicators" data-slide-to = "0" class = "active"></li>
                <li data-target = "#carouselExampleIndicators" data-slide-to = "1"></li>
                <li data-target = "#carouselExampleIndicators" data-slide-to = "2s"></li>
            </ol>
            
            <div class =" carousel-inner">
                <div class = "carousel-item active">
                    <img class = "d-block w-100 h-100" 
                        src = "https://www.tutorialspoint.com/bootstrap/images/slide1.png" 
                        alt = "First slide">
                </div>
               
                <div class = "carousel-item">
                    <img class = "d-block w-100 h-100"  
                        src = "https://www.tutorialspoint.com/bootstrap/images/slide2.png" 
                        alt = "Second slide">
                </div>
                <div class = "carousel-item">
                    <img class = "d-block w-100 h-100" 
                        src = "https://www.tutorialspoint.com/bootstrap/images/slide3.png" 
                        alt = "Third slide">
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

    <img src="https://tp054554.blob.core.windows.net/moonlystic/test" class="w-25 m-2" style="height:200px;"/>

</asp:Content>

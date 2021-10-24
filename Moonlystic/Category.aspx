<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Moonlystic.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Category</h1>
    <p>Horizontal Scrolling with Model Viewers inside</p>
    <div class="horizontal-scroll p-3">
        <% =loadCatList() %>
        
        <div class="card h-scroll">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text"><a href="Products.aspx">lorem</a></p>
            </div>
        </div>
        <!--below are just for demonstration purposes, remove all bottom ones for these-->
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
            </div>
        </div>
    </div>
    <script>
        const scrollContainer = document.querySelector(".horizontal-scroll");

        scrollContainer.addEventListener("wheel", (evt) => {
            evt.preventDefault();
            scrollContainer.scrollLeft += evt.deltaY;
        });
    </script>
</asp:Content>

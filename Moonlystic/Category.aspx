<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Moonlystic.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="horizontal-scroll p-3 vh-100">
        <% =loadCatList() %>
        <!--below are just for demonstration purposes, remove all bottom ones for these-->
        <!--
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
        -->
    </div>
    <script>
        const scrollContainer = document.querySelector(".horizontal-scroll");

        scrollContainer.addEventListener("wheel", (evt) => {
            evt.preventDefault();
            scrollContainer.scrollLeft += evt.deltaY;
        });
    </script>
</asp:Content>

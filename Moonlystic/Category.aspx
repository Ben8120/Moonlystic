﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Moonlystic.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Category</h1>
    <p>Horizontal Scrolling with Model Viewers inside</p>
    <div class="horizontal-scroll">
        <% foreach (string catName in catNames) { %>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text"><% =catName %></p>
            </div>
        </div>
        <% } %>
        <div class="card h-scroll" style="width: 18rem;">
            <img class="card-img-top" src="Assets/gray.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text">lorem</p>
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
</asp:Content>

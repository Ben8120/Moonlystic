<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Moonlystic.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Product Details</h1>
    <p>Product Name</p>
    <div class="row">
        <div class="col-md-3">
            <img class="rounded-right" src="Assets/gray.jpg" alt="Image" style="height:200px;width:200px;"/>
        </div>
        <div class="col-md-9">
            <h1><% =productName %></h1>
            <p><% =productDesc %></p>
            <h5>RM<% =productPrice %></h5>
            <p>If discount is >=0.00 slash the price and show the discounted value</p>
            <div class="input-group">
                <asp:Button ID="btnMinus" runat="server" Text="-" class="btn btn-outline-secondary" OnClick="btnMinus_Click" />
                <asp:TextBox ID="txtQuantity" runat="server" class="form-control" Text="1"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" Text="+" class="btn btn-outline-secondary" OnClick="btnAdd_Click"/>
            </div>
            <asp:Button ID="btnBuy" runat="server" Text="Buy Now" class="btn btn-primary btn-lg" OnClick="btnBuy_Click"/>
            <asp:Button ID="btnCart" runat="server" Text="Add to Cart" class="btn btn-primary btn-lg" OnClick="btnCart_Click"/>
        </div>
    </div>
    <h1>Reviews</h1>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Moonlystic.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1><% =productName %></h1>
    <div class="row vh-100">
        <div class="col-md-3">
            <img class="rounded-right" src="Assets/gray.jpg" alt="Image" style="height:200px;width:200px;"/>
        </div>
        <div class="col-md-9">
            <h1><% =productName %></h1>
            <p><% =productDesc %></p>
            <% if (decimal.Parse(productDiscount) > 0) { %>
                <h5 style="text-decoration: line-through;">RM<% =productPrice %></h5>
                <h5>Now: RM<% =productDiscount %></h5>
            <% } else {%>
                <h5>RM<% =productPrice %></h5>
            <% } %>
            <div class="input-group m-3">
                <asp:Button ID="btnMinus" runat="server" Text="-" class="btn btn-light" OnClick="btnMinus_Click" />
                <div style="width:50px;"><asp:TextBox ID="txtQuantity" runat="server" class="form-control" Text="1"></asp:TextBox></div>
                <asp:Button ID="btnAdd" runat="server" Text="+" class="btn btn-light" OnClick="btnAdd_Click"/>
            </div>
            <asp:Button ID="btnBuy" runat="server" Text="Buy Now" class="btn btn-primary btn-lg ml-3" OnClick="btnBuy_Click"/>
            <asp:Button ID="btnCart" runat="server" Text="Add to Cart" class="btn btn-primary btn-lg" OnClick="btnCart_Click"/>
        </div>
    </div>
    <h1>Reviews</h1>
    <div class="card w-100">
        <% foreach (List<string> reviewdetails in reviewDetails) { %>
        
        <p><% =reviewdetails[0] %></p>
        <p><% =reviewdetails[1] %></p>
        <br />
        <% } %>

    </div>
</asp:Content>

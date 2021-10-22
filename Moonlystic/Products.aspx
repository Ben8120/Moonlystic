<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Moonlystic.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Products Page</h1>
    <p>Product cards in here</p>
    <div class="row">
        <div class="col-md-2">
            <% foreach (string category in categories) { %>
            <asp:RadioButton ID="rb" runat="server" GroupName="categories" Text=""/><% =category %><br />
            <% } %>
        </div>
        <div class="col-md-10">
            <div class="row">
                <% =loadProductList() %>
            </div>
        </div>
        </div>
</asp:Content>

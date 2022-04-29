<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Moonlystic.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt-3">
        <div class="col-md-2 mt-4">
            <div class="card w-100"><p class="mb-3">Categories</p>
                <% foreach (string category in categories) { %>
                <asp:RadioButton ID="rb" runat="server" GroupName="categories" Text=""/><% =category %><br />
                <% } %>
                <asp:Button ID="btnFilter" runat="server" Text="Filter" /> <!--TODO: redirect to same page, but with header queries -->
            </div>
        </div>
        <div class="col-md-10">
            <div class="row" style="display:block">
                <% =loadProductList() %>
            </div>
        </div>
    </div>
</asp:Content>

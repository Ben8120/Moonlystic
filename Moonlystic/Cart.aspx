<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Moonlystic.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card w-100 mt-3">

    
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Product Image</th>
                <th scope="col">Product Name</th>
                <th scope="col">Amount</th>
                <th scope="col">Price</th>
            </tr>
        </thead>
        <tbody>
            <% foreach (List<string> cartinfo in cartInfo) { %>
            <tr>
                <td><img src="Assets/gray.jpg" style="width:150px;height:150px;"/></td>
                <td><p><% =cartinfo[0] %></p></td>
                <td><p><% =cartinfo[1] %></p></td>
                <td><p>RM<% =cartinfo[2] %></p></td>
            </tr>
            <% } %>
            <tr>
                <td colspan="3">Total:</td>
                <td>RM<% =totalPrice %></td>
            </tr>
        </tbody>
    </table>
    </div>


    <div class="row mt-3">
        <div class="col-10">
        </div>
        <div class="col-2">
            <asp:Button ID="btnBuy" runat="server" Text="Buy" class="btn btn-primary" OnClick="btnBuy_Click"/>
        </div>
    </div>
</asp:Content>

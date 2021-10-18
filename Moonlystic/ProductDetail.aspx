<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Moonlystic.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Product Details</h1>
    <p>Product Name</p>
    <div class="row">
        <div class="col-md-3">
            <img class="rounded-right" src="Assets/gray.jpg" alt="Image" style="height:200px;width:200px;"/>
        </div>
        <div class="col-md-9">
            <h1>Product Name</h1>
            <p>Description: lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem </p>
            <h5>Product Price</h5>
            <div class="input-group">
                <asp:Button ID="btnMinus" runat="server" Text="-" class="btn btn-outline-secondary" />
                <asp:TextBox ID="txtQuantity" runat="server" class="form-control"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" Text="+" class="btn btn-outline-secondary"/>
            </div>
            <asp:Button ID="btnBuy" runat="server" Text="Buy Now" class="btn btn-primary btn-lg"/>
            <asp:Button ID="btnCart" runat="server" Text="Add to Cart" class="btn btn-primary btn-lg"/>
        </div>
    </div>
    <h1>Reviews</h1>
</asp:Content>

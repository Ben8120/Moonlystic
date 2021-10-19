<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Moonlystic.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Products Page</h1>
    <p>Product cards in here</p>
    <div class="row">
        <div class="col-md-2">
            <p>Hi</p>
        </div>
        <div class="col-md-10">
            <div class="row">
                <% foreach (List<string> product in productInfo) { %>
                <div class="card m-1 col-sm" style="width: 18rem;">
                        <img class="card-img-top" src="Assets/gray.jpg" alt="Image Name" />
                        <div class="card-body">
                            <h5 class="card-title"><% =product[0] %></h5>
                            <p class="card-text">RM<% =product[1] %></p>
                            <p style="display:none"><% =product[2] %></p>
                            <asp:Button ID="btnBuy" runat="server" Text="Buy" class="btn btn-outline-warning" OnClick="btnBuy_Click" />
                        </div>
                    </div>
                <% } %>
                <div class="card m-1 col-sm" style="width: 18rem;">
                    <img class="card-img-top" src="Assets/gray.jpg" alt="Image Name" />
                    <div class="card-body">
                        <h5 class="card-title">Product Name</h5>
                        <p class="card-text">Product Price</p>
                        <a href="#" class="btn btn-outline-warning">Buy</a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="card m-1 col-md" style="width: 18rem;">
                    <img class="card-img-top" src="Assets/gray.jpg" alt="Image Name" />
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Testing of cards</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
                <div class="card m-1 col-md" style="width: 18rem;">
                    <img class="card-img-top" src="Assets/gray.jpg" alt="Image Name" />
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Testing of cards</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
                <div class="card m-1 col-md" style="width: 18rem;">
                    <img class="card-img-top" src="Assets/gray.jpg" alt="Image Name" />
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Testing of cards</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
                <div class="card m-1 col-md" style="width: 18rem;">
                    <img class="card-img-top" src="Assets/gray.jpg" alt="Image Name" />
                    <div class="card-body">
                        <h5 class="card-title">Card Title</h5>
                        <p class="card-text">Testing of cards</p>
                        <a href="#" class="btn btn-primary">Button</a>
                    </div>
                </div>
            </div>        
        </div>
    </div>
</asp:Content>

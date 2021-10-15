<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Moonlystic.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administrator Page</h1>
    <div class="container">
        <div class="row">
            <div class="col-4">
                <div class="btn-group-vertical">
                    <asp:Button ID="btnCategory" runat="server" Text="Category" class="btn btn-primary" OnClick="btnCategory_Click"/>
                    <asp:Button ID="btnProducts" runat="server" Text="Products" class="btn btn-primary" OnClick="btnProducts_Click"/>
                    <asp:Button ID="btnUsers" runat="server" Text="Users" class="btn btn-primary" OnClick="btnUsers_Click"/>
                    <asp:Button ID="btnFAQ" runat="server" Text="FAQ" class="btn btn-primary" OnClick="btnFAQ_Click"/>
                    <asp:Button ID="btnHome" runat="server" Text="Home Page" class="btn btn-primary" OnClick="btnHome_Click"/>
                    <asp:Button ID="btnOrders" runat="server" Text="Orders" class="btn btn-primary" OnClick="btnOrders_Click"/>
                </div>
            </div>
            <div class="col-8">
                <asp:Panel ID="PanelCategory" runat="server">
                    <p>Manage Category Panel</p>
                </asp:Panel>
                <asp:Panel ID="PanelManageProducts" runat="server">
                    <p>Manage Products Panel</p>
                </asp:Panel>
                <asp:Panel ID="PanelManageUsers" runat="server">
                    <p>Manage Users Panel</p>
                </asp:Panel>
                <asp:Panel ID="PanelManageFAQ" runat="server">
                    <p>Manage FAQ Panel</p>
                </asp:Panel>
                <asp:Panel ID="PanelManageHome" runat="server">
                    <p>Manage Home Page Panel</p>
                </asp:Panel>
                <asp:Panel ID="PanelManageOrders" runat="server">
                    <p>Manage Orders Panel</p>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>


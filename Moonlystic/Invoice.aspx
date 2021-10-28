<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Moonlystic.Invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Invoice Page</h1>
    <div class="row vh-100">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="card w-100">
                <p class="font-weight-bold">Order Number: <span class="font-italic">12345</span></p>
                <p class="font-weight-bold">Items:</p>
                <p class="font-italic">Item Name x1 RM69.69</p>
                <p class="font-italic">Item Name x1 RM69.69</p>
                <p class="font-italic">Item Name x1 RM69.69</p>
                <p class="font-italic">Item Name x1 RM69.69</p>
                <p class="font-italic">Item Name x1 RM69.69</p>
                <asp:Button ID="btnPrint" runat="server" Text="Print" class="btn btn-lg btn-danger"/>
                <a href="Default.aspx">go back to Home Page</a>
            </div>
        </div>
    </div>
</asp:Content>

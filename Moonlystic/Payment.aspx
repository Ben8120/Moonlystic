<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Moonlystic.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Pay for Order</h1>
    <div class="card w-100 mb-3">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Image</th>
                    <th scope="col">Product</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Total</th>
                </tr>
            </thead>
            <tbody>
                <% foreach (List<string> cartdata in cartData) { %>
                <tr>
                    <td><img src=<% =cartdata[3] %> style="width:50px;height:50px;"/></td>
                    <td><p><% =cartdata[0] %></p></td>
                    <td><% =cartdata[1] %></td>
                    <td>RM<% =cartdata[2] %></td>
                </tr>
                <% } %>
                <tr>
                    <td colspan="3">Subtotal: </td>
                    <td>RM<% =totalPrice %></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="grow mx-auto" style="max-height:320px; max-width:320px;">
                <% =moonCardComponent %>
            </div>
            <asp:Button ID="btnMy" runat="server" Text="Moon" OnClick="btnMy_Click"/>
        </div>
        <div class="col-6">
            <div class="grow mx-auto" style="max-height:320px; max-width:320px;">
                <img src="Assets/bank-card.png" style="max-height:320px; max-width:320px;"/>
            </div>
            <asp:Button ID="btnBank" runat="server" Text="Bank" OnClick="btnBank_Click" />
        </div>
    </div>
    <asp:Panel ID="panelMY" runat="server">
        <h3>Panel for Moon Card</h3>
    </asp:Panel>
    <asp:Panel ID="panelBank" runat="server" Visible="false">
        <h3>Panel for Bank Card</h3>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">Name On Card</span>
            </div>
            <asp:TextBox ID="txtNameOnCard" runat="server" class="form-control" aria-describedby="basic-addon3"></asp:TextBox>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text ml-2">Card Number</span>
            </div>
            <asp:TextBox ID="txtCardNumber" runat="server" class="form-control"></asp:TextBox>
        </div>
    </asp:Panel>
    <asp:Button ID="btnPay" runat="server" Text="Pay Now" class="btn btn-primary btn-lg btn-block" OnClick="btnPay_Click"/>
    <div style="width:100%">
        
    </div>
</asp:Content>

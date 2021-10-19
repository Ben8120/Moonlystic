<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Moonlystic.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Pay for Order</h1>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">Product</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Cats</td>
                <td>100</td>
                <td>RM10.00</td>
            </tr>
            <tr>
                <td>Cats</td>
                <td>100</td>
                <td>RM10.00</td>
            </tr>
            <tr>
                <td>Cats</td>
                <td>100</td>
                <td>RM10.00</td>
            </tr>
            <tr>
                <td>Cats</td>
                <td>100</td>
                <td>RM10.00</td>
            </tr>
            <tr>
                <td colspan="2">Subtotal: </td>
                <td>RM10.00</td>
            </tr>
        </tbody>
    </table>
    <div class="row">
        <div class="col-6">
            <div class="grow my-card">
                <p>Moon Card</p>
            </div>
            <asp:Button ID="btnMy" runat="server" Text="Moon" OnClick="btnMy_Click"/>
        </div>
        <div class="col-6">
            <div class="bank-card grow">
                <p>Bank Card</p>
            </div>
            <asp:Button ID="btnBank" runat="server" Text="Bank" OnClick="btnBank_Click" />
        </div>
    </div>
    <asp:Panel ID="panelMY" runat="server">
        <h3>Panel for Moon Card</h3>
        <p>The User Card Here :( (copy from Profile page that one)</p>
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
    <asp:Button ID="btnPay" runat="server" Text="Pay Now" class="btn btn-primary btn-lg btn-block"/>
    <div style="width:100%">
        
    </div>
</asp:Content>

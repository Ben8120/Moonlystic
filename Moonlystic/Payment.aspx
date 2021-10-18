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
            <p>Pay with MY Card</p>
        </div>
        <div class="col-6">
            <p>Pay with Bank Card</p>
        </div>
    </div>
    <asp:Panel ID="panelMY" runat="server">
        <h3>Panel for Moon Card</h3>
    </asp:Panel>
    <asp:Panel ID="panelBank" runat="server">
        <h3>Panel for Bank Card</h3>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">Name On Card</span>
            </div>
            <asp:TextBox ID="txtNameOnCard" runat="server" class="form-control" aria-describedby="basic-addon3"></asp:TextBox>
            <div class="input-group-prepend">
                <span class="input-group-text ml-2">Card</span>
            </div>
            <asp:TextBox ID="txtCardNumber" runat="server" class="form-control"></asp:TextBox>
        </div>
    </asp:Panel>
</asp:Content>

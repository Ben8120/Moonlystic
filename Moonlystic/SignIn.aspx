<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Moonlystic.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sign In</h1>
    <div class="d-flex justify-content-center">
        <div class="d-flex flex-column m-3">
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email@email.com"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" placeholder="--------" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" />
            <p>Not Registered? <a href="~/SignUp" runat="server">Create an account</a></p>
        </div>
    </div>
</asp:Content>

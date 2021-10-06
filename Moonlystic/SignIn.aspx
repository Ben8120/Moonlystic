<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Moonlystic.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sign In</h1>
    <div>
        <h5>Username</h5>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <h5>Password</h5>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
        <asp:Button ID="btnForgotPassword" runat="server" Text="#Forgot Password Modal" />
    </div>
    
</asp:Content>

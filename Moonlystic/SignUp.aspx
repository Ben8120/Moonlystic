<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Moonlystic.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sign Up</h1>
    <div>
        <h5>First Name:</h5>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <h5>Last Name:</h5>
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>        
        <h5>User Name:</h5>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>        
        <h5>E-mail:</h5>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>        
        <h5>Password:</h5>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>        
        <h5>Confirm Password:</h5>
        <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>       
        <p>By creating an account, you agree to the <a href="#">Terms of service</a> and <a href="#">Privacy Policy</a></p>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up!" />
        <p>Already have an account? <a href="~/SignIn" runat="server">Sign In here</a>!</p>
    </div>

</asp:Content>

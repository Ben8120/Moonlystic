<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Moonlystic.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height:80vh;">
        <div class="d-flex justify-content-center h-100 align-items-center">
            <div class="d-flex flex-column m-3 card">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email@email.com"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="--------" TextMode="Password" class="mt-2"></asp:TextBox>
                <asp:Button ID="btnLogin" runat="server" Text="Sign In" OnClick="btnLogin_Click" class="m-2" />
                <div>
                    <p class="mail">Not Registered? <br /><a href="~/SignUp" runat="server" class="mail">Create an account</a></p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

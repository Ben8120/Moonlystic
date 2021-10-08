<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Moonlystic.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Sign Up</h1>
    <div>
        <table style="width: 100%;">
            <tr>
                <td><h5>First Name:</h5></td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h5>Last Name:</h5></td>
                <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h5>User Name:</h5></td>
                <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h5>Date Of Birth:</h5></td>
                <td><asp:TextBox ID="txtDate" runat="server" Enabled="False"></asp:TextBox>  <asp:Button ID="btnCal" runat="server" Text="Calendar" OnClick="btnCal_Click" /> <asp:Calendar ID="calendar" runat="server" BackColor="#CCCCCC" OnSelectionChanged="calendar_SelectionChanged"></asp:Calendar>    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h5>E-mail:</h5></td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h5>Password:</h5></td>
                <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h5>Confirm Password:</h5></td>
                <td><asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <p>By creating an account, you agree to the <a href="#">Terms of service</a> and <a href="#">Privacy Policy</a></p>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up!" />
        <p>Already have an account? <a href="~/SignIn" runat="server">Sign In</a></p>
    </div>

</asp:Content>

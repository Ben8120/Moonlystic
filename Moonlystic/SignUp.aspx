<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Moonlystic.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--SqlDataSource1 is Users.dbo-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AvenueConnectionString %>" 
        SelectCommand="SELECT * FROM [Users]"
        InsertCommand="INSERT INTO [Users] ([firstName], [lastName], [userName], [dateOfBirth], [email], [password], [userType], [status], [balance], [gameToken], [checkInDays])
        VALUES (@firstName, @lastName, @userName, @dateOfBirth, @email, @password, @userType, @status, @balance, @gameToken, @checkInDays)" OnSelecting="SqlDataSource1_Selecting">

        <InsertParameters>
            <asp:ControlParameter ControlID="txtFirstName" Name="firstName" Type="String" />
            <asp:ControlParameter ControlID="txtLastName" Name="lastName" Type="String" />
            <asp:ControlParameter ControlID="txtUserName" Name="userName" Type="String" />
            <asp:ControlParameter ControlId="txtDate" Name="dateOfBirth" Type="String" />
            <asp:ControlParameter ControlID="txtEmail" Name="email" Type="String" />
            <asp:ControlParameter ControlID="txtPassword" Name="password" Type="String" />
            <asp:Parameter DefaultValue="0" Name="userType" Type="Int32" />
            <asp:Parameter DefaultValue="0" Name="status" Type="Int32" />
            <asp:Parameter DefaultValue="0.00" Name="balance" Type="decimal" />
            <asp:Parameter DefaultValue="0" Name="gameToken" Type="Int32" />
            <asp:Parameter DefaultValue="0" Name="checkInDays" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    
    <div class="vh-100">
    <h1>Sign Up</h1>
    <div>
        <table style="width: 100%;">
            <tr>
                <td><h5>First Name:</h5></td>
                <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorFirst" runat="server" ErrorMessage="*" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><h5>Last Name:</h5></td>
                <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorLast" runat="server" ErrorMessage="*" ControlToValidate="txtLastName"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><h5>User Name:</h5></td>
                <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" ErrorMessage="*" ControlToValidate="txtUserName"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><h5>Date Of Birth:</h5></td>
                <td><asp:TextBox ID="txtDate" runat="server" Enabled="False"></asp:TextBox>  <asp:Button ID="btnCal" runat="server" Text="Calendar" OnClick="btnCal_Click" CausesValidation="false" /> <asp:Calendar ID="calendar" runat="server" BackColor="#CCCCCC" OnSelectionChanged="calendar_SelectionChanged"></asp:Calendar>    </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ErrorMessage="*" ControlToValidate="txtDate"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><h5>E-mail:</h5></td>
                <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><h5>Password:</h5></td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="*" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><h5>Confirm Password:</h5></td>
                <td><asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorCPass" runat="server" ErrorMessage="*" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Password Must Match!" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"></asp:CompareValidator>
                </td>
            </tr>
        </table>

        <p>By creating an account, you agree to the <a href="#">Terms of service</a> and <a href="#">Privacy Policy</a></p>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
        <p>Already have an account? <a href="~/SignIn" runat="server">Sign In</a></p>
    </div>
    </div>

</asp:Content>

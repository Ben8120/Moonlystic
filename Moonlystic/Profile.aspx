<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Moonlystic.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-3">
        <div class="row">
            <div class="col-md-4 col-sm">
                <!--Card goes here-->
                <% =moonCardComponent %>
                <!--Card ends here-->
                <div class="m-3">
                    <asp:Button ID="btnReload" runat="server" Text="Reload" class="btn-block btn-info" style="border-radius:8px;"/>
                </div>
                
                <div class="container card">
                    Daily check in
                </div>
            </div>

            <div class="col-md-8 col-sm card container">
                <!--Profile-->
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">First Name</label>
                            <asp:TextBox runat="server" class="form-control" id="txtFirstName" placeholder="First Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Last Name</label>
                            <asp:TextBox runat="server" class="form-control" id="txtLastName" placeholder="Last Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">User Name</label>
                        <asp:TextBox runat="server" class="form-control" id="txtUserName" placeholder="User Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress2">Date Of Birth</label>
                        <asp:TextBox runat="server" class="form-control" id="txtDate" placeholder="Date Of Birth" ReadOnly="True"></asp:TextBox>                        
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Email</label>
                            <asp:TextBox runat="server" class="form-control" id="txtEmail" placeholder="Email"></asp:TextBox>                        
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Password</label>
                            <asp:TextBox runat="server" class="form-control" id="txtPassword" placeholder="Password" TextMode="Password"></asp:TextBox>                        
                        </div>
                    </div>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <asp:Button ID="btnView" runat="server" Text="View" type="button" class="btn btn-warning" OnClick="btnView_Click"/>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit" type="button" class="btn btn-info" OnClick="btnEdit_Click"/>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" type="button" class="btn btn-success"/>
                </div>
                    <asp:Button ID="btnSave" runat="server" Text="Save" type="button" class="btn btn-primary" OnClick="btnSave_Click"/>
                </form>
            </div>
        </div>
        <div class="card w-100 mt-3">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Product Name</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <% foreach (List<string> carthistory in cartHistory) { %>
                    <tr>
                        <td><% =carthistory[0] %></td>
                        <td><% =carthistory[1] %></td>
                        <td><% =carthistory[2] %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

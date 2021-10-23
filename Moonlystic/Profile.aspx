<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Moonlystic.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Profile Page</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm">
                <!--Card goes here-->
                <div class="container d-flex justify-content-center mt-5">
                    <div class="card">
                        <div class="top-container"> <img src="<%= image %>" class="img-fluid profile-image" width="70">
                            <div class="ml-3">
                                <h5 class="name"><% =Session["firstName"].ToString() + " " +Session["lastName"].ToString() %></h5>
                                <p class="mail"><% =Session["email"] %></p>
                            </div>
                        </div>
                        <div class="middle-container d-flex justify-content-between align-items-center mt-3 p-2">
                            <div class="dollar-div px-3">
                                <div class="round-div"><i class="fa fa-dollar dollar"></i></div>
                            </div>
                            <div class="d-flex flex-column text-right mr-2"> <span class="current-balance">Current Balance</span> <span class="amount"><span class="dollar-sign">RM</span><% =Session["balance"] %></span> </div>
                        </div>
                        <div class="recent-border mt-4"> <span class="recent-orders">Recent orders</span> </div>
                        <div class="wishlist-border pt-2"> <span class="wishlist">Wishlist</span> </div>
                        <div class="fashion-studio-border pt-2"> <span class="fashion-studio">Fashion studio</span> </div>
                    </div>
                </div>
            </div>

            <div class="col-md-8 col-sm card">
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

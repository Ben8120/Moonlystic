<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Moonlystic.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="modal fade" id="reloadModal">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3>Reload your card!</h3>
                            </div>
                            <div class="modal-body">
                                <div class="input-group mb-3">
                                    <asp:TextBox ID="txtReload" runat="server" class="form-control" placeholder="00.00" aria-describedby="btnReload"></asp:TextBox>
                                        <div class="input-group-append">
                                            <asp:Button ID="btnReload" runat="server" Text="Reload!" class="btn btn-outline-secondary" OnClick="btnReload_Click"/>
                                        </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input class="btn btn-primary" data-dismiss="modal" value="Close" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-3">
        <div class="row">
            <div class="col-md-4 col-sm">
                <!--Card goes here-->
                <% =moonCardComponent %>
                <!--Card ends here-->
                <div class="container m-3">
                    <a href="*" data-toggle="modal" data-target="#reloadModal" class="btn-block btn-info text-center" style="border-radius:8px;">Reload</a>
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
            <h5>To Receive</h5>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Product Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <% if ((cartHistory != null) && (!cartHistory.Any())) { %>
                        <tr>
                            <td colspan="4"><p>Sorry, you do not have any items waiting to be delivered.</p></td>
                        </tr>
                    <% } %>
                    <% else { %>
                        <% foreach (List<string> carthistory in cartHistory) { %>
                            <tr>
                                <td><img src="Assets/gray.jpg" style="width:50px;height:50px;"/></td>
                                <td><% =carthistory[0] %></td>
                                <td><% =carthistory[1] %></td>
                                <td><% =carthistory[2] %></td>
                            </tr>
                        <% } %>
                    <% } %>
                </tbody>
            </table>
        </div>
        <div class="card w-100 mt-3">
            <h5>Delivered</h5>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Product Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Price</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <% if ((cartHistory != null) && (!cartHistory.Any()))
                        { %>
                        <tr>
                            <td colspan="4"><p>You have not bought any products yet :)</p></td>
                        </tr>
                    <% } else { %>
                        <% =deliveredCart() %>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

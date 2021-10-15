<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Moonlystic.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Profile Page</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm">
                <!--Card goes here-->
                <div style="background-color:antiquewhite; border-radius:12px;"> <!--Moonlystic Card-->
                    <div class="d-flex bd-highlight">
                        <div class="p-2 flex-grow-1 bd-highlight">Flex Card
                            <p>Balance: <%=getBalance() %></p>
                            <p>Game Tokens: <%=getToken() %></p>
                        </div>
                        <div class="p-2 bd-highlight">Flex Right
                            <img src="https://avatars.dicebear.com/api/jdenticon/ajighaf.svg" />
                        </div>
                    </div>
                </div>

                <div class="mt-2 d-flex justify-content-around" style="background-color:antiquewhite; border-radius:8px;"> <!-- Daily Check in Component-->
                    <%for (int i=0; i<6; i++) { %>
                        <span class="dot" style="background-color:greenyellow;"></span>
                    <% } %>
                    <span class="dot"></span>
                </div>
            </div>

            <div class="col-md-8 col-sm">
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
        <div style="height:200px; background-color:antiquewhite;">
            <p>Hello History cart</p>
        </div>
    </div>
</asp:Content>

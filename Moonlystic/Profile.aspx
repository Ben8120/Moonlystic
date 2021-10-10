<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Moonlystic.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Profile Page</h1>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm">
                <!--Card goes here-->
                <div class="d-flex bd-highlight">
                    <div class="p-2 flex-grow-1 bd-highlight">Flex Item</div>
                    <div class="p-2 bd-highlight">Flex Right</div>
                </div>
            </div>
            <div class="col-md-8 col-sm">
                <!--Profile-->
                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">First Name</label>
                            <input type="email" class="form-control" id="inputEmail4" placeholder="First Name">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Last Name</label>
                            <input type="password" class="form-control" id="inputPassword4" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">User Name</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <label for="inputAddress2">Date Of Birth</label>
                        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Email</label>
                            <input type="email" class="form-control" id="inputEmail5" placeholder="Email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Password</label>
                            <input type="password" class="form-control" id="inputPassword5" placeholder="Password">
                        </div>
                    </div>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <button type="button" class="btn btn-secondary">View</button>
                    <button type="button" class="btn btn-secondary">Edit</button>
                    <button type="button" class="btn btn-secondary">Reset</button>
                </div>
                    <button type="button" class="btn btn-primary">Save</button>
                </form>
            </div>
        </div>
    </div>
</asp:Content>

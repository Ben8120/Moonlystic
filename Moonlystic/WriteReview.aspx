<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WriteReview.aspx.cs" Inherits="Moonlystic.WriteReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="vh-100 row">
        <div class="card w-100 align-self-center">
            <h1>Review Page</h1>
            <h3><% =productName %></h3>
            <p>Your Review:</p>
            <div class="input-group mb-3">
                <asp:TextBox ID="txtReview" runat="server" class="form-control w-100" aria-describedby="btnReview" TextMode="MultiLine"></asp:TextBox>
                <div class="input-group-append">
                    <asp:Button ID="btnReview" runat="server" Text="Review" class="btn-btn-outline-secondary" OnClick="btnReview_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

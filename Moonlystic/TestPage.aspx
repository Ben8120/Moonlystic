<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="Moonlystic.TestPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .messagealert {
            width: 100%;
            position: fixed;
             top:0px;
            z-index: 100000;
            padding: 0;
            font-size: 15px;
        }
    </style>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
        }
    </script>

    <div id="form1" runat="server">
        <div>
            <div class="messagealert" id="alert_container">
            </div>
 
             <div style="margin-top: 100px; text-align:center;">
            <asp:Button ID="btnSuccess" runat="server" Text="Submit" CssClass="btn btn-success"
                OnClick="btnSuccess_Click" />
            <asp:Button ID="btnDanger" runat="server" Text="Danger" CssClass="btn btn-danger"
                OnClick="btnDanger_Click" />
            <asp:Button ID="btnWarning" runat="server" Text="Warning" CssClass="btn btn-warning"
                OnClick="btnWarning_Click" />
            <asp:Button ID="btnInfo" runat="server" Text="Info" CssClass="btn btn-info"
                OnClick="btnInfo_Click" />
            </div>
        </div>
    </div>
</asp:Content>

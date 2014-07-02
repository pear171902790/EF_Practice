<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="EF_Practice.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager runat="server"></asp:ScriptManager>
        <script>
            var pageLoaded = function (sender, args) {
                var upId = "<%= this.myUP.ClientID %>";
                var item = args.get_dataItems()[upId];
                if (!(typeof (item) === 'undefined')) {
                    alert(item);
                }
                
                
            };
            Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(pageLoaded);           

        </script>
        <asp:UpdatePanel runat="server" ID="myUP">
            <ContentTemplate>
                <% var a = 0; %>
                <asp:Label runat="server" ID="Label"></asp:Label>
                <asp:Button runat="server" ID="Btn" OnClick="Btn_Click"/>
               
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
        <% var b = 0; %>
    </form>
</body>
</html>

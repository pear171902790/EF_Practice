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
                var upId = "<%= this.myUP1.ClientID %>";
                var item = args.get_dataItems()[upId];
                if (!(typeof (item) === 'undefined')) {
                    alert(item);
                }
                
                
            };
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_pageLoaded(pageLoaded);           

        </script>
        <asp:UpdatePanel runat="server" ID="myUP1" UpdateMode="Conditional">
            <ContentTemplate>
                <% if (IsAlert)
                   {%>
                <span>IsAlert</span>
                   <%} %>
                <asp:Label runat="server" ID="Label1"></asp:Label>
                <asp:Button runat="server" ID="Btn1" OnClick="Btn1_Click" Text="1"/>
               
            </ContentTemplate>
        </asp:UpdatePanel>
        <br/>
        <asp:UpdatePanel runat="server" ID="up2">
            <ContentTemplate>
                <asp:TextBox runat="server" ID="TB2"></asp:TextBox>
                <asp:Button runat="server" ID="Btn2" OnClick="Btn2_Click" Text="2"/>
            <asp:UpdatePanel runat="server" ID="up22">
                <ContentTemplate>
                    <asp:Button runat="server"  ID="Btn22" OnClick="Btn22_Click" Text="22"/>
                    <asp:TextBox runat="server" ID="TB22"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
        <% var b = 0; %>
    </form>
</body>
</html>

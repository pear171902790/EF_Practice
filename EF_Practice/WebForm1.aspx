<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EF_Practice.WebForm1" %>

<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>
<%@ Register Src="~/WebUserControl2.ascx" TagPrefix="uc1" TagName="WebUserControl2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% var a = 0; %>
        ---------------------------------------------------------------------------------------------
        <br />
    <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
    <br />
    -------------------------------------------------------------------------------------------------
        <br />
    <uc1:WebUserControl2 runat="server" ID="WebUserControl2" />
    <br />
    -------------------------------------------------------------------------------------------------
        
        <% var b = 0; %>
</asp:Content>

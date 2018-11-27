<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EmmaSmallEngine.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Admin</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="admin" runat="server">
            <div class="Banner">
                <asp:Image ID="logo" runat="server" ImageUrl="~/img/logo.png" Width="185px" style="text-align: left" />
                <h1><strong>Emma&#39;s Small Engine</strong></h1>
            </div>
            <div class="Nav">
                <br />
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx" style="margin-right: 0px; text-decoration: underline;">Admin</a>
                <br /><br />
            </div>
        </form>
    </body>
</html>

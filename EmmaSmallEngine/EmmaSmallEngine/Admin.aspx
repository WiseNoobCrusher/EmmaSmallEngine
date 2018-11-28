<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EmmaSmallEngine.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Admin</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="admin" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx" style="margin-right: 0px; text-decoration: underline;">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
            <div class="auto-style1">

                <asp:RadioButton ID="RadioButton1" runat="server" Text="Weekly Report" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Warranty Report" />
                <br />
                <br style="font-size: x-small" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="View" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="View" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="FinalAssignment.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engine - Orders</title>
    <link rel="stylesheet" href="~/css/styles.css" />
</head>
<body class="Font">
    <form id="deliveries" runat="server">
        <div>
            <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
        </div>
        <div class="Nav">
            <br style="font-size: small"/>
            <a class="NavItems" href="Home.aspx">Home</a>
            <a class="NavItems" href="Sales.aspx">Sales</a>
            <asp:DropDownList runat="server" ID="ddlManagement" CssClass="NavItems" AutoPostBack="True" ViewStateMode="Enabled" Font-Bold="true" style="text-decoration: underline"  OnSelectedIndexChanged="ddlManagement_SelectedIndexChanged">
                <asp:ListItem>Management</asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Orders</asp:ListItem>
                <asp:ListItem>Deliveries</asp:ListItem>
            </asp:DropDownList>
            <a class="NavItems" href="Ordering.aspx">Ordering</a>
            <a class="NavItems" href="Inventory.aspx">Inventory</a>
            <a class="NavItems" href="Admin.aspx">Admin</a>
            <br style="font-size: small"/><br style="font-size: small"/>
        </div>
    </form>
</body>
</html>

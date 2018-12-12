<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmmaSmallEngine.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Home</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="home" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx" style="text-decoration: underline">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <asp:DropDownList runat="server" ID="ddlManagement" CssClass="NavItems" AutoPostBack="True" ViewStateMode="Enabled" Font-Bold="true"  OnSelectedIndexChanged="ddlManagement_SelectedIndexChanged">
                    <asp:ListItem>Management</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Orders</asp:ListItem>
                    <asp:ListItem>Deliveries</asp:ListItem>
                    <asp:ListItem>Repairs</asp:ListItem>
                </asp:DropDownList>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
            <h1 style="text-align:center; font-size:25pt;">Welcome <asp:Label ID="lblWelcome" runat="server"></asp:Label>!!</h1>
            <h2 style="text-align:center; font-size:20pt;">Quick Access:</h2>
            <div class="ButtonBlock">
                <div class="ButtonDiv">
                    <asp:ImageButton class="ButtonCovers" runat="server" OnClick="btnInventory_Click" ImageUrl="~/img/Inventory.png" /><br />
                    <asp:LinkButton OnClick="btnInventory_Click" runat="server">Inventory</asp:LinkButton>
                </div>
                <div class="ButtonDiv">
                    <asp:ImageButton class="ButtonCovers" runat="server" OnClick="btnSales_Click" ImageUrl="~/img/Sales.png" /><br />
                    <asp:LinkButton OnClick="btnSales_Click" runat="server">Sales</asp:LinkButton>
                </div>
                <div class="ButtonDiv">
                    <asp:ImageButton class="ButtonCovers" runat="server" OnClick="btnOrdering_Click" ImageUrl="~/img/Ordering.png" /><br />
                    <asp:LinkButton OnClick="btnOrdering_Click" runat="server">Ordering</asp:LinkButton>
                </div>
                <div class="ButtonDiv">
                    <asp:ImageButton class="ButtonCovers" runat="server" OnClick="btnAdmin_Click" ImageUrl="~/img/Admin.png" /><br />
                    <asp:LinkButton OnClick="btnAdmin_Click" runat="server">Admin</asp:LinkButton>
                </div>
            </div>
        </form>
    </body>
</html>

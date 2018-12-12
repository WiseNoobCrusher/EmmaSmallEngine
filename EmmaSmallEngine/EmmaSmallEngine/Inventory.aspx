<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmaSmallEngine.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Inventory</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="inventory" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <asp:DropDownList runat="server" ID="ddlManagement" CssClass="NavItems" AutoPostBack="True" ViewStateMode="Enabled" Font-Bold="true"  OnSelectedIndexChanged="ddlManagement_SelectedIndexChanged">
                    <asp:ListItem>Management</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Orders</asp:ListItem>
                    <asp:ListItem>Deliveries</asp:ListItem>
                    <asp:ListItem>Repairs</asp:ListItem>
                </asp:DropDownList>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx" style="text-decoration: underline">Inventory</a>
                <a class="NavItems" href="Admin.aspx">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
            <div class="InventoryForm" style="height: 495px">
                <h1>Choose an item from the list</h1>
                <p>&nbsp;</p>
                <asp:DropDownList id="ddlInventory" runat="server">
                    <asp:ListItem Value="0">Choose an item...</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" Height="39px" Width="103px" />
                <br />
                <br />
                <h6>Note: This show items only from the inventory</h6>

            </div>
        </form>
    </body>
</html>

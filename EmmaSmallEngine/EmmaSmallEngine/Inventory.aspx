<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmaSmallEngine.Inventory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Inventory</title>
        <link rel="stylesheet" href="~/css/styles.css" />
        <style type="text/css">
            .auto-style1 {
                text-align: center;
            }
        </style>
    </head>
    <body class="Font">
        <form id="inventory" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br />
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx" style="text-decoration: underline">Inventory</a>
                <a class="NavItems" href="Admin.aspx"style="margin-right: 0px">Admin</a>
                <br /><br />
            </div>
            <div class="auto-style1" style="height: 495px">
                <h1>Choose an item from the list</h1>
                <p>&nbsp;</p>
                <asp:DropDownList ID="DropDownList1" runat="server" style="text-align: center" Height="209px" Width="316px">
                    <asp:ListItem Value="0">Choose an item...</asp:ListItem>
                </asp:DropDownList>
                <br />
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

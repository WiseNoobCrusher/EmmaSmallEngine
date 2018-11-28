<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmaSmallEngine.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Sales</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="sales" runat="server">
            <div class="Banner">
                <asp:Image ID="logo" runat="server" ImageUrl="~/img/logo.png" Width="185px" style="text-align: left" />
                <h1><strong>Emma&#39;s Small Engine</strong></h1>
            </div>
            <div class="Nav">
                <br />
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx" style="text-decoration: underline">Sales</a>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx"style="margin-right: 0px">Admin</a>
                <br /><br />
            </div>

            <div style="text-align: center">
                <label class="Labels">Select a Customer:</label><br />
                <asp:DropDownList runat="server" class="CustomerDDL">
                    <asp:ListItem>Pick one...</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="custSubmit" class="CustButton" runat="server" Text="Submit" />
                <br /><br /><br />
                <div class="SalesListViews">
                    <label class="Labels">Customer Info: </label>
                    <asp:ListView ID="lvCustInfo" runat="server">
                    </asp:ListView><br />

                    <label class="Labels">Equipment Info: </label>
                    <asp:ListView ID="lvEquipment" runat="server">
                    </asp:ListView><br />

                    <label class="Labels">Order Info: </label>
                    <asp:ListView ID="lvOrders" runat="server">
                    </asp:ListView><br />

                    <label class="Labels">Repair Info: </label>
                    <asp:ListView ID="lvRepairs" runat="server">
                    </asp:ListView>
                </div>
                <br />
            </div>

        </form>
    </body>
</html>

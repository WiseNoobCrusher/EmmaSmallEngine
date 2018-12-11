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
                <asp:DropDownList runat="server" ID="ddlManagement" CssClass="NavItems" AutoPostBack="True" ViewStateMode="Enabled" Font-Bold="true"  OnSelectedIndexChanged="ddlManagement_SelectedIndexChanged">
                    <asp:ListItem>Management</asp:ListItem>
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Orders</asp:ListItem>
                    <asp:ListItem>Deliveries</asp:ListItem>
                </asp:DropDownList>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx" style="text-decoration: underline">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
            <div class="AdminButtonBlock">
                <div class="AdminRadioButtons">
                    <asp:RadioButton runat="server" id="rbWeekly" GroupName="Report" AutoPostBack="true" /><br />
                    <asp:Label runat="server">Weekly Report</asp:Label>
                </div>
                <div class="AdminRadioButtons">
                    <asp:RadioButton runat="server" id="rbOrders" GroupName="Report" AutoPostBack="true" /><br />
                    <asp:Label runat="server">Warranty Report</asp:Label>
                </div>
            </div>
            <br />
            <div class="GenerateButton">
                <asp:Button ID="btnGenerate" type="Submit" Text="Generate" runat="server" OnClick="btnGenerate_Click" />
            </div>
            <br /><br />
            <div>
                <asp:Label id="hi" runat="server" Visible="false"></asp:Label>
            </div>
        </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmaSmallEngine.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Sales</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>
    <body class="Font">
        <form id="sales" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx" style="text-decoration: underline">Sales</a>
                <asp:DropDownList runat="server" ID="ddlManagement" CssClass="NavItems" AutoPostBack="True" ViewStateMode="Enabled" Font-Bold="true"  OnSelectedIndexChanged="ddlManagement_SelectedIndexChanged">
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
            <div>
                <table class="SalesFilterForm">
                <tr>
                    <td class="LabelName">Customer Name:</td>
                    <td style="text-align: right">
                        <asp:TextBox ID="txtCustName" runat="server" Height="20px" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="LabelLogin">Customer City:</td>
                    <td style="text-align: right">
                        <asp:TextBox ID="txtCustCity" runat="server" Height="20px" Width="160px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            </div>
            <div style="text-align: center">
                <label class="Labels">Select a Customer:</label><br />
                <asp:DropDownList runat="server" class="CustomerDDL" ID="ddlCustomers">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="custSubmit" class="CustButton" runat="server" Text="Submit" OnClick="custSubmit_Click" />
                <br /><br /><br />
                <asp:Label ID="lblCustInfo" Visible="False" runat="server"><h2>Customer Information:</h2></asp:Label>
                <asp:Table ID="tblCustInfo" runat="server" CssClass="table table-bordered table-hover" EnableViewState="true" HorizontalAlign="Center" Visible="False" BorderWidth="1px" GridLines="Both">
                    <asp:TableRow ID="tblCustInfoTableHeadings" runat="server" Visible="false">
                        <asp:TableCell runat="server" Font-Bold="True">Email Address</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Postal Code</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">City</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Address</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Phone Number</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Equipment Model</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Equipment Serial</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Equipment Type</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br />
                <asp:Label ID="lblOrders" Visible="False" runat="server"><h2>Order Information:</h2></asp:Label>
                <asp:Label ID="lblOrdersNull" Visible="False" runat="server"></asp:Label>
                <asp:Table ID="tblOrders" runat="server" CssClass="table table-bordered table-hover" EnableViewState="true" HorizontalAlign="Center" Visible="False" BorderWidth="1px" GridLines="Both">
                    <asp:TableRow ID="tblOrdersTableHeadings" runat="server" Visible="false">
                        <asp:TableCell runat="server" Font-Bold="True">Order Number</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Product Name</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Price</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Order Date</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br />
                <asp:Label ID="lblRepairs" Visible="False" runat="server"><h2>Repair Information:</h2></asp:Label>
                <asp:Label ID="lblRepairsNull" Visible="False" runat="server"></asp:Label>
                <asp:Table ID="tblRepairs" runat="server" CssClass="table table-bordered table-hover" EnableViewState="true" HorizontalAlign="Center" Visible="False" BorderWidth="1px" GridLines="Both">
                    <asp:TableRow ID="tblRepairsTableHeadings" runat="server" Visible="false">
                        <asp:TableCell runat="server" Font-Bold="True">Name of Service</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Service Description</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Price</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Service Order In</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Service Order Out</asp:TableCell>
                        <asp:TableCell runat="server" Font-Bold="True">Service Order Issue</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <br />
            </div>

        </form>
    </body>
</html>

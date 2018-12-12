<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deliveries.aspx.cs" Inherits="FinalAssignment.Deliveries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engine - Deliveries</title>
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
                <asp:ListItem>Repairs</asp:ListItem>
            </asp:DropDownList>
            <a class="NavItems" href="Ordering.aspx">Ordering</a>
            <a class="NavItems" href="Inventory.aspx">Inventory</a>
            <a class="NavItems" href="Admin.aspx">Admin</a>
            <br style="font-size: small"/><br style="font-size: small"/>
        </div>
        <div align="center">
            <label class="Labels">Deliveries:<br />
            </label><br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="dsDelivery">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="custFirstLabel" runat="server" Text='<%# Eval("custFirst") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custLastLabel" runat="server" Text='<%# Eval("custLast") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Eval("custPhone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custAddressLabel" runat="server" Text='<%# Eval("custAddress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custCityLabel" runat="server" Text='<%# Eval("custCity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custPostalLabel" runat="server" Text='<%# Eval("custPostal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Eval("prodDescription") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="custFirstLabel" runat="server" Text='<%# Eval("custFirst") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custLastLabel" runat="server" Text='<%# Eval("custLast") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Eval("custPhone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custAddressLabel" runat="server" Text='<%# Eval("custAddress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custCityLabel" runat="server" Text='<%# Eval("custCity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custPostalLabel" runat="server" Text='<%# Eval("custPostal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Eval("prodDescription") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">First Name</th>
                                        <th runat="server">Last Name</th>
                                        <th runat="server">Phone Number</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">City</th>
                                        <th runat="server">Postal Code</th>
                                        <th runat="server">Order Number</th>
                                        <th runat="server">Order Date</th>
                                        <th runat="server">Product Name</th>
                                        <th runat="server">Product Description</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Label ID="custFirstLabel" runat="server" Text='<%# Eval("custFirst") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custLastLabel" runat="server" Text='<%# Eval("custLast") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Eval("custPhone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custAddressLabel" runat="server" Text='<%# Eval("custAddress") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custCityLabel" runat="server" Text='<%# Eval("custCity") %>' />
                        </td>
                        <td>
                            <asp:Label ID="custPostalLabel" runat="server" Text='<%# Eval("custPostal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Eval("prodDescription") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <asp:ObjectDataSource ID="dsDelivery" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.DeliveryDatasetTableAdapters.deliveryTableAdapter"></asp:ObjectDataSource>

        </div>
    </form>
</body>
</html>

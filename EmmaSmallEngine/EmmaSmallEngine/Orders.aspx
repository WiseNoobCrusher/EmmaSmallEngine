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
                <asp:ListItem>Repairs</asp:ListItem>
            </asp:DropDownList>
            <a class="NavItems" href="Ordering.aspx">Ordering</a>
            <a class="NavItems" href="Inventory.aspx">Inventory</a>
            <a class="NavItems" href="Admin.aspx">Admin</a>
            <br style="font-size: small"/><br style="font-size: small"/>
        </div>
        <br />
        <div align="center">
            <label class="Labels">Orders:</label>
            <br />
            <br />
            <br />
            <label class="Labels">Search by Customer:</label><br />
            <asp:DropDownList ID="ddlCustomer" class="CustomerDDL" runat="server" AutoPostBack="True" DataSourceID="dsCustomers" DataTextField="Customer" DataValueField="id">
            </asp:DropDownList>
            <br />
            <br />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="dsOrders">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Eval("prodDescription") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Eval("prodBrand") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="orlQuantityLabel" runat="server" Text='<%# Eval("orlQuantity") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Eval("orlOrderReq") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="orlNoteLabel" runat="server" Text='<%# Eval("orlNote") %>' />
                        </td>
                        <td>
                            <asp:Label ID="orlPriceLabel" runat="server" Text='<%# Eval("orlPrice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="payTypeLabel" runat="server" Text='<%# Eval("payType") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Eval("ordPaid") %>' Enabled="false" />
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
                            <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="orlQuantityTextBox" runat="server" Text='<%# Bind("orlQuantity") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Bind("orlOrderReq") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="orlNoteTextBox" runat="server" Text='<%# Bind("orlNote") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="orlPriceTextBox" runat="server" Text='<%# Bind("orlPrice") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="payTypeTextBox" runat="server" Text='<%# Bind("payType") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Bind("ordPaid") %>' />
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
                            <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodNameTextBox" runat="server" Text='<%# Bind("prodName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodDescriptionTextBox" runat="server" Text='<%# Bind("prodDescription") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="prodBrandTextBox" runat="server" Text='<%# Bind("prodBrand") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="orlQuantityTextBox" runat="server" Text='<%# Bind("orlQuantity") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Bind("orlOrderReq") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="orlNoteTextBox" runat="server" Text='<%# Bind("orlNote") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="orlPriceTextBox" runat="server" Text='<%# Bind("orlPrice") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="payTypeTextBox" runat="server" Text='<%# Bind("payType") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Bind("ordPaid") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Eval("prodDescription") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Eval("prodBrand") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="orlQuantityLabel" runat="server" Text='<%# Eval("orlQuantity") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Eval("orlOrderReq") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="orlNoteLabel" runat="server" Text='<%# Eval("orlNote") %>' />
                        </td>
                        <td>
                            <asp:Label ID="orlPriceLabel" runat="server" Text='<%# Eval("orlPrice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="payTypeLabel" runat="server" Text='<%# Eval("payType") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Eval("ordPaid") %>' Enabled="false" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">Order Number</th>
                                        <th runat="server">Product Name</th>
                                        <th runat="server">Product Desc.</th>
                                        <th runat="server">Brand</th>
                                        <th runat="server">Date</th>
                                        <th runat="server">Quantity</th>
                                        <th runat="server">Order Req.?</th>
                                        <th runat="server">Note</th>
                                        <th runat="server">Price</th>
                                        <th runat="server">Payment</th>
                                        <th runat="server">Paid?</th>
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
                            <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodNameLabel" runat="server" Text='<%# Eval("prodName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodDescriptionLabel" runat="server" Text='<%# Eval("prodDescription") %>' />
                        </td>
                        <td>
                            <asp:Label ID="prodBrandLabel" runat="server" Text='<%# Eval("prodBrand") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="orlQuantityLabel" runat="server" Text='<%# Eval("orlQuantity") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="orlOrderReqCheckBox" runat="server" Checked='<%# Eval("orlOrderReq") %>' Enabled="false" />
                        </td>
                        <td>
                            <asp:Label ID="orlNoteLabel" runat="server" Text='<%# Eval("orlNote") %>' />
                        </td>
                        <td>
                            <asp:Label ID="orlPriceLabel" runat="server" Text='<%# Eval("orlPrice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="payTypeLabel" runat="server" Text='<%# Eval("payType") %>' />
                        </td>
                        <td>
                            <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Eval("ordPaid") %>' Enabled="false" />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <asp:ObjectDataSource ID="dsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.OrderDatasetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="dsOrders" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.OrderDatasetTableAdapters.orderTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlCustomer" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />

        </div>
    </form>
</body>
</html>

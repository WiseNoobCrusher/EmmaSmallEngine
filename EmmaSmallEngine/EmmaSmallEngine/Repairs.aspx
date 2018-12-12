<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="FinalAssignment.Repairs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engine - Repairs</title>
    <link rel="stylesheet" href="~/css/styles.css" />
</head>
<body class="Font">
        <form id="repairs" runat="server">
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
                <label class="Labels">Repairs:</label><br /><br />
                <label class="Labels">Search by Customer:</label><br />

                <asp:DropDownList ID="ddlCustomers" class="CustomerDDL" runat="server" DataSourceID="dsCustomers" DataTextField="Customer" DataValueField="id" AutoPostBack="True">
                </asp:DropDownList>
                <br />
                <br />
                <asp:ListView ID="ListView1" runat="server" DataSourceID="dsRepairs">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FFF8DC;">
                            <td>
                                <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Eval("ordNumber") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordDateInLabel" runat="server" Text='<%# Eval("serordDateIn") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordDateOutLabel" runat="server" Text='<%# Eval("serordDateOut") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordIssueLabel" runat="server" Text='<%# Eval("serordIssue") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Eval("serordWarranty") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:Label ID="serNameLabel" runat="server" Text='<%# Eval("serName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serDescriptionLabel" runat="server" Text='<%# Eval("serDescription") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serPriceLabel" runat="server" Text='<%# Eval("serPrice") %>' />
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
                                <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serordDateInTextBox" runat="server" Text='<%# Bind("serordDateIn") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serordDateOutTextBox" runat="server" Text='<%# Bind("serordDateOut") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serordIssueTextBox" runat="server" Text='<%# Bind("serordIssue") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Bind("serordWarranty") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serNameTextBox" runat="server" Text='<%# Bind("serName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serDescriptionTextBox" runat="server" Text='<%# Bind("serDescription") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serPriceTextBox" runat="server" Text='<%# Bind("serPrice") %>' />
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
                                <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serordDateInTextBox" runat="server" Text='<%# Bind("serordDateIn") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serordDateOutTextBox" runat="server" Text='<%# Bind("serordDateOut") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serordIssueTextBox" runat="server" Text='<%# Bind("serordIssue") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Bind("serordWarranty") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serNameTextBox" runat="server" Text='<%# Bind("serName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serDescriptionTextBox" runat="server" Text='<%# Bind("serDescription") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="serPriceTextBox" runat="server" Text='<%# Bind("serPrice") %>' />
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
                                <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordDateInLabel" runat="server" Text='<%# Eval("serordDateIn") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordDateOutLabel" runat="server" Text='<%# Eval("serordDateOut") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordIssueLabel" runat="server" Text='<%# Eval("serordIssue") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Eval("serordWarranty") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:Label ID="serNameLabel" runat="server" Text='<%# Eval("serName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serDescriptionLabel" runat="server" Text='<%# Eval("serDescription") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serPriceLabel" runat="server" Text='<%# Eval("serPrice") %>' />
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
                                            <th runat="server">ordNumber</th>
                                            <th runat="server">ordDate</th>
                                            <th runat="server">serordDateIn</th>
                                            <th runat="server">serordDateOut</th>
                                            <th runat="server">serordIssue</th>
                                            <th runat="server">serordWarranty</th>
                                            <th runat="server">serName</th>
                                            <th runat="server">serDescription</th>
                                            <th runat="server">serPrice</th>
                                            <th runat="server">ordPaid</th>
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
                                <asp:Label ID="ordDateLabel" runat="server" Text='<%# Eval("ordDate") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordDateInLabel" runat="server" Text='<%# Eval("serordDateIn") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordDateOutLabel" runat="server" Text='<%# Eval("serordDateOut") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serordIssueLabel" runat="server" Text='<%# Eval("serordIssue") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Eval("serordWarranty") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:Label ID="serNameLabel" runat="server" Text='<%# Eval("serName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serDescriptionLabel" runat="server" Text='<%# Eval("serDescription") %>' />
                            </td>
                            <td>
                                <asp:Label ID="serPriceLabel" runat="server" Text='<%# Eval("serPrice") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Eval("ordPaid") %>' Enabled="false" />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <br />
                <asp:ObjectDataSource ID="dsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.RepairDatasetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="dsRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.RepairDatasetTableAdapters.repairTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCustomers" DefaultValue="0" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
            </div>
    </form>
</body>
</html>

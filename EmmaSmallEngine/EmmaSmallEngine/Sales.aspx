<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmaSmallEngine.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Sales</title>
        <link rel="stylesheet" href="~/css/styles.css" />
        <style type="text/css">
            .auto-style1 {
                width: 45%;
                max-height: 45%;
                display: inline-block;
                text-align: center;
                margin-top: 0px;
            }
        </style>
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
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx"style="margin-right: 0px">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>

            <div style="text-align: center">
                <label class="Labels">Select a Customer:</label><br />
                <asp:DropDownList runat="server" class="CustomerDDL" ID="ddlCustomers" AutoPostBack="True" DataSourceID="dsCustomers" DataTextField="Customer" DataValueField="id">
                    <asp:ListItem>Pick one...</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="custSubmit" class="CustButton" runat="server" Text="Submit" />
                <br /><br /><br />
                <div>
                    <div class="SalesInlineBlock">
                        <label class="Labels">Customer Info: </label>
                        <div class="SalesFormView">
                            <asp:FormView ID="fvCustInfo" runat="server" DataSourceID="dsCustInfo">
                                <EditItemTemplate>
                                    custEmail:
                                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                                    <br />
                                    custPostal:
                                    <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                                    <br />
                                    custCity:
                                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                                    <br />
                                    custAddress:
                                    <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                                    <br />
                                    custPhone:
                                    <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    custEmail:
                                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                                    <br />
                                    custPostal:
                                    <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                                    <br />
                                    custCity:
                                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                                    <br />
                                    custAddress:
                                    <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                                    <br />
                                    custPhone:
                                    <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    custEmail:
                                    <asp:Label ID="custEmailLabel" runat="server" Text='<%# Bind("custEmail") %>' />
                                    <br />
                                    custPostal:
                                    <asp:Label ID="custPostalLabel" runat="server" Text='<%# Bind("custPostal") %>' />
                                    <br />
                                    custCity:
                                    <asp:Label ID="custCityLabel" runat="server" Text='<%# Bind("custCity") %>' />
                                    <br />
                                    custAddress:
                                    <asp:Label ID="custAddressLabel" runat="server" Text='<%# Bind("custAddress") %>' />
                                    <br />
                                    custPhone:
                                    <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Bind("custPhone") %>' />
                                    <br />

                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                        
                    <div class="SalesInlineBlock">
                        <label class="Labels">Equipment Info: </label>
                        <div class="SalesFormView">
                            <asp:FormView ID="fvEquipment" runat="server" DataKeyNames="id" DataSourceID="dsEquipment">
                                <EditItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    equModel:
                                    <asp:TextBox ID="equModelTextBox" runat="server" Text='<%# Bind("equModel") %>' />
                                    <br />
                                    eqtType:
                                    <asp:TextBox ID="eqtTypeTextBox" runat="server" Text='<%# Bind("eqtType") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    equModel:
                                    <asp:TextBox ID="equModelTextBox" runat="server" Text='<%# Bind("equModel") %>' />
                                    <br />
                                    eqtType:
                                    <asp:TextBox ID="eqtTypeTextBox" runat="server" Text='<%# Bind("eqtType") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    equModel:
                                    <asp:Label ID="equModelLabel" runat="server" Text='<%# Bind("equModel") %>' />
                                    <br />
                                    eqtType:
                                    <asp:Label ID="eqtTypeLabel" runat="server" Text='<%# Bind("eqtType") %>' />
                                    <br />
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                    <div class="SalesInlineBlock">
                        <label class="Labels">Order Info: </label>
                        <div class="SalesFormView">
                            <asp:FormView ID="fvOrders" runat="server" DataKeyNames="id" DataSourceID="dsOrders">
                                <EditItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    ordNumber:
                                    <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                                    <br />
                                    ordDate:
                                    <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                                    <br />
                                    orlPrice:
                                    <asp:TextBox ID="orlPriceTextBox" runat="server" Text='<%# Bind("orlPrice") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    ordNumber:
                                    <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                                    <br />
                                    ordDate:
                                    <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                                    <br />
                                    orlPrice:
                                    <asp:TextBox ID="orlPriceTextBox" runat="server" Text='<%# Bind("orlPrice") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    ordNumber:
                                    <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Bind("ordNumber") %>' />
                                    <br />
                                    ordDate:
                                    <asp:Label ID="ordDateLabel" runat="server" Text='<%# Bind("ordDate") %>' />
                                    <br />
                                    orlPrice:
                                    <asp:Label ID="orlPriceLabel" runat="server" Text='<%# Bind("orlPrice") %>' />
                                    <br />

                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                    <div class="SalesInlineBlock">
                        <label class="Labels">Repair Info: </label>
                        <div class="SalesFormView">
                            <asp:FormView ID="fvRepairs" runat="server" DataKeyNames="id" DataSourceID="dsRepairs">
                                <EditItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    serName:
                                    <asp:TextBox ID="serNameTextBox" runat="server" Text='<%# Bind("serName") %>' />
                                    <br />
                                    serDescription:
                                    <asp:TextBox ID="serDescriptionTextBox" runat="server" Text='<%# Bind("serDescription") %>' />
                                    <br />
                                    serPrice:
                                    <asp:TextBox ID="serPriceTextBox" runat="server" Text='<%# Bind("serPrice") %>' />
                                    <br />
                                    serordDateIn:
                                    <asp:TextBox ID="serordDateInTextBox" runat="server" Text='<%# Bind("serordDateIn") %>' />
                                    <br />
                                    serordDateOut:
                                    <asp:TextBox ID="serordDateOutTextBox" runat="server" Text='<%# Bind("serordDateOut") %>' />
                                    <br />
                                    serordIssue:
                                    <asp:TextBox ID="serordIssueTextBox" runat="server" Text='<%# Bind("serordIssue") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    serName:
                                    <asp:TextBox ID="serNameTextBox" runat="server" Text='<%# Bind("serName") %>' />
                                    <br />
                                    serDescription:
                                    <asp:TextBox ID="serDescriptionTextBox" runat="server" Text='<%# Bind("serDescription") %>' />
                                    <br />
                                    serPrice:
                                    <asp:TextBox ID="serPriceTextBox" runat="server" Text='<%# Bind("serPrice") %>' />
                                    <br />
                                    serordDateIn:
                                    <asp:TextBox ID="serordDateInTextBox" runat="server" Text='<%# Bind("serordDateIn") %>' />
                                    <br />
                                    serordDateOut:
                                    <asp:TextBox ID="serordDateOutTextBox" runat="server" Text='<%# Bind("serordDateOut") %>' />
                                    <br />
                                    serordIssue:
                                    <asp:TextBox ID="serordIssueTextBox" runat="server" Text='<%# Bind("serordIssue") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    id:
                                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    <br />
                                    serName:
                                    <asp:Label ID="serNameLabel" runat="server" Text='<%# Bind("serName") %>' />
                                    <br />
                                    serDescription:
                                    <asp:Label ID="serDescriptionLabel" runat="server" Text='<%# Bind("serDescription") %>' />
                                    <br />
                                    serPrice:
                                    <asp:Label ID="serPriceLabel" runat="server" Text='<%# Bind("serPrice") %>' />
                                    <br />
                                    serordDateIn:
                                    <asp:Label ID="serordDateInLabel" runat="server" Text='<%# Bind("serordDateIn") %>' />
                                    <br />
                                    serordDateOut:
                                    <asp:Label ID="serordDateOutLabel" runat="server" Text='<%# Bind("serordDateOut") %>' />
                                    <br />
                                    serordIssue:
                                    <asp:Label ID="serordIssueLabel" runat="server" Text='<%# Bind("serordIssue") %>' />
                                    <br />
                                </ItemTemplate>
                            </asp:FormView>
                        </div>
                    </div>
                </div>
                <br />
                <asp:ObjectDataSource ID="dsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.SalesDatasetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="dsCustInfo" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.SalesDatasetTableAdapters.custinfoTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCustomers" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="dsEquipment" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.SalesDatasetTableAdapters.equipmentTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCustomers" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="dsOrders" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.SalesDatasetTableAdapters.ordersTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCustomers" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="dsRepairs" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="SalesDatasets.SalesDatasetTableAdapters.repairsTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlCustomers" DefaultValue="1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
            </div>

        </form>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ordering.aspx.cs" Inherits="EmmaSmallEngine.Ordering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Emma's Small Engine - Ordering</title>
        <link rel="stylesheet" href="~/css/styles.css" />
        <style type="text/css">
            .auto-style1 {
                text-align: center;
            }
        </style>
    </head>
    <body class="Font">
        <form id="ordering" runat="server">
            <div>
                <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
            </div>
            <div class="Nav">
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <a class="NavItems" href="Ordering.aspx" style="text-decoration: underline">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx"style="margin-right: 0px">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
                <div class="auto-style1" style="height: 275px">
                    <asp:Label ID="Label1" runat="server" Text="Order Number: "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Item Ordered:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Price: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Order attached to:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" Height="41px" Width="109px" />
&nbsp;&nbsp;&nbsp; </div> <br />
                    <div>
                        <hr />
                        <hr />
                        <h2 style="text-align: center">Order Information</h2>
                        <p style="text-align: center">
                            <asp:TextBox ID="TextBox5" runat="server" Height="176px" Width="333px" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp; </p>
                        <p style="text-align: center">
                            <asp:Button ID="Button2" runat="server" Text="Transfer Information" />
                        </p>
                    </div>
        </form>
    </body>
</html>

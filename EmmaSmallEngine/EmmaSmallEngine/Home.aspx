<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmmaSmallEngine.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        
        <title>Emma's Small Engine - Home</title>
        <link rel="stylesheet" href="~/css/styles.css" />
    </head>

    <body class="Font">
        <form id="home" runat="server">
            <div>
               
            </div>
            <div class="Nav">
                 <asp:Image class="Banner" runat="server" ImageUrl="~/img/logo.png" />
                <hr />
                <br style="font-size: small"/>
                <a class="NavItems" href="Home.aspx" style="text-decoration: underline">Home</a>
                <a class="NavItems" href="Sales.aspx">Sales</a>
                <a class="NavItems" href="Ordering.aspx">Ordering</a>
                <a class="NavItems" href="Inventory.aspx">Inventory</a>
                <a class="NavItems" href="Admin.aspx"style="margin-right: 0px">Admin</a>
                <br style="font-size: small"/><br style="font-size: small"/>
            </div>
            <div>
                <asp:Image class="homeimage" runat="server" ImageUrl="~/img/homeimage.jpg" />
            </div>
            <br />
            <br />
            <br />
          
            <div class="des">
                <p>
                    <h3>
                        Quick Links
                    </h3>
                    <a class="NavItems" href="Home.aspx" style="text-decoration: underline">Home</a><br>
                <a class="NavItems" href="Sales.aspx">Sales</a><br>
                <a class="NavItems" href="Ordering.aspx">Ordering</a><br>
                <a class="NavItems" href="Inventory.aspx">Inventory</a><br>
                    
                </p>
                <video width="320" height="240" controls>
                    <source src="https://www.youtube.com/watch?v=gl1aHhXnN1k" type="video/ogg" />
                </video>
            </div>
            <div>
                <asp:Image ID="random" runat="server" />
            </div>
            <hr />

            <div class="copyright">
                &copy copyright of Emma's Small Engine
            </div>
        </form>

    </body>
</html>

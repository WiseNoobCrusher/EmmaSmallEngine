<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmaSmallEngine.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engine - Login</title>
    <link rel="stylesheet" href="~/css/styles.css" />
</head>
<body class="Font">
    <form id="login" runat="server">
        <div class="Banner">
            <asp:Image ID="logo" runat="server" ImageUrl="~/img/logo.png" Width="185px" style="text-align: left" />
            <h1><strong>Emma&#39;s Small Engine</strong></h1>
        </div>
        <div>
            <strong><p class="PageFontSize">Login:</p></strong>
            <table class="LoginForm">
                <tr>
                    <td class="LabelLogin">Username:</td>
                    <td style="text-align: right">
                        <asp:TextBox ID="txtUser" runat="server" Height="20px" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="textBoxLabels">Password:</td>
                    <td style="text-align: right">
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="20px" Width="160px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <div class="LoginButtonsDiv">
                <asp:Button ID="btnLogin" class="LoginButton" runat="server" Text="Login" OnClick="btnLogin_Click" />
                <asp:Button ID="btnRegister" class="RegisterButton" runat="server" CausesValidation="False" Text="Register" OnClick="btnRegister_Click" />
            </div>
            <p class="Messages">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            </p>
        </div>
        <br />
    </form>
</body>
</html>

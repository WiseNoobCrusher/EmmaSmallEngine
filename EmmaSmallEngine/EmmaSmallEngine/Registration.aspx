<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EmmaSmallEngine.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engine - Register</title>
    <link rel="stylesheet" href="~/css/styles.css" />
</head>
<body class="Font">
    <form id="login" runat="server">
        <div class="Banner">
            <asp:Image ID="logo" runat="server" ImageUrl="~/img/logo.png" Width="185px" style="text-align: left" />
                <h1><strong>Emma&#39;s Small Engine</strong></h1>
        </div>
        <strong><p class="PageFontSize">Register New User:</p></strong><br />
        <table class="RegisterForm">
            <tr>
                <td class="auto-style1">Username:</td>
                <td class="TextboxRegister">
                    <asp:TextBox ID="txtUser" runat="server" Height="20px" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password:</td>
                <td class="TextboxRegister">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="20px" Width="160px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm:</td>
                <td class="TextboxRegister">
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" Height="20px" Width="160px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <div class="RegisterButtonsDiv">
            <asp:Button class="ConfirmRegButton" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <asp:Button class="BackButton" ID="btnBack" runat="server" CausesValidation="False" Text="Back" OnClick="btnBack_Click" />
        </div>
        <p class="Messages">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirm" ErrorMessage="Password does not match" SetFocusOnError="True"></asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirm" ErrorMessage="Must confirm password" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
        </p>
    </form>
</body>
</html>
